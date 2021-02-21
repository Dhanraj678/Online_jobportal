using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class send_massege_candidate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    string cand_id;
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
        string n_id = get_new_slno();

        SqlCommand cmd = new SqlCommand();
        string str = "insert into candidate_massege values (";
        str = str + "'" + Session.Contents["id"].ToString() + "',";
        str = str + "'" + Txt_company.Text + "',";
        str = str + "'" + "j00001" + "',";
        str = str + "'" + n_id + "',";
        str = str + "'" + txt_SUBJECT.Text + "',";
        str = str + "'" + txt_message.Text + "',";
        str = str + "'" + "unread" + "',";

        str = str + "'" + DateTime.Now.ToString() + "')";


        cmd.Connection = cn;
        cmd.CommandText = str;
        cmd.ExecuteNonQuery();


    }

    private string get_new_slno()
    {
        string new_id = "";


        string str = "select max(sl_no) from company_massege where company_id='" + Session.Contents["id"].ToString() + "' and candidate_id='" + cand_id + "'";

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

}