//
// Created by Kluk on 19.12.2018.
//
#include "../include/Matrix_Functions.hpp"
#include "../include/Matrix.hpp"

static bool abs_compare(const float &a,const float &b)
{
    return (abs(a)<abs(b));
}

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
    vector<float> empty;
    Matrix<float> C(1);     //matrix for getting columns easily
    typename vector<float>::iterator main_elem;
    vector<float> column;
    int position = 0;
    int sign = 1;
    for (unsigned int i=0; i!=A.get_number_of_cols(); ++i)
    {
        empty.push_back(1);
    }
    for (unsigned int i=0; i!=A.get_number_of_rows(); ++i)
    {
        helper.push_back(empty);
    }
    for (unsigned int i=0; i!=A.get_number_of_rows(); ++i)
    {
        for (unsigned int j=0; j!=A.get_number_of_cols(); ++j)
        {
            helper[i][j] = float(A[i][j]);
        }
    }
    Matrix<float> B(helper);
    C = transposed(B);
    B.show();
    for (unsigned int i = 0; i != B.get_number_of_rows() - 1; ++i) {
        column = C[i];
        main_elem = max_element(column.begin(), column.end());
        position = distance(column.begin(), main_elem);
        if (position!=i)
        {
            B.swap_rows(i, static_cast<unsigned int>(position));
            sign = sign*(-1);
        }

    }
    return float(position);
}
