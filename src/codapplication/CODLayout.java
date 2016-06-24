
package codapplication;

import java.awt.CardLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;


public class CODLayout {
    JFrame frame = new JFrame("Catering On Demand");
    JPanel container = new JPanel();
    WelcomeForm  welcomeForm = new WelcomeForm();
    MainMenuForm mainMenuForm = new MainMenuForm();
    LoginForm loginForm = new LoginForm();
    RegisterForm registerForm = new RegisterForm();
    CardLayout layout = new CardLayout();
    
    public CODLayout(){
    container.setLayout(layout);  
    
    container.add(welcomeForm, "welcome form");
    container.add(mainMenuForm, "main menu form");
    container.add(loginForm, "login form");
    container.add(registerForm, "register form");
    
    layout.show(container, "welcome form");
    
    welcomeForm.getEnterButton().addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent arg0){
      layout.show(container, "main menu form");
      }
 });
    mainMenuForm.getLoginButton().addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent arg0){
      layout.show(container, "login form");
      }
 });
    
   loginForm.getRegisterButton().addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent arg0){
      layout.show(container, "register form");
      }
 });
   
    loginForm.getLoginButton().addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent arg0){
      layout.show(container, "main menu form");
      }
 });
   
   
  
 
    
    frame.add(container);
    frame.setDefaultCloseOperation(frame.DISPOSE_ON_CLOSE);
    frame.setResizable(false);
    frame.setSize(1050,680);
    frame.setVisible(true);
    
        
    }
  
}
    
    
   
    



