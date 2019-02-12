import java.io.*;

public class Main {
  static public void main(String argv[]) {
    try {
      Lexical scanner = new Lexical(new FileReader(argv[0]));
      scanner.yylex();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
