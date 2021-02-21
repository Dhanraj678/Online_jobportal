using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class qulification_of_candidate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();

        if (Session.Contents["id"] == null)
        {
            Response.Redirect("candidate_login_page.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //gen_id();
        txt_CANDIDATE_ID.Text = Session.Contents["id"].ToString();
        txt_SLNO.Text = get_new_slno();
        SqlCommand cmd = new SqlCommand();
        string str = "insert into qualification_table values(";

        str = str + "'" + txt_CANDIDATE_ID.Text + "',";
        str = str + "'" + txt_SLNO.Text + "',";
        str = str + "'" + txt_COURSE.Text + "',";
        str = str + "'" + txt_BOARD .Text+ "',";
        str = str + "'" + txt_TOTALMARKSOBTAINED.Text + "',";
        str = str + "'" + txt_COURSEDURATION.Text + "',";
        str = str + "'" + txt_PASSINGYEAR.Text + "')";

        cmd.Connection = cn;
        cmd.CommandText = str;
        cmd.ExecuteNonQuery();
    }
    private string get_new_slno()
    {
        string new_id = "";
        

        string str = "select max(sl_no) from qualification_table where candidate_id='" + Session.Contents["id"].ToString()+ "'";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {
            new_id = "1";
        }
        else
        {
            int t = int.Parse(ds.Tables[0].Rows[0].ItemArray[0].ToString());
            new_id = (t + 1).ToString();
        }
        return new_id;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear_all();

    }

    private void clear_all()
    {
       // txt_CANDIDATE_ID.Text = "";
        txt_BOARD.Text = "";
        txt_COURSE.Text = "";
        txt_COURSEDURATION.Text = "";
        txt_PASSINGYEAR.Text = "";
        txt_TOTALMARKSOBTAINED.Text = "";
        

    }



    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}