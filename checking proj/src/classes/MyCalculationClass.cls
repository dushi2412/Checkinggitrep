//Class definition and body
public class MyCalculationClass {
public static Double myValue;   //Class Member variable
public static String myString;  //Class Member variable
    
public MyCalculationClass () {
    myValue = 100;  //initialized variable when class is called
        
}
    
public static Double getCalculatedValue () {    //Method definition and body
    //do some calculation
    myValue = myValue+10;
    return myValue;
}
    
public static Double getCalculatedValueViaPrice (Decimal price) {   //Method definition and body
    //do some calculation
    myValue = myValue+price;//Final Price would be 100+100=200.00
    return myValue;
}
}