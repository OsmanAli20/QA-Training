public class doddgyClass {
    public static int dodgyMethod(int day){
        int x = 5;
        try {

           int z = x / day;
            System.out.println(z);

        }
        catch (Exception e) {
            System.out.println(e.getMessage());
            return x += 10;
        }
        finally {
            return x += 20;
        }
    }
}
