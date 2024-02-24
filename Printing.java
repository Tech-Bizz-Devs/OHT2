
package EMS;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import javax.swing.JOptionPane;

/**
 * This class is used to create a pdf file using iText jar.
 *
 * @author javawithease
 */
public class Printing {

    public static void print(String username ,int year ,int month ,String totalsalary) {
        try {
            //Create Document instance.
            Document document = new Document();

            //Create OutputStream instance.
            OutputStream outputStream
                    = new FileOutputStream(new File("C:\\intel\\TestFile.pdf"));

            //Create PDFWriter instance.
            PdfWriter.getInstance(document, outputStream);

            //Open the document.
            document.open();

            //Add content to the document.
            document.add(new Paragraph("username:- "+ username +"\n"));
            document.add(new Paragraph("Month:- "+ month +"\n"));
            document.add(new Paragraph("Year:- "+ year +"\n"));
            document.add(new Paragraph("Total salary:- "+ totalsalary ));
            JOptionPane.showMessageDialog(null, "PDF Created", "Info", 0);
            //Close document and outputStream.
            document.close();
            
            outputStream.close();

            System.out.println("Pdf created successfully.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
