import java.util.Scanner;
 
 class bmikalkulator{
 
    
 
    public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.print("Podaj imie: ");
		String imie = sc.next();
		
		System.out.print("Podaj nazwisko: ");
		String nazwisko = sc.next();
 
        System.out.print("Podaj twoj wzrost: ");
        double wzrost = sc.nextDouble();
 
        System.out.print("Podaj twoja mase ciala: ");
        double waga = sc.nextDouble();
 
        double bmi = waga/Math.pow(wzrost, 2);
 
        System.out.print("BMI "+ imie +" "+ nazwisko+" wynosi " +bmi*10000);
    }
 
 
}