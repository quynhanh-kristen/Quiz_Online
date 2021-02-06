/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author DELL
 */
public class FileManager {
    public static Map<String, String> getListControl(File path) throws IOException, FileNotFoundException{
        Map<String,String> mapListControls = new HashMap<>();        
        FileReader fd = null;
        BufferedReader bd = null;
        
        try{
            fd = new FileReader(path);
            bd = new BufferedReader(fd);
            while(bd.ready()){
                String[] listControls = bd.readLine().split("=");
                if(listControls.length == 2){
                    mapListControls.put(listControls[0], listControls[1]);
                }
            }
        }finally{
            if(bd != null)
                bd.close();
            if(fd != null)
                fd.close();
        }
        return mapListControls;
    }
}
