#include <iostream>
#include <cstdlib>

#include "Komiwoja.hpp"


int main() {
    vector<vector<double>> mat {
   	  {INF, 10, 8, 19, 12},
   	  {10, INF, 20, 6, 3},
   	  {8, 20, INF, 4, 2},
   	  {19, 6, 4, INF, 7},
   	  {12, 3, 2, 7, INF}
    };
    vector<int> best_path = tsp(mat);
    cout << "{";
    for (auto &i : best_path)
    {
        cout << i <<", ";
    }
    cout << "}" << endl;
    return 0;
}

