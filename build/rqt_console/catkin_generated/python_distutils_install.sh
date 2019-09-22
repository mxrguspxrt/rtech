#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dte/Desktop/rtech/src/rqt_console"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dte/Desktop/rtech/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dte/Desktop/rtech/install/lib/python2.7/dist-packages:/home/dte/Desktop/rtech/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dte/Desktop/rtech/build" \
    "/usr/bin/python" \
    "/home/dte/Desktop/rtech/src/rqt_console/setup.py" \
    build --build-base "/home/dte/Desktop/rtech/build/rqt_console" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dte/Desktop/rtech/install" --install-scripts="/home/dte/Desktop/rtech/install/bin"
