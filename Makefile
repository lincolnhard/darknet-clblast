all: obj
	g++ -o darknet *.o -L/usr/local/lib -lopencv_core -lopencv_highgui -lopencv_imgproc -L/usr/local/cuda/lib64 -lOpenCL -pthread
obj:
	g++ -c -pipe -std=c++11 -O2 -DOPENCV -DGPU -DOPENCL_API -Isrc -I/usr/local/include -I/usr/local/cuda/include src/*.cpp
clean:
	rm -f *.o
