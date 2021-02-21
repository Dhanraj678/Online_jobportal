using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class company_inbox : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();

        if (Session.Contents["id"] != null)
        {

            string str = "select * from candidate_massege where company='" + Session.Contents["id"].ToString() + "'";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = str;
            cmd.Connection = cn;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("company_login_page.aspx");
        }
    }
}