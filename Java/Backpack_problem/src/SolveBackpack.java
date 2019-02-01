import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SolveBackpack {
    static public Map<String, Integer> solve(Element[] list, double weight){
        Map<String, Integer> result = new HashMap<>();
        for (int i=0; i<list.length; ++i){
            result.put(list[i].getName(), 0);
            while (weight>=list[i].getWeight()){
                result.put(list[i].getName(), result.get(list[i].getName())+1);
                weight = weight-list[i].getWeight();
            }
        }
        return result;
    }
}
