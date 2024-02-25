/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package fees_managment_syatem;

import java.awt.Color;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author yash
 */
public class ViewAllRecords extends javax.swing.JFrame {

    /**
     * Creates new form ViewAllRecords
     */
     DefaultTableModel model;
    public ViewAllRecords() {
        initComponents();
        setViewAllRecords();
    }
public void setViewAllRecords(){
     try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fees_managment?zeroDateTimeBehavior=CONVERT_TO_NULL","root","");
       PreparedStatement pst=con.prepareStatement("select * from fees_details");
       ResultSet rs=pst.executeQuery();
       while(rs.next()){
           String ReceiptNo=rs.getString("recieptNo");
           String RollNo=rs.getString("rollNo");
           String StudentName=rs.getString("studentName");
           String Course=rs.getString("courseName");
            String Amount=rs.getString("totalAmount");
           String PaymentMode=rs.getString("paymentMode");
           String Date=rs.getString("date");
           String Remark=rs.getString("remark");
           Object[] obj={ReceiptNo,RollNo,StudentName,Course,PaymentMode,Amount,Remark};
           model=(DefaultTableModel)tblViewAllRecords.getModel();
           model.addRow(obj);
       }
    }catch(Exception e){
        e.printStackTrace();
    }
}
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelSideBar = new javax.swing.JPanel();
        panelLogOut = new javax.swing.JPanel();
        btnLogOut = new javax.swing.JLabel();
        panelHome = new javax.swing.JPanel();
        btnHome = new javax.swing.JLabel();
        panelSearchRecords = new javax.swing.JPanel();
        btnSearchRecords = new javax.swing.JLabel();
        panelEditCourse = new javax.swing.JPanel();
        btnEditCourse = new javax.swing.JLabel();
        panelCourseList = new javax.swing.JPanel();
        btnCourseList = new javax.swing.JLabel();
        panelViewAllRecords = new javax.swing.JPanel();
        btnViewAllRecords = new javax.swing.JLabel();
        panelBack = new javax.swing.JPanel();
        btnBack = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblViewAllRecords = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        panelSideBar.setBackground(new java.awt.Color(255, 102, 102));
        panelSideBar.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        panelLogOut.setBackground(new java.awt.Color(255, 102, 102));
        panelLogOut.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        panelLogOut.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnLogOut.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnLogOut.setForeground(new java.awt.Color(255, 255, 255));
        btnLogOut.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fees_managment_syatem/icon/exit.png"))); // NOI18N
        btnLogOut.setText("        Logout");
        btnLogOut.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnLogOutMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnLogOutMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnLogOutMouseExited(evt);
            }
        });
        panelLogOut.add(btnLogOut, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 2, 260, 40));

        panelSideBar.add(panelLogOut, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 540, 320, 50));

        panelHome.setBackground(new java.awt.Color(255, 102, 102));
        panelHome.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        panelHome.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnHome.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnHome.setForeground(new java.awt.Color(255, 255, 255));
        btnHome.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fees_managment_syatem/icon/home.png"))); // NOI18N
        btnHome.setText("      HOME");
        btnHome.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnHomeMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnHomeMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnHomeMouseExited(evt);
            }
        });
        panelHome.add(btnHome, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 310, 50));

        panelSideBar.add(panelHome, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 60, 320, 50));

        panelSearchRecords.setBackground(new java.awt.Color(255, 102, 102));
        panelSearchRecords.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        panelSearchRecords.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnSearchRecords.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnSearchRecords.setForeground(new java.awt.Color(255, 255, 255));
        btnSearchRecords.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fees_managment_syatem/icon/search2.png"))); // NOI18N
        btnSearchRecords.setText("      Search Records");
        btnSearchRecords.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnSearchRecordsMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnSearchRecordsMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnSearchRecordsMouseExited(evt);
            }
        });
        panelSearchRecords.add(btnSearchRecords, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 310, 60));

        panelSideBar.add(panelSearchRecords, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 140, 320, 50));

        panelEditCourse.setBackground(new java.awt.Color(255, 102, 102));
        panelEditCourse.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        panelEditCourse.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        panelEditCourse.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnEditCourse.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnEditCourse.setForeground(new java.awt.Color(255, 255, 255));
        btnEditCourse.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fees_managment_syatem/icon/edit2.png"))); // NOI18N
        btnEditCourse.setText("      Edit Course");
        btnEditCourse.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnEditCourseMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnEditCourseMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnEditCourseMouseExited(evt);
            }
        });
        panelEditCourse.add(btnEditCourse, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 260, -1));

        panelSideBar.add(panelEditCourse, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 220, 320, 50));

        panelCourseList.setBackground(new java.awt.Color(255, 102, 102));
        panelCourseList.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        panelCourseList.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnCourseList.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnCourseList.setForeground(new java.awt.Color(255, 255, 255));
        btnCourseList.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fees_managment_syatem/icon/list.png"))); // NOI18N
        btnCourseList.setText("        Course List");
        btnCourseList.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnCourseListMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnCourseListMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnCourseListMouseExited(evt);
            }
        });
        panelCourseList.add(btnCourseList, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, -10, 260, -1));

        panelSideBar.add(panelCourseList, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 300, 320, 50));

        panelViewAllRecords.setBackground(new java.awt.Color(255, 102, 102));
        panelViewAllRecords.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        panelViewAllRecords.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnViewAllRecords.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnViewAllRecords.setForeground(new java.awt.Color(255, 255, 255));
        btnViewAllRecords.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fees_managment_syatem/icon/view all record.png"))); // NOI18N
        btnViewAllRecords.setText("        View All Records");
        btnViewAllRecords.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnViewAllRecordsMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnViewAllRecordsMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnViewAllRecordsMouseExited(evt);
            }
        });
        panelViewAllRecords.add(btnViewAllRecords, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 320, -1));

        panelSideBar.add(panelViewAllRecords, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 380, 320, 50));

        panelBack.setBackground(new java.awt.Color(255, 102, 102));
        panelBack.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        panelBack.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnBack.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnBack.setForeground(new java.awt.Color(255, 255, 255));
        btnBack.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fees_managment_syatem/icon/left-arrow.png"))); // NOI18N
        btnBack.setText("        Back");
        btnBack.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnBackMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnBackMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnBackMouseExited(evt);
            }
        });
        panelBack.add(btnBack, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, -10, 260, -1));

        panelSideBar.add(panelBack, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 460, 320, 50));

        getContentPane().add(panelSideBar, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 430, 860));

        jPanel1.setBackground(new java.awt.Color(255, 204, 204));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tblViewAllRecords.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Reciept No", "Roll No", "Student Name", "Course Name", "Total Amount", "Payment Mode", "Date", "Remark"
            }
        ));
        jScrollPane1.setViewportView(tblViewAllRecords);

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 90, 810, 540));

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 137, 181));
        jLabel1.setText("View All Records");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(320, 20, 200, -1));

        jTextField1.setBackground(new java.awt.Color(0, 137, 181));
        jPanel1.add(jTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 50, 200, 5));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 0, 850, 660));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnLogOutMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogOutMouseEntered
        // TODO add your handling code here:
        Color clr=new Color(255,204,204);
        panelLogOut.setBackground(clr);
    }//GEN-LAST:event_btnLogOutMouseEntered

    private void btnLogOutMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogOutMouseExited
        // TODO add your handling code here:
        Color clr=new Color(255,102,102);
        panelLogOut.setBackground(clr);
    }//GEN-LAST:event_btnLogOutMouseExited

    private void btnHomeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnHomeMouseClicked
        HomePage home=new HomePage();
        home.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnHomeMouseClicked

    private void btnHomeMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnHomeMouseEntered
        Color clr=new Color(255,204,204);
        panelHome.setBackground(clr);
    }//GEN-LAST:event_btnHomeMouseEntered

    private void btnHomeMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnHomeMouseExited
        // TODO add your handling code here:
        Color clr=new Color(255,102,102);
        panelHome.setBackground(clr);
    }//GEN-LAST:event_btnHomeMouseExited

    private void btnSearchRecordsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSearchRecordsMouseClicked
          SearchRecords search=new SearchRecords();
          search.setVisible(true);
          this.dispose();
    }//GEN-LAST:event_btnSearchRecordsMouseClicked

    private void btnSearchRecordsMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSearchRecordsMouseEntered
        // TODO add your handling code here:
        Color clr=new Color(255,204,204);
        panelSearchRecords.setBackground(clr);
    }//GEN-LAST:event_btnSearchRecordsMouseEntered

    private void btnSearchRecordsMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSearchRecordsMouseExited
        // TODO add your handling code here:
        Color clr=new Color(255,102,102);
        panelSearchRecords.setBackground(clr);
    }//GEN-LAST:event_btnSearchRecordsMouseExited

    private void btnEditCourseMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnEditCourseMouseClicked
             EditCourse edit=new EditCourse();
             edit.setVisible(true);
             this.dispose();
    }//GEN-LAST:event_btnEditCourseMouseClicked

    private void btnEditCourseMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnEditCourseMouseEntered
        // TODO add your handling code here:
        Color clr=new Color(255,204,204);
        panelEditCourse.setBackground(clr);
    }//GEN-LAST:event_btnEditCourseMouseEntered

    private void btnEditCourseMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnEditCourseMouseExited
        // TODO add your handling code here:
        Color clr=new Color(255,102,102);
        panelEditCourse.setBackground(clr);
    }//GEN-LAST:event_btnEditCourseMouseExited

    private void btnCourseListMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCourseListMouseClicked

    }//GEN-LAST:event_btnCourseListMouseClicked

    private void btnCourseListMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCourseListMouseEntered
        // TODO add your handling code here:
        Color clr=new Color(255,204,204);
        panelCourseList.setBackground(clr);
    }//GEN-LAST:event_btnCourseListMouseEntered

    private void btnCourseListMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCourseListMouseExited
        // TODO add your handling code here:
        Color clr=new Color(255,102,102);
        panelCourseList.setBackground(clr);
    }//GEN-LAST:event_btnCourseListMouseExited

    private void btnViewAllRecordsMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnViewAllRecordsMouseEntered
        // TODO add your handling code here:
        Color clr=new Color(255,204,204);
        panelViewAllRecords.setBackground(clr);
    }//GEN-LAST:event_btnViewAllRecordsMouseEntered

    private void btnViewAllRecordsMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnViewAllRecordsMouseExited
        // TODO add your handling code here:
        Color clr=new Color(255,102,102);
        panelViewAllRecords.setBackground(clr);
    }//GEN-LAST:event_btnViewAllRecordsMouseExited

    private void btnBackMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnBackMouseEntered
        // TODO add your handling code here:
        Color clr=new Color(255,204,204);
        panelBack.setBackground(clr);
    }//GEN-LAST:event_btnBackMouseEntered

    private void btnBackMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnBackMouseExited
        // TODO add your handling code here:
        Color clr=new Color(255,102,102);
        panelBack.setBackground(clr);
    }//GEN-LAST:event_btnBackMouseExited

    private void btnViewAllRecordsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnViewAllRecordsMouseClicked
        ViewAllRecords viewrecords=new ViewAllRecords();
        viewrecords.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnViewAllRecordsMouseClicked

    private void btnBackMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnBackMouseClicked
        HomePage home=new HomePage();
        home.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnBackMouseClicked

    private void btnLogOutMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLogOutMouseClicked
       this.dispose();
    }//GEN-LAST:event_btnLogOutMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ViewAllRecords.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ViewAllRecords.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ViewAllRecords.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ViewAllRecords.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ViewAllRecords().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btnBack;
    private javax.swing.JLabel btnCourseList;
    private javax.swing.JLabel btnEditCourse;
    private javax.swing.JLabel btnHome;
    private javax.swing.JLabel btnLogOut;
    private javax.swing.JLabel btnSearchRecords;
    private javax.swing.JLabel btnViewAllRecords;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JPanel panelBack;
    private javax.swing.JPanel panelCourseList;
    private javax.swing.JPanel panelEditCourse;
    private javax.swing.JPanel panelHome;
    private javax.swing.JPanel panelLogOut;
    private javax.swing.JPanel panelSearchRecords;
    private javax.swing.JPanel panelSideBar;
    private javax.swing.JPanel panelViewAllRecords;
    private javax.swing.JTable tblViewAllRecords;
    // End of variables declaration//GEN-END:variables
}
