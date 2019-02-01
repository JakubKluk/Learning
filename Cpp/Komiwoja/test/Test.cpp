#include "gtest/gtest.h"

#include "Komiwoja.hpp"


TEST(FunctionTest, find_min) {
    vector<double> v {5, 7, 2, 8.3};

    EXPECT_EQ(find_min(v), 2);
}

TEST(TSP, TSPclass) {
    vector<vector<double>> matrix {
    {1, 2, 3, 4, 5},
    {2, 3, 4, 5 ,6},
    {3, 4, 5, 6, 7},
    {4, 5, 6, 7, 8},
    {5, 6, 7, 8, 9}
    };
    TSP_cost_matrix mat(matrix);

    EXPECT_EQ(mat.get_summits(), 5);
    EXPECT_EQ(mat.get_low_bound(), 0);
    EXPECT_EQ(mat.get(3,2), 6);
}

TEST(TSP, reduce) {
    vector<vector<double>> matrix {
    {1, 2, 3, 4, 5},
    {2, 3, 4, 5 ,6},
    {3, 4, 5, 6, 7},
    {4, 5, 6, 7, 8},
    {5, 6, 7, 8, 9}
    };
    TSP_cost_matrix mat(matrix);

    mat.reduce_all_rows();
    EXPECT_EQ(mat.get(0,0), 0);
    EXPECT_EQ(mat.get(2,3), 3);
    mat.reduce_all_cols();
    EXPECT_EQ(mat.get(0,0), 0);
    EXPECT_EQ(mat.get(2,3), 0);
    EXPECT_EQ(mat.get(4,4), 0);
    EXPECT_EQ(mat.get_low_bound(), 25);
}

TEST(TSP, check_for_zeros) {
    vector<vector<double>> matrix {
    {0, 2, 3, 4, 5},
    {2, 0, 4, 5 ,6},
    {3, 4, 0, 6, 7},
    {4, 5, 6, 0, 8},
    {5, 6, 7, 8, 0}
    };
    TSP_cost_matrix mat(matrix);
    vector<vector<double>> infinite {
    {0, 2, 3, 4, 5},
    {2, 0, 4, 5 ,6},
    {INF, INF, INF, INF, INF},
    {4, 5, 0, 0, 8},
    {5, 6, 7, 8, 0}
    };
    TSP_cost_matrix inef(infinite);

    EXPECT_EQ(mat.check_for_zeros(), true);
    matrix[4][4] = 1;
    mat = TSP_cost_matrix(matrix);
    EXPECT_EQ(mat.check_for_zeros(), false);
    EXPECT_EQ(inef.check_for_zeros(), true);
}

TEST(TSP, new_path) {
    vector<vector<double>> matrix{
    {INF, 10, 8, 19, 12},
    {10, INF, 20, 6, 3},
    {8, 20, INF, 4, 2},
    {19, 6, 4, INF, 7},
    {12, 3, 2, 7, INF}
    };
    TSP_cost_matrix mat(matrix);
    mat.reduce_all_rows();
    mat.reduce_all_cols();
    mat.find_next_path();
    EXPECT_EQ(mat.get_solution()[0].first, 1);
    EXPECT_EQ(mat.get_solution()[0].second, 3);
}
