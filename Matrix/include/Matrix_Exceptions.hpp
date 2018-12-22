//
// Created by Kluk on 22.12.2018.
//
#include <stdexcept>

#ifndef MATRIX_MATRIX_EXCEPTIONS_HPP
#define MATRIX_MATRIX_EXCEPTIONS_HPP

class NotASquareException : public std::runtime_error
{
public:
    NotASquareException(): std::runtime_error("Matrix is not a square matrix. Function det() works only for square matrices!"){}
};

#endif //MATRIX_MATRIX_EXCEPTIONS_HPP
