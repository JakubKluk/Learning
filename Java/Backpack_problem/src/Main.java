import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Main {

    public static void printMap(Map mp) {
        Iterator it = mp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry pair = (Map.Entry)it.next();
            System.out.println(pair.getKey() + " = " + pair.getValue());
            it.remove(); // avoids a ConcurrentModificationException
        }
    }

    public static void main(String[] args)
    {
        final double max_weight = 100;
        Element stone = new Element(1,4, "stone");
        Element stick = new Element(0.8, 1,"stick");
        Element gold_coin = new Element(3,3,"gold_coin");
        Element copper_coin = new Element(2,2,"copper_coin");
        Element wine = new Element(2.5,2.8,"wine");

        Element[] elem_list = {stone, stick, gold_coin, copper_coin, wine};
        ComparatorElement comp = new ComparatorElement();
        Arrays.sort(elem_list,comp);

        Map<String, Integer> solved_problem = new HashMap<>();

        solved_problem = SolveBackpack.solve(elem_list, max_weight);

        printMap(solved_problem);
    }
}
