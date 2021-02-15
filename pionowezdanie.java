import java.util.Scanner;

class pionowezdanie{
	public static void main(String [] a){
		Scanner sc = new Scanner(System.in);
		
		
		System.out.println("Wpisz swoje zdanie: ");
		String ko_zdanie = sc.nextLine();
		int ko_i= 0;
		int ko_dlugosc = ko_zdanie.length();
		for(;ko_i<ko_dlugosc;){
			
			System.out.println(ko_zdanie.charAt(ko_i));
			ko_i++;
			
		}

	}
}