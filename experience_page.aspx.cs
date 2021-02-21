using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class experience_page : System.Web.UI.Page
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
    
         txt_CANDIDATE_ID.Text = Session.Contents["id"].ToString();
        txt_SLNO.Text = get_new_slno();
        SqlCommand cmd = new SqlCommand();
        string str = "insert into experience_table values(";

        str = str + "'" + txt_CANDIDATE_ID.Text + "',";
        str = str + "'" + txt_SLNO.Text + "',";
        str = str + "'" + txt_COMPANY_NAME.Text + "',";
        str = str + "'" + txt_LOCATION.Text + "',";
        str = str + "'" + txt_POST.Text + "',";
        str = str + "'" + txt_WORKDURATION.Text + "')";
   

        cmd.Connection = cn;
        cmd.CommandText = str;
        cmd.ExecuteNonQuery();
    }
    private string get_new_slno()
    {
        string new_id = "";
        

        string str = "select max(sl_no) from experience_table where candidate_id='" + Session.Contents["id"].ToString()+ "'";

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
        txt_CANDIDATE_ID.Text = "";
        txt_SLNO.Text = "";
        txt_COMPANY_NAME.Text = "";
        txt_LOCATION.Text = "";
        txt_POST.Text = "";
        txt_WORKDURATION.Text = "";


    }
    
}