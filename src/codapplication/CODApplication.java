

package codapplication;
import javax.swing.*;
import java.awt.*;

/**
 *
 * @author Aslam Odayappurath
 */
public class CODApplication {

    
public CODApplication(){

new CODLayout();

}   


 
   
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedLookAndFeelException {
        UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        new CODApplication();
        new DBConnectivity();
       
    }
    
}
