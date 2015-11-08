#include <EGL/egl.h>
#include <GLES2/gl2.h>
#include <X11/Xlib.h>
#include <stdio.h>
#include <stdlib.h>

static Atom wm_delete_window;

typedef struct {
  uint8_t code;
  float x;
  float y;
} EGLEvent;

EGLEvent
createWindow(Display* x_dpy, EGLDisplay e_dpy, char* app_name, uint32_t w, uint32_t h) {
  static const EGLint attribs[] = {
    EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
    EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
    EGL_BLUE_SIZE, 8,
    EGL_GREEN_SIZE, 8,
    EGL_RED_SIZE, 8,
    EGL_DEPTH_SIZE, 16,
    EGL_CONFIG_CAVEAT, EGL_NONE,
    EGL_NONE
  };
  printf("%x %x %x %x", EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT, EGL_SURFACE_TYPE, EGL_WINDOW_BIT);
  printf("%x %x %x %x", EGL_BLUE_SIZE, EGL_GREEN_SIZE, EGL_RED_SIZE, EGL_DEPTH_SIZE);
  printf("%x %x", EGL_CONFIG_CAVEAT, EGL_NONE);
  EGLConfig config;
  EGLint num_configs;
  if (!eglChooseConfig(e_dpy, attribs, &config, 1, &num_configs)) {
    fprintf(stderr, "eglChooseConfig failed\n");
    exit(1);
  }
  EGLint vid;
  printf("VI %x", EGL_NATIVE_VISUAL_ID);
  if (!eglGetConfigAttrib(e_dpy, config, EGL_NATIVE_VISUAL_ID, &vid)) {
    fprintf(stderr, "eglGetConfigAttrib failed\n");
    exit(1);
  }

  XVisualInfo visTemplate;
  visTemplate.visualid = vid;
  int num_visuals;
  XVisualInfo *visInfo = XGetVisualInfo(x_dpy, VisualIDMask, &visTemplate, &num_visuals);
  if (!visInfo) {
    fprintf(stderr, "XGetVisualInfo failed\n");
    exit(1);
  }

  Window root = RootWindow(x_dpy, DefaultScreen(x_dpy));
  XSetWindowAttributes attr;

  attr.colormap = XCreateColormap(x_dpy, root, visInfo->visual, AllocNone);
  if (!attr.colormap) {
    fprintf(stderr, "XCreateColormap failed\n");
    exit(1);
  }

  attr.event_mask = StructureNotifyMask | ExposureMask |
    ButtonPressMask | ButtonReleaseMask | ButtonMotionMask;
  Window win = XCreateWindow(
    x_dpy, root, 0, 0, w, h, 0, visInfo->depth, InputOutput,
    visInfo->visual, CWColormap | CWEventMask, &attr);
  XFree(visInfo);

  XSizeHints sizehints;
  sizehints.width  = w;
  sizehints.height = h;
  sizehints.flags = USSize;
  XSetNormalHints(x_dpy, win, &sizehints);
  XSetStandardProperties(x_dpy, win, app_name, app_name, None, (char **)NULL, 0, &sizehints);

  static const EGLint ctx_attribs[] = {
    EGL_CONTEXT_CLIENT_VERSION, 2,
    EGL_NONE
  };
  EGLContext e_ctx = eglCreateContext(e_dpy, config, EGL_NO_CONTEXT, ctx_attribs);
  if (!e_ctx) {
    fprintf(stderr, "eglCreateContext failed\n");
    exit(1);
  }
  EGLSurface e_surf = eglCreateWindowSurface(e_dpy, config, win, NULL);
  if (!e_surf) {
    fprintf(stderr, "eglCreateWindowSurface failed\n");
    exit(1);
  }

  wm_delete_window = XInternAtom(x_dpy, "WM_DELETE_WINDOW", True);
  if (wm_delete_window != None) {
    XSetWMProtocols(x_dpy, win, &wm_delete_window, 1);
  }

  XMapWindow(x_dpy, win);
  if (!eglMakeCurrent(e_dpy, e_surf, e_surf, e_ctx)) {
    fprintf(stderr, "eglMakeCurrent failed\n");
    exit(1);
  }

  // Window size and DPI should be initialized before starting app.
  XEvent ev;
  while (1) {
    if (XCheckMaskEvent(x_dpy, StructureNotifyMask, &ev) == False) {
      continue;
    }
    if (ev.type == ConfigureNotify) {
      EGLEvent e = {1, ev.xconfigure.width, ev.xconfigure.height};
      return e;
    }
  }
}

