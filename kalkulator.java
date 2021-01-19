import java.util.Scanner;

class kalkulator{
	public static void main(String [] arg){
		Scanner sc = new Scanner(System.in);
		System.out.println("Prosty kalkulator");
		System.out.print("Podaj pierwsza liczbe: ");
		float n1 = sc.nextFloat();
		System.out.print("Podaj druga liczbe: ");
		float n2 = sc.nextFloat();
		System.out.print("Podaj dzialanie [+ - * /]: ");
		String operation = sc.next();
		
		if(operation.equals("+")){
			System.out.println(n1+" "+operation+" "+n2+" = "+(n1+n2));
		}else if(operation.equals("-")){
			System.out.println(n1+" "+operation+" "+n2+" = "+(n1-n2));
		}else if(operation.equals("*")){
			System.out.println(n1+" "+operation+" "+n2+" = "+(n1*n2));
		}else if(operation.equals("/")){
			System.out.println(n1+" "+operation+" "+n2+" = "+(n1/n2));
		}else{
			System.out.println("\""+operation+"\" to nieobslugiwane dzialanie");
		}
	}
}