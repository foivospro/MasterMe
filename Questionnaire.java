package ex;
import java.util.ArrayList;
import java.sql.*;

public class Questionnaire {
    private int ans;
    private String cat;


    public Questionnaire(int ans, String cat) {
        this.ans = ans;
        this.cat = cat;
    }

    public void setAns(int ans) {
        this.ans = ans;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

    public int getAns() {
        return ans;
    }

    public String getCat() {
        return cat;
    }

    //TODO mia methodos pou tha pairnei ta answers kai tha ta vazei me insert sth db sto table questionnaire (id_questionnaie, id_question, answer)
    // TODO mia methodos poy tha travaei ta answers apo to table questionnaire kai tha vazei to sum sto score tou table catergory_q dhl endiameso pinaka(id_quationnaire,id_category)
    //TODO mia methodos poy tha taxinomei to table me ta scores opou id_questionnaire= id_questionnaire toy user kata fthinousa seira
    //na gyrisw to id twn metaptyxiakwn--> na gyrnaei antikeimena typoy master
    //prepei na ylopoihthei h master.java

//auth h methodos apla pairnei ta answers pou mou dinei h adrianna kai ta kanei insert sth teleia db mas
    public void InsertAnswer(int idquestionnaire, int answer, int idquestion) {
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String insertsql = "INSERT INTO questionnaire(idquestionnaire, answer, idquestion) VALUES(?,?,?);";       

        try {
            con = db.getConnection();
            stmt = con.prepareStatement(insertsql);
            stmt.setInt(1,idquestionnaire);
            stmt.setInt(2,answer);
            stmt.setInt(3,idquestion);
            stmt.executeUpdate();
			stmt.close();
            con.close();
            db.close();
            
        }catch (Exception e) {
                throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
                throw new Exception(e.getMessage());
            }
        }
    }

// mia methodos poy tha travaei ta answers apo to table questionnaire kai tha vazei to sum sto score tou table catergory_q dhl endiameso pinaka(id_quationnaire,id_category)
   
    public void InsertCategoryScore(int idquestionnaire) {
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql1 = "SELECT * FROM questionnaire WHERE idquestionnaire=?;";       
        int score[] = new score[10];

        try {
            con = db.getConnection();
            stmt = con.prepareStatement(insertsql1);
            stmt.setInt(1,idquestionnaire);
            rs = stmt.executeQuery();
            //dhmiourgia pinka scores 
            while (rs.next()){
                 //kanw thn paradoxh oti ana dyo oi erwthseis allazoyn kathgoria
                int a;
                i = rs.getInt("idquestion");
                if(i%2!=0) {
                     a = i/2;
                    score[a] = rs.getInt("answer") ;
                } else {
                    score[a] += rs.getInt("answer") ;
                }
            }
            String insertsql2 = "INSERT INTO questionnaire_category(idquestionnaire, idcategory, score) VALUES(?,?,?);";  
            stmt2 = con.prepareStatement(insertsql2);
            ResultSet rs2 = null;
            for(int j=0;j<10;j++){
                stmt2.setInt(1,idquestionnaire);
                stmt2.setInt(2, j+1);
                stmt2.setInt(3,score[j]);
                rs2 = stmt2.executeQuery();
            }
            stmt.close();
            stmt2.close();
            con.close();
            db.close(); 
            rs2.close();
            rs.close();
        }catch (Exception e) {
                throw new Exception(e.getMessage());
        } finally {
            stmt.close();
            stmt2.close();
            con.close();
            db.close(); 
            rs2.close();
            rs.close();
        }
    }

    public void topCategories() {
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String sql1 = "SELECT * FROM Category WHERE id_questionnaire =? ORDER BY score DESC;";

        try {
            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql1);

            }
        }catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
                throw new Exception(e.getMessage());
            }
        }
    }


  
       
   }
}