void
setEvent(EGLEvent e) {
  printf("%d", e.code);
}

EGLEvent
processEvents(Display* xapy) {
  EGLEvent e;
  e.code = 0;
  XEvent ev;
  XNextEvent(xapy, &ev);
  switch (ev.type) {
  case ConfigureNotify:
    e.code = 1;
    e.x = (float)ev.xconfigure.width;
    e.y = (float)ev.xconfigure.height;
    break;
  case ButtonPress:
    e.code = 2;
    e.x = (float)ev.xbutton.x;
    e.y = (float)ev.xbutton.y;
    break;
  case MotionNotify:
    e.code = 3;
    e.x = (float)ev.xmotion.x;
    e.y = (float)ev.xmotion.y;
    break;
  case ButtonRelease:
    e.code = 4;
    e.x = (float)ev.xbutton.x;
    e.y = (float)ev.xbutton.y;
    break;
  case ClientMessage:
    if (wm_delete_window != None && (Atom)ev.xclient.data.l[0] == wm_delete_window) {
      e.code = 255;
    }
    break;
  }
  return e;
}

// void
// swapBuffers(void) {
//   if (eglSwapBuffers(e_dpy, e_surf) == EGL_FALSE) {
//     fprintf(stderr, "eglSwapBuffer failed\n");
//     exit(1);
//   }
// }

void createContext(EGLDisplay *out_dpy, EGLContext *out_ctx, EGLSurface *out_surf) {
  EGLDisplay e_dpy = eglGetDisplay(EGL_DEFAULT_DISPLAY);
  if (!e_dpy) {
    fprintf(stderr, "eglGetDisplay failed\n");
    exit(1);
  }
  EGLint e_major, e_minor;
  if (!eglInitialize(e_dpy, &e_major, &e_minor)) {
    fprintf(stderr, "eglInitialize failed\n");
    exit(1);
  }
  eglBindAPI(EGL_OPENGL_ES_API);
  static const EGLint config_attribs[] = {
    EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
    EGL_SURFACE_TYPE, EGL_PBUFFER_BIT,
    EGL_BLUE_SIZE, 8,
    EGL_GREEN_SIZE, 8,
    EGL_RED_SIZE, 8,
    EGL_CONFIG_CAVEAT, EGL_NONE,
    EGL_NONE
  };
  EGLConfig config;
  EGLint num_configs;
  if (!eglChooseConfig(e_dpy, config_attribs, &config, 1, &num_configs)) {
    fprintf(stderr, "eglChooseConfig failed\n");
    exit(1);
  }
  static const EGLint ctx_attribs[] = {
    EGL_CONTEXT_CLIENT_VERSION, 2,
    EGL_NONE
  };
  EGLContext e_ctx = eglCreateContext(e_dpy, config, EGL_NO_CONTEXT, ctx_attribs);
  if (e_ctx == EGL_NO_CONTEXT) {
    fprintf(stderr, "eglCreateContext failed\n");
    exit(1);
  }
  static const EGLint pbuf_attribs[] = {
    EGL_NONE
  };
  EGLSurface e_surf = eglCreatePbufferSurface(e_dpy, config, pbuf_attribs);
  if (e_surf == EGL_NO_SURFACE) {
    fprintf(stderr, "eglCreatePbufferSurface failed\n");
    exit(1);
  }
  if (!eglMakeCurrent(e_dpy, e_surf, e_surf, e_ctx)) {
    fprintf(stderr, "eglMakeCurrent failed\n");
    exit(1);
  }
  *out_surf = e_surf;
  *out_ctx = e_ctx;
  *out_dpy = e_dpy;
}

void destroyContext(EGLDisplay e_dpy, EGLContext e_ctx, EGLSurface e_surf) {
  if (!eglMakeCurrent(e_dpy, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT)) {
    fprintf(stderr, "eglMakeCurrent failed\n");
    exit(1);
  }
  if (!eglDestroySurface(e_dpy, e_surf)) {
    fprintf(stderr, "eglDestroySurface failed\n");
    exit(1);
  }
  if (!eglDestroyContext(e_dpy, e_ctx)) {
    fprintf(stderr, "eglDestroyContext failed\n");
    exit(1);
  }
}
