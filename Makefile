.PHONY build:
build:
				gcc -fPIC -Wall -Wextra -O3 -g -MM x11.c > x11.d
				gcc -fPIC -Wall -Wextra -O3 -g -c -o x11.o x11.c
				gcc -shared -lm -o libx11.so x11.o  -L. -lEGL -L. -lX11 -lGLESv2
				sudo cp libx11.so /usr/lib
