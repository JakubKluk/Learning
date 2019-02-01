#ifndef KOMIWOJA_HPP_
#define KOMIWOJA_HPP_

#include <iostream>
#include <cmath>
#include <vector>
#include <algorithm>
using namespace std;


#define INF (NAN)

class TSP_cost_matrix {
    double low_bound;
    int num_of_summits;
    vector<pair<int, int>> solution;
    vector<vector<double>> cost_matrix;
public:
    TSP_cost_matrix(const vector<vector<double>> matrix)
    {
        num_of_summits = matrix.size();
        low_bound = 0;
        cost_matrix = matrix;
    }
    double get(int a, int b) {return cost_matrix[a][b];}
    int get_summits() {return num_of_summits;}
    double get_low_bound() {return low_bound;}
    vector<double> get_col(int col);
    void reduce_all_rows();
    void reduce_row(int row);
    void reduce_all_cols();
    void reduce_col(int col);
    void find_next_path();
    bool check_for_zeros();
    vector<pair<int, int>> get_solution() {return solution;}
};


double find_min(vector<double> vekt);
vector<int> tsp(vector<vector<double>> cost_matrix);
void pri(vector<vector<double>>);


#endif /* KOMIWOJA_HPP_ */
