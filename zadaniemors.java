import java.util.Scanner;
import java.io.*;

class zadaniemors{
	static String alfabet(char x){
	switch (x)  
        { 
            case 'a': 
                return ".-"; 
            case 'b': 
                return "-..."; 
            case 'c': 
                return "-.-."; 
            case 'd': 
                return "-.."; 
            case 'e': 
                return "."; 
            case 'f': 
                return "..-."; 
            case 'g': 
                return "--."; 
            case 'h': 
                return "...."; 
            case 'i': 
                return ".."; 
            case 'j': 
                return ".---"; 
            case 'k': 
                return "-.-"; 
            case 'l': 
                return ".-.."; 
            case 'm': 
                return "--"; 
            case 'n': 
                return "-."; 
            case 'o': 
                return "---"; 
            case 'p': 
                return ".--."; 
            case 'q': 
                return "--.-"; 
            case 'r': 
                return ".-."; 
            case 's': 
                return "..."; 
            case 't': 
                return "-"; 
            case 'u': 
                return "..-"; 
            case 'v': 
                return "...-"; 
            case 'w': 
                return ".--"; 
            case 'x': 
                return "-..-"; 
            case 'y': 
                return "-.--"; 
            case 'z': 
                return "--..";
			
			
        } 
        return ""; 
    } 
      
    static void tlumaczenie(String s)  
    { 

        for (int i = 0;i<s.length(); i++) 
            System.out.print(alfabet(s.charAt(i))); 
            System.out.println(); 
    } 
      
    public static void main (String[] args) 
    { 
		System.out.println("Podaj slowo: ");
		Scanner sc = new Scanner(System.in);
		String s = sc.nextLine();
        tlumaczenie(s); 
		String tlumaczenie = tlumaczenie(s);
		File f = new File("mors.txt");
		try{
			
			FileWriter fw = new FileWriter(f);
			fw.write("Tlumaczone slowo: "+s+"\n Tlumaczenie: "+ tlumaczenie);
			fw.close();
		} catch(IOException e){
			System.out.println("BŁĄD: "+e.toString());
		}
		
    } 	
		
}