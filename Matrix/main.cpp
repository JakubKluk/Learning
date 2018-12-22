#include "include/Matrix.hpp"
#include "src/Matrix.cpp"
#include "include/Shape.hpp"
#include "include/Matrix_Functions.hpp"
#include "src/Matrix_Functions.cpp"

int main() {
    vector<vector<int>> g{
            {2, 0, 1},
            {2, 0, 2},
            {1, 0,7}
    };
    Matrix<int> gyg(g);
    cout << det(gyg) << endl;
    return 0;
}