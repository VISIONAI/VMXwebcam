echo 'Welcome to Mac Builder of VMX Webcam'
F=VMXwebcam2
G=VMXwebcam

g++ -v -std=c++11 -I /opt/local/include -L/opt/local/lib -lopencv_core -lopencv_highgui -O3 -o ${F} VMXwebcam2.cpp
go build -o ${G} VMXwebcam.go
