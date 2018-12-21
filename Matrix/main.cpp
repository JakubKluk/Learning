#include "include/Matrix.hpp"
#include "src/Matrix.cpp"
#include "include/Shape.hpp"
#include "include/Matrix_Functions.hpp"
#include "src/Matrix_Functions.cpp"


static bool abs_compare(float a, float b)
{
    return abs(a)<abs(b);
}

int main() {

    vector<float> vect{3, 6, 3, 2, 14, 7, 4};
    cout << distance(vect.begin(), max_element(vect.begin(), vect.end(), abs_compare)) << endl;
    return 0;
}