package Compile;
import java.io.*;
public class compile {

public static void printLines(InputStream ins) throws Exception {
    String line = null;
    BufferedReader in = new BufferedReader(
        new InputStreamReader(ins));
    while ((line = in.readLine()) != null) {
        System.out.println( line);
    }
  }

public static void runProcess(String command) throws Exception {
    Process pro = Runtime.getRuntime().exec(command);
    printLines(pro.getInputStream());
    printLines(pro.getErrorStream());
    pro.waitFor();
//    System.out.println(command + " exitValue() " + pro.exitValue());
  }

public static void main() {
    try {
      runProcess(" javac reverse.java");
      runProcess("java reverse");
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}