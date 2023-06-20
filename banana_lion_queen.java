/*

FILE NAME: Creative_Commons
PROGRAMMED BY: 
LANGUAGE USED: Java

//1
//importing library
import java.io.*;
import java.util.ArrayList;
 
//2
//class to create the Creative Commons 
public class CreativeCommons {
 
    //3
    //list to store the lines of code
    private ArrayList<String> lines;
   
    //4
    //constructor
    public CreativeCommons(){
        this.lines = new ArrayList<String>();
    }
 
    //5
    //function to add the lines
    public void addLine(String line) {
        this.lines.add(line);
    }
 
    //6
    //function to write the Creative Commons
    public void write() {
        try {
            FileWriter writer = new FileWriter("CreativeCommons.txt");
            for (String line : this.lines) {
                writer.write(line);
                writer.write("\n");
            }
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
 
    //7
    //main method
    public static void main(String[] args) {
        //8
        //creating the Creative Commons object
        CreativeCommons creativeCommons = new CreativeCommons();
       
        //9
        //adding the opening line
        creativeCommons.addLine("<License Start>");
 
        //10
        //adding the standard Creative Commons line
        creativeCommons.addLine("This work is licensed under a Creative Commons Attribution 4.0 International License.");
 
        //11
        //adding a line with a URL
        creativeCommons.addLine("http://creativecommons.org/licenses/by/4.0/");
 
        //12
        //adding a line with the copyright
        creativeCommons.addLine("Copyright © 2019 by Programmer");
 
        //13
        //adding a line with the creator's name
        creativeCommons.addLine("Created by Programmer");
 
        //14
        //adding the closing line
        creativeCommons.addLine("<License End>");
 
        //15
        //writing the Creative Commons
        creativeCommons.write();
    }
}

*/