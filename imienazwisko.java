import java.util.Scanner;

class imienazwisko{
	public static void main(String [] a){
		Scanner sc = new Scanner(System.in);
		
		
		System.out.println("Wpisz swoje imie: ");
		String ko_imie = sc.nextLine();
		System.out.println("Wpisz swoje nazwisko: ");
		String ko_nazwisko = sc.nextLine();
		
		System.out.println("Imie ma "+ ko_imie.length() +" a Nazwisko ma "+ ko_nazwisko.length()+" znakow");
	}
}