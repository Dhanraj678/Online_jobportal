using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class candidate_page : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();
        lbl_inbox.Text = "Messages";
        if (Session.Contents["id"] != null)
        {

            string str = "select count(*) from company_massege where candidate_id='" + Session.Contents["id"].ToString() + "'";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = str;
            cmd.Connection = cn;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows[0].ItemArray[0].ToString() != "0")
            {
                lbl_inbox.Text = "Messages(" + ds.Tables[0].Rows[0].ItemArray[0].ToString() + ")";
            }
        }
        else
        {
            Response.Redirect("candidate_login_page.aspx");
        }
    }
}
