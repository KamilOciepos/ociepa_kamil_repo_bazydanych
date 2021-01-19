import java.util.Scanner;

class kolejnezadanie{
	public static void main(String [] a){
		Scanner sc = new Scanner(System.in);
		
		
		System.out.println("Wpisz cos: ");
		String liczenie = sc.nextLine();
		int dlugosc = liczenie.length();
		System.out.println("To co zostalo wpisane liczy "+ dlugosc +" znakow");
	}
}