#include "include/Matrix.hpp"
#include "src/Matrix.cpp"
#include "include/Shape.hpp"
#include "include/Matrix_Functions.hpp"
#include "src/Matrix_Functions.cpp"

int main() {
    vector<vector<int>> g{
            {2, 3, 1},
            {1, 2, 4},
            {2, -2, 1}
    };
    Matrix<int> gyg(g);
    cout << det(gyg) << endl;
    return 0;
}