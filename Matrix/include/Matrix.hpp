//
// Created by Kluk on 18.11.2018.
//

#ifndef MATRIX_MATRIX_HPP
#define MATRIX_MATRIX_HPP

#include <vector>
#include <iostream>
#include "Shape.hpp"
#include <typeinfo>

using namespace std;


template <typename T>class Matrix: public Shape
{
private:
    vector<vector<T>> matrix;
public:
    explicit Matrix(unsigned int, unsigned int = 0);
    explicit Matrix(const vector<vector<T>>&);
    void show();
    Matrix<T> get_row(unsigned int) const;
    Matrix<T> get_col(unsigned int) const;
    vector<T>& operator[](const unsigned int g){return matrix[g];}
    const vector<T>& operator[](const unsigned int g) const {return matrix[g];}
    Matrix<T>& operator=(Matrix<T>const& assign);
    typename vector<vector<T>>::const_iterator cbegin() const {return matrix.cbegin();}
    typename vector<vector<T>>::const_iterator cend() const {return matrix.cend();}
    typename vector<vector<T>>::iterator begin() {return matrix.begin();}
    typename vector<vector<T>>::const_iterator begin() const {return matrix.cbegin();}
    typename vector<vector<T>>::iterator end() {return matrix.end();}
    typename vector<vector<T>>::const_iterator end() const {return matrix.cend();}
    void swap_rows(unsigned int first, unsigned int second);
};


#endif //MATRIX_MATRIX_HPP

