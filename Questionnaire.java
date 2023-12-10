package ex;
import java.util.ArrayList;
import java.sql.*;

public class Questionnaire {
    private int ans;
    private String cat;

//TODO mia methodos pou tha pairnei ta answers kai tha ta vazei me insert sth db sto table questionnaire (id_questionnaie, id_question, answer)
    // TODO mia methodos poy tha travaei ta answers apo to table questionnaire kai tha vazei to sum sto score tou table catergory_q dhl endiameso pinaka(id_quationnaire,id_category)
    //TODO mia methodos poy tha taxinomei to table me ta scores opou id_questionnaire= id_questionnaire toy user kata fthinousa seira
    //na gyrisw to id twn metaptyxiakwn--> na gyrnaei antikeimena typoy master
    //prepei na ylopoihthei h master.java

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

    public void updateCategoryScore(int [] scores) {
        int sum;
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String insertsql = "INSERT INTO Category(id_category, name_category, score, id_questionnaire) VALUES(?,?,?,?);";

        try {
            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(insertsql);
            for (int i = 0; i < scores.length; i += 2) {
                sum = scores[i] + scores[i + 1];
                stmt.setInt(1, i);
                stmt.setString(2, name_category);
                stmt.setInt(3, sum);
                stmt.setInt(3, id_questionnaire);
                stmt.executeUpdate();
                stmt.close();

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
