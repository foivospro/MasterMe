import java.sql.*;
import java.util.ArrayList;
import java.util.List;

// sindesi me vasis gia tis erotiseis toy erotimatologioy
public class FormQuestions{

    /**
	 * This method returns a List with all the Form's Questions
	 * 
	 * @return List<String>
	 */
	public List<String> getQuestions() throws Exception {

		List<String> question = new ArrayList<String>();

		DB db = new DB();
        Connection con = null;
		String query = "SELECT name FROM question;";
		
		try {
            
            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

			ResultSet rs = stmt.executeQuery();

			
            while (rs.next()) {

                question.add(rs.getString("name"));

            }

            rs.close();
            stmt.close();
            db.close();

            return question;


		} catch (Exception e) {
            throw new Exception("Data Base error" + e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
                
            }
        }		
	} //End of getUsers

}
