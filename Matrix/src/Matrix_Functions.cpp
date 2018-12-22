//
// Created by Kluk on 19.12.2018.
//
#include "../include/Matrix_Functions.hpp"
#include "../include/Matrix.hpp"



template <typename T> Matrix<T> transposed(const Matrix<T>& A)
{
    Matrix<T> B(A.get_number_of_cols(), A.get_number_of_rows());
    for (unsigned int i=0; i!=A.get_number_of_rows(); ++i)
    {
        for (unsigned int j=0; j!=A.get_number_of_cols(); ++j)
        {
            B[j][i] = A[i][j];
        }
    }
    return B;
}


template <typename T> float det(const Matrix<T>& A) {
    vector<vector<float>> helper;
    vector<float> helper2;
    for (unsigned int i=0; i!=A.get_number_of_rows(); ++i)
    {
        helper.push_back(helper2);
        for (unsigned int j=0; j!=A.get_number_of_cols(); ++j)
        {
            helper[i].push_back(A[i][j]);
        }
    }
    Matrix<float> B(helper);
    vector<float>::iterator main_elem;
    vector<float> column;
    int sign = 1;
    int position = 0;
    float multiplier = 0;
    float result = 1;
    for (unsigned int i = 0; i != B.get_number_of_rows() - 1; ++i)
    {
        for (unsigned int j=0; j!=i; ++j)
        {
            column.push_back(0);
        }
        for (unsigned int j=i; j!=B.get_number_of_rows(); ++j)
        {
            column.push_back(B[j][i]);
        }
        main_elem = max_element(column.begin(), column.end(), [](float a, float b){return abs(a)<abs(b);});
        position = distance(column.begin(), main_elem);
        if (position!=0)
        {
            B.swap_rows(i, static_cast<unsigned int>(position));
            sign = sign*(-1);
        }
        for (unsigned int j = i+1; j!=B.get_number_of_rows(); ++j)
        {
            multiplier = B[j][i];
            for (unsigned int g=0; g!=B.get_number_of_cols(); ++g)
            {
                B[j][g] = B[j][g] - multiplier*(B[i][g]/(*main_elem));
            }
        }
        column.clear();
    }
    for (unsigned int i=0; i!=B.get_number_of_rows(); ++i)
    {
        for (unsigned int j=0; j!=B.get_number_of_cols(); ++j)
        {
            if (i==j)
            {
                result = result*B[i][j];
            }
        }
    }
    return sign*result;
}
