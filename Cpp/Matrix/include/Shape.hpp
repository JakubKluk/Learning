//
// Created by Kluk on 05.12.2018.
//

#ifndef MATRIX_SHAPE_HPP
#define MATRIX_SHAPE_HPP


class Shape
{
private:
    unsigned int rows;
    unsigned int cols;
public:
    Shape(const unsigned int& _rows, const unsigned int& _cols): rows(_rows), cols(_cols){}
    unsigned int get_number_of_rows() const {return rows;}
    unsigned int get_number_of_cols() const {return cols;}
    void set_number_of_rows(const unsigned int& row) {rows = row;}
    void set_number_of_cols(const unsigned int& col) {cols = col;}
};


#endif //MATRIX_SHAPE_HPP
