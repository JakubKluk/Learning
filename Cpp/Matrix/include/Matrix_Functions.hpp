//
// Created by Kluk on 19.12.2018.
//

#ifndef MATRIX_MATRIX_FUNCTIONS_HPP
#define MATRIX_MATRIX_FUNCTIONS_HPP

#include "Matrix.hpp"
#include <algorithm>
#include <cmath>

template <typename T> Matrix<T> transposed(const Matrix<T>& A);

template <typename T> float det(const Matrix<T>& A);


#endif //MATRIX_MATRIX_FUNCTIONS_HPP
