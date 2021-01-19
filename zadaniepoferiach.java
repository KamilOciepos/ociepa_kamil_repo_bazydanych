import java.util.Scanner;

class zadaniepoferiach{
	public static void main(String [] a){
		Scanner sc = new Scanner(System.in);
		final String haslo = "kamil";
		
		System.out.print("Podaj haslo: ");
		String wpisanehaslo = sc.next();
		if (wpisanehaslo.equals(haslo)){
			System.out.println("Prawidlowe haslo");
		}else{
			System.out.println("Nieprawidlowe haslo");
		}
		
		System.out.println("Wpisz cos: ");
		String liczenie = sc.nextLine();
		int dlugosc = liczenie.length();
		System.out.println("To co zostało wpisane liczy "+ dlugosc +" znaków");
	}
}