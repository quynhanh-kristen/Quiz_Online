/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.util;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class Logging {

    public static void writeLog(String message, File file) {
        FileWriter fw = null;
        PrintWriter printFw = null;
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        FileReader fd = null;
        
        try {
            fw = new FileWriter("../log.txt", true);                
            printFw = new PrintWriter(fw);
            printFw.write(format.format(new Date())+":\n" + message + "\n");
                   
            System.out.println("HEREEEEEEEE");         
            
           fd = new FileReader("../log.txt");
            System.out.println("Content: " + fd.toString());
            System.out.println("file: " + new File ("../log.txt").getAbsolutePath());
        } catch (IOException ex) {
            Logger.getLogger(Logging.class.getName()).log(Level.SEVERE, null, ex.getLocalizedMessage());
        } finally {
            try {
                 if(printFw != null) printFw.close();
                if (fw != null) {
                    fw.close();
                }
                if(fd != null)
                    fd.close();
            } catch (Exception e) {
                Logger.getLogger(Logging.class.getName()).log(Level.SEVERE, null, e.getLocalizedMessage());
            }
        }
    }

}
