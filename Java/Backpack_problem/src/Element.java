public class Element {
    public Element(double worth, double weight, String name){
        this.worth = worth;
        this.weight = weight;
        this.name = name;
    }

    public double getWorth() {
        return worth;
    }

    public double getWeight() {
        return weight;
    }
    public String getName() {
        return name;
    }

    private double worth;
    private double weight;
    private String name;
}
