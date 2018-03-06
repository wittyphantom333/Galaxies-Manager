/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swg.manager;

import java.io.InputStream;
import java.net.URL;

/**
 *
 * @author wittyphantom333
 */
public class Updater {
    
    private final static String versionURL = "https://galaxies.nomercyever.com/version.html";
    private final static String historyURL = "https://galaxies.nomercyever.com/history.html";
    public static String getLatestVersion() throws Exception
    {
        String data = getData(versionURL);
        return data.substring(data.indexOf("[version]")+9,data.indexOf("[/version]"));
    }
    public static String getWhatsNew() throws Exception
    {
        String data = getData(historyURL);
        return data.substring(data.indexOf("[history]")+9,data.indexOf("[/history]"));
    }


    private static String getData(String address)throws Exception
    {
        URL url = new URL(address);
        
        InputStream html = null;

        html = url.openStream();
        
        int c = 0;
        StringBuffer buffer = new StringBuffer("");

        while(c != -1) {
            c = html.read();
            
        buffer.append((char)c);
        }
        return buffer.toString();
    }

public static void main(String[] args) {
        try {
            if (Integer.parseInt(Updater.getLatestVersion()) > 0) {
                new UpdateInfo(Updater.getWhatsNew());
            }
            else
            {
            /* Create and display the form */
            java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new GalaxiesManager().setVisible(true);
            }
        });
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }




}


