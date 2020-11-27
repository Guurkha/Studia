#ifndef LAB4_HPP
#define LAB4_HPP
#include <iostream>
#include <vector>
#include <fstream>
#include <time.h>

using namespace std;

class labmatrix
{
    private:
    vector< vector<double> > matrix;

    public:
    labmatrix(int size);
    labmatrix(int row, int col);
    void print();
    ~labmatrix();
    int row();
    int col();
    void set(int n, int m, double val);
    double get(int n, int m);
    labmatrix add(labmatrix m2);
    labmatrix substract(labmatrix m2);
    labmatrix multiply(labmatrix m2);
    bool store(string filename, string path);
    labmatrix(string filename);

};
#endif