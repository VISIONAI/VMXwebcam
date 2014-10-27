cd bin
cmake ../
make
cd - > /dev/null
cp bin/VMXwebcam2 .
go build -o VMXwebcam VMXwebcam.go
exit
#g++ -I /opt/local/include -L/opt/local/lib -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_nonfree -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videostab corners.cpp -o corners

#g++ -v  -I /opt/local/include -L/Applications/MATLAB/MATLAB_Compiler_Runtime/v83/bin/maci64 -lopencv_core -lopencv_highgui -o VMXwebcam VMXwebcam.cpp
g++ -v -std=c++11 -I /opt/local/include -L/opt/local/lib -lopencv_core -lopencv_highgui -o VMXwebcam2 VMXwebcam2.cpp

#g++-mp-4.7 -v -std=c++11 -I /opt/local/include -L/opt/local/lib -lopencv_core -lopencv_highgui -o VMXvideo VMXvideo.cpp
#g++ -std=c++11 `pkg-config opencv --cflags --libs` VMXwebcam.cpp -o VMXwebcam
go build -o VMXwebcam VMXwebcam.go

#install_name_tool -change /opt/local/lib/libopencv_core.2.4.dylib /Applications/MATLAB/MATLAB_Compiler_Runtime/v83/bin/maci64/libopencv_core.2.4.dylib VMXwebcam
#install_name_tool -change /opt/local/lib/libopencv_highgui.2.4.dylib /Applications/MATLAB/MATLAB_Compiler_Runtime/v83/bin/maci64/libopencv_highgui.2.4.dylib VMXwebcam
