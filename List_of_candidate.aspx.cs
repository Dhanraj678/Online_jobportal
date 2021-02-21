using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class List_of_candidate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=job_portal;User ID=sa;Password=123";
        cn.Open();
        string str = "select * from candidate_detail where candi_photo is not null";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

}