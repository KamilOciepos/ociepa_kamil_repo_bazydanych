import java.util.Scanner;

class duzeliterki{
	public static void main(String [] a){
		Scanner sc = new Scanner(System.in);
		
		
		System.out.println("Wprowadz slowo: ");
		String ko_slowo = sc.next();
		char ko_pierwsza = ko_slowo.charAt(0);
		System.out.println(ko_pierwsza);
		int ko_dlugosc = ko_slowo.length() - 1;
		char ko_ostatnia = ko_slowo.charAt(ko_dlugosc);
		System.out.println(ko_ostatnia);


	}
}