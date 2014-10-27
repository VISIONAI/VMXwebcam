//#include "opencv2/opencv.hpp"
#include <string>

using namespace std;
int main(int argc, char** argv)
{

  VideoCapture cap;

  cap.open(0); 

  if(!cap.isOpened())  {
    std::cout<<"Problem opening camera "<<0<<std::endl;
    return -1;
  }
  Mat frame2, frame;
  namedWindow("video",1);
  while (true) {
    cap >> frame2;

    flip(frame2,frame,1);
    imshow("video",frame);
    
//    std::cout<<"just wrote "<<input<<" of size "<<frame.size().height<<" x " <<frame.size().width<<std::endl;
  }
  return 0;
}
