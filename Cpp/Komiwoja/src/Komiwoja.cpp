#include "Komiwoja.hpp"

#include <iostream>


double find_min(vector<double> vekt){
    double min = vekt[0];
    for (double &i : vekt)
    {
        if (!isnan(i))
        {
            min = i;
        }
    }
    for (double &i : vekt)
    {
        if (min > i)
        {
            min = i;
        }
    }
    return min;
}

vector<int> tsp(vector<vector<double>> cost_matrix){
    TSP_cost_matrix matrix(cost_matrix);
    vector<int> solu;
    for (int i=0; i!=matrix.get_summits()-1; ++i)
    {
        if(!matrix.check_for_zeros())
        {
            matrix.reduce_all_rows();
        }
        if (!matrix.check_for_zeros())
        {
            matrix.reduce_all_cols();
        }
        matrix.find_next_path();
    }
    for (int i=0; i!=matrix.get_summits(); ++i)
    {
        if (int(solu.size()) == 0)
        {
            solu.push_back(matrix.get_solution()[0].first);
        }
        for (auto &j : matrix.get_solution())
        {
            if (j.first == solu.back())
            {
                solu.push_back(j.second);
                break;
            }
        }
    }
    return solu;
}

void pri(vector<vector<double>> mat) {
    for (auto &i : mat)
    {
        for (auto &j : i)
        {
            cout << j << " ";
        }
        cout << endl;
    }
}

void TSP_cost_matrix::reduce_all_cols() {
    for (int i =1; i !=num_of_summits+1; ++i)
    {
        reduce_col(i);
    }
}

void TSP_cost_matrix::reduce_col(int col) {
    vector<double> vekt_col = get_col(col);
    double min = find_min(vekt_col);
    for (int i =0; i != num_of_summits; ++i)
    {
        cost_matrix[i][col-1] = cost_matrix[i][col-1] - min;
    }
    if(!isnan(min))
    {
        low_bound = low_bound + min;
    }
}

void TSP_cost_matrix::reduce_all_rows(){
    for (int i=1; i!=num_of_summits+1; ++i)
    {
        reduce_row(i);
    }
}

void TSP_cost_matrix::reduce_row(int row) {
    double min = find_min(cost_matrix[row-1]);
    for (auto &i : cost_matrix[row - 1])
    {
        i = i - min;
    }
    if (!isnan(min))
    {
        low_bound = low_bound + min;
    }
}


bool TSP_cost_matrix::check_for_zeros() {
    vector<double> temp (num_of_summits, 0);
    vector<vector<double>> transposed (num_of_summits, temp);
    for (vector<double> &i : cost_matrix)
    {
        if (!isnan(find_min(i)))
        {
            if (!(find(i.begin(), i.end(), 0) != i.end()))
            {
                return false;
            }
        }
    }
    for (int i=0; i!=num_of_summits; ++i)
    {
        for (int j=0; j!=num_of_summits; ++j)
        {
            transposed[i][j] = cost_matrix[j][i];
        }
    }
    for (vector<double> &i : transposed)
    {
        if (!isnan(find_min(i)))
        {
            if (!(find(i.begin(), i.end(), 0) != i.end()))
            {
                return false;
            }
        }
    }
    return true;
}

vector<double> TSP_cost_matrix::get_col(int col) {
    vector<double> vekt_col;
    for (int i=0; i!=num_of_summits; ++i)
    {
        vekt_col.push_back(cost_matrix[i][col-1]);
    }
    return vekt_col;
}

void TSP_cost_matrix::find_next_path() {
    vector<vector<double>> storage;
    vector<double> except;
    double temp = -1;
    double min_row;
    double min_col;
    vector<double> is_zero;
    pair <int, int> peak;
    if (int(solution.size()) == num_of_summits - 2)
    {
        for (int i=0; i!=num_of_summits; ++i)
        {
            for (int j=0; j!=num_of_summits; ++j)
            {
                if (cost_matrix[i][j] == 0)
                {
                    for (int g=0; g!=num_of_summits; ++g)
                    {
                        if (cost_matrix[i][g] == 0 and g!=j)
                        {
                            is_zero.push_back(1);
                        }
                        if (cost_matrix[g][j] == 0 and g!=i)
                        {
                            is_zero.push_back(1);
                        }
                    }
                    if (is_zero.size() == 2)
                    {
                        ;
                    }
                    else
                    {
                        peak = make_pair(i+1, j+1);
                        solution.push_back(peak);
                    }
                    is_zero.clear();
                }
            }
        }
    }
    else
    {
        for (int i=0; i!=num_of_summits; ++i)
        {
            for (int j=0; j!=num_of_summits; ++j)
            {
                if (cost_matrix[i][j] == 0)
                {
                    for (int g=0; g!=num_of_summits; ++g)
                    {
                        if (g!=j)
                        {
                            except.push_back(cost_matrix[i][g]);
                        }
                    }
                    min_row = find_min(except);
                    except.clear();
                    for (int g=0; g!=num_of_summits; ++g)
                    {
                        if (g!=i)
                        {
                            except.push_back(cost_matrix[g][j]);
                        }
                    }
                    min_col = find_min(except);
                    except.clear();
                    storage.push_back({double(i),double(j),min_row+min_col});
                }
            }
        }
        for (vector<double> &i : storage)
        {
            if (i[2]>temp)
            {
                temp = i[2];
                peak = make_pair(i[0] + 1, i[1] + 1);
            }
        }
        solution.push_back(peak);
        for (auto &i : cost_matrix[peak.first -1])
        {
            i = INF;
        }
        for ( int i=0; i!=num_of_summits; ++i)
        {
            cost_matrix[i][peak.second-1] = INF;
        }
        cost_matrix[peak.second-1][peak.first-1] = INF;
    }
}
