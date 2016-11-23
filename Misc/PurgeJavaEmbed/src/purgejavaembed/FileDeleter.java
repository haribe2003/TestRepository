package com.mycompany.hari.HariProject;

import java.io.File;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class FileDeleter {

    public void delete( String path,long days ) {

        File root = new File( path );
        File[] list = root.listFiles();
        boolean flag= true;

        if (list == null) return;

        for ( File f : list ) {
        	
            if ( f.isDirectory() ) {
                delete( f.getAbsolutePath(),days );
                if(f.list().length==0){
                	f.delete();
                }
                System.out.println( "Dir:" + f.getAbsoluteFile() );
            }
            else {
            	
            	if(flag){
            	f.setLastModified(subtract15Days().getTime());
            	}else{
            		f.setLastModified(subtract5Days().getTime());
            	}
            	flag=false;
                System.out.println( "File:" + f.getAbsoluteFile() + " "+new Date(f.lastModified()));
                long ageInDays = getDateDiff(f.lastModified(),new Date(),TimeUnit.DAYS);
                
                if(ageInDays>days){
                	f.delete();
                }
            }
        }
    }


    
    /**
     * Get a diff between two dates
     * @param date1 the oldest date
     * @param date2 the newest date
     * @param timeUnit the unit in which you want the diff
     * @return the diff value, in the provided unit
     */
    public static long getDateDiff(long date1, Date date2, TimeUnit timeUnit) {
        long diffInMillies = date2.getTime() - date1;
        return diffInMillies/(24 * 3600 * 1000);
        
    }
    
    public static void main(String[] args) {
        FileDeleter fw = new FileDeleter();
        fw.delete("c:\\Test\\" ,10);
    }

    
    public Date subtract15Days(){
    	
    	Date dateBefore = new Date(new Date().getTime() - 15 * 24 * 3600 * 1000  ); 
    	return dateBefore;
    }
   public Date subtract5Days(){
    	
    	Date dateBefore = new Date(new Date().getTime() - 5 * 24 * 3600 * 1000  ); 
    	return dateBefore;
    }
}