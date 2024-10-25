public class Dog {


    public int age ;

    public String name ;

    public String breed ;
    //default constructor
    public Dog(){

    }
    // Everything Constructor
    public Dog(int age, String name, String breed){
        this.age = age;
        this.name = name;
        this.breed = breed;

    }

    public void play(String game){
        System.out.println(game);
    }

    @Override
    public String toString() {
        return "Dog:{" +
                " age-" + age +
                ", name-'" + name + '\'' +
                ", breed-'" + breed + '\'' +
                '}';
    }

    // Getter

    public int getAge(){
        return age;
    }
    public void setAge(int age){
        this.age = age;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }


}
