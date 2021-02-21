using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login_page : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from candidate_detail where cand_id='" + txt_cand_id.Text + "' and password='"+txt_PASSWORD.Text+"'";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session.Contents["id"] = txt_cand_id.Text;
            Session.Contents["user_type"] = "candidate";
            Response.Redirect("candidate_own_page.aspx");
        }
        else
        {
            Response.Write("<script>alert('data not found');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("candidate_basic_details.aspx");
    }
}