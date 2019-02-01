import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class DynamicChange {
    static public List<Integer> solve_change_dynamic(int denomination[], int amount) {
        List<Integer> result = new ArrayList<Integer>();
        Integer[] optimal = new Integer[amount+1];
        Integer[] indices = new Integer[amount+1];
        Arrays.fill(indices, amount+10);
        int helper = amount;
        optimal[0] = 0;
        indices[0] = 0;

        for (int i=0; i<denomination.length; ++i) {
            for (int j = 0; j < indices.length; ++j) {
                if (j + denomination[i] < indices.length && indices[j] < amount + 10 &&
                        indices[j] + 1 < indices[j + denomination[i]]) {
                            indices[j+denomination[i]] = indices[j]+1;
                            optimal[j+denomination[i]] = denomination[i];
                }
            }
        }
        while (helper>0) {
            result.add(optimal[helper]);
            helper = helper - optimal[helper];
        }
        return result;
    }
}
