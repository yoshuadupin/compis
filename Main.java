import java.io.*;
import java.util.ArrayList;
/*Idea, manejar argumentos como help y debug... Pasarlos a una cosa tipo diccionario*/
/**Clase que provee una CLI al mini-compilador de ADA95
@autor Luis Felipe Borjas  10611066
*/
public class Main {
	public static void main(String argv[]) {
    try {
      Lexical scanner = new Lexical(new FileReader(argv[0]));
      scanner.yylex();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}

