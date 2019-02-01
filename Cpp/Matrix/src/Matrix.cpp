//
// Created by Kluk on 18.11.2018.
//
#include "../include/Matrix.hpp"
#include "../include/Shape.hpp"


template<typename T> Matrix<T>::Matrix(const vector<vector<T>>& mat): Shape(mat.size(), mat.size())
{
    unsigned int temp = mat[0].size();
    matrix = mat;
    for(auto &i : mat)
    {
        if (i.size()>temp)
        {
            temp = i.size();
        }
    }
    for(auto &i : matrix)
    {
        if(i.size()<temp)
        {
            i.resize(temp);
        }
    }
    this->set_number_of_cols(temp);
}


template<typename T> Matrix<T>::Matrix(const unsigned int r, unsigned int c): Shape(r,c)
{
    if(c==0) {
        c = r;
    }
    matrix.resize(r);
    for(auto &i : matrix)
    {
        i.resize(c);
    }
    this->set_number_of_cols(c);
}

template<typename T>void Matrix<T>::show()
{
    for(auto &i : matrix)
    {
        for(auto &j : i)
        {
            cout <<j << " ";
        }
        cout << endl;
    }
}

template<typename T>Matrix<T> Matrix<T>::get_col(const unsigned int col) const
{
     Matrix<T> result(this->get_number_of_rows(),1);
    for (unsigned int i=0; i!=this->get_number_of_rows(); ++i)
    {
        result.set_elem(i, 0, matrix[i][col]);
    }
    return result;
}

template<typename T>Matrix<T> Matrix<T>::get_row(const unsigned int row) const
{
    Matrix<T> result(1, this->get_number_of_cols());
    for (unsigned int i=0; i!=this->get_number_of_cols(); ++i)
    {
        result.set_elem(0, i, matrix[row][i]);
    }
    return result;
}

template <typename T> Matrix<T>& Matrix<T>::operator=(Matrix<T>const& assign)
{
    if (& assign!=this)
    {
        matrix.resize(assign.get_number_of_rows());
        for (auto &i : matrix)
        {
            i.resize(assign.get_number_of_cols());
        }
        this->set_number_of_cols(assign.get_number_of_cols());
        this->set_number_of_rows(assign.get_number_of_rows());
        for (unsigned int i=0; i!=this->get_number_of_rows(); ++i)
        {
            for (unsigned int j=0; j!=this->get_number_of_cols(); ++j)
            {
                matrix[i][j] = assign[i][j];
            }
        }
    }
    return *this;
}

template<typename T> void Matrix<T>::swap_rows(const unsigned int first, const unsigned int second)
{
    vector<T> helper;
    helper = matrix[first];
    matrix[first] = matrix[second];
    matrix[second] = helper;
}
