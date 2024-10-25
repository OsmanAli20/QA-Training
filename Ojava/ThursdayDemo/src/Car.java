public class Car {

    private int price ;

    private String colour;

    private String size ;

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

  //Constructor

    public Car (int price, String colour, String size){
        this.price = price;
        this.colour = colour;
        this.size = size;
    }
    // Default constructor
    public Car (){

    }





}
