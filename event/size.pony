class SizeEvent
  """
  Event holds the dimensions, physical resolution and orientation of the app's
  window.
  WidthPx and HeightPx are the window's dimensions in pixels.
  WidthPt and HeightPt are the window's dimensions in points (1/72 of an
  inch).
  PixelsPerPt is the window's physical resolution. It is the number of
  pixels in a single geom.Pt, from the golang.org/x/mobile/geom package.
  There are a wide variety of pixel densities in existing phones and
  tablets, so apps should be written to expect various non-integer
  PixelsPerPt values. In general, work in geom.Pt.
  Orientation is the orientation of the device screen.
  """
  let widthPx: U32
  let heightPx: U32
  let widthPt: Pt
  let heightPt: Pt
  let pixelsPerPt: F32
  let orientation: Orientation

  new create(wpx: U32, hpx: U32, wpt: Pt, hpt: Pt, ppt: F32, orient: Orientation) =>
    widthPx = wpx
    heightPx = hpx
    widthPt = wpt
    heightPt = hpt
    pixelsPerPt = ppt
    orientation = orient

  fun bounds(): Rectangle =>
    """
    Bounds returns the window's bounds in pixels, at the time this size event
    was sent.
    The top-left pixel is always (0, 0). The bottom-right pixel is given by the
    width and height.
    """
    Rectangle(Point(0, 0), Point(widthPt, heightPt))

  fun size(): Point =>
    """
    Size returns the window's size in pixels, at the time this size event was
    sent.
    """
    Point(widthPt, heightPt)

type Pt is F32

class Point
  let x: Pt
  let y: Pt
  new create(x': Pt, y': Pt) =>
    x = x'
    y = y'

class Rectangle
  let min: Point
  let max: Point
  new create(min': Point, max': Point) =>
    min = min'
    max = max'

type Orientation is (
  OrientationUnknown
  | OrientationPortrait
  | OrientationLandscape
  )
  """Orientation is the orientation of the device screen."""

primitive OrientationUnknown
  """
  OrientationUnknown means device orientation cannot be determined.
  Equivalent on Android to Configuration.ORIENTATION_UNKNOWN
  and on iOS to:
   UIDeviceOrientationUnknown
   UIDeviceOrientationFaceUp
   UIDeviceOrientationFaceDown
  """

primitive OrientationPortrait
  """
  OrientationPortrait is a device oriented so it is tall and thin.

  Equivalent on Android to Configuration.ORIENTATION_PORTRAIT
  and on iOS to:
  UIDeviceOrientationPortrait
  UIDeviceOrientationPortraitUpsideDown
  """

primitive OrientationLandscape
  """
  OrientationLandscape is a device oriented so it is short and wide.

  Equivalent on Android to Configuration.ORIENTATION_LANDSCAPE
  and on iOS to:
  UIDeviceOrientationLandscapeLeft
  UIDeviceOrientationLandscapeRight
  """
