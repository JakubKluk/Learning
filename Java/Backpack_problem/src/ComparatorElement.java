import java.util.Comparator;

public class ComparatorElement implements Comparator<Element> {
    @Override
    public int compare(Element e1, Element e2){
        if(e2 == null) return -1;
        if(e1.getWorth()/e1.getWeight() > e2.getWorth()/e2.getWeight()) return -1;
        else if(e1.getWorth()/e1.getWeight() < e2.getWorth()/e2.getWeight()) return 1;
        else return 0;
    }
}
