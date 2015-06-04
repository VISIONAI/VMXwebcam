Welcome to VMXwebcam.

This simple OpenCV/Go program will turn serve your webcam or a movie file over http.

### Turn camera 0 into an http server on port 3001

```
./VMXwebcam 0 :3001
```

Then to get an image, you can do:
```
curl http://localhost:3001 > image.jpg
```

### Turn movie file a.mp4 into an http server on port 3002
```
./VMXwebcam /tmp/a.mp4 :3002
```


# Compiling

On Mac, you'll need to install OpenCV first.
```
./mac_builder.sh
```

On Linux, you'll need to install OpenCV, and then CMake is used for compilation.
```
./linux_builder.sh
```