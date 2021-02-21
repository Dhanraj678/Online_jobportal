using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class find_job : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
         string str = "select job_id,comp_id,job_name,job_type,description,post,salary,job_location,job_post_date,experience from job_details j,company_detail where company_id=comp_id";

        if (Drp_JOBTYPE.SelectedIndex > 0)
        {
            str = str + " and job_type='" + Drp_JOBTYPE.Text + "'";
        }

        if (DRP_EXPERIENCE.SelectedIndex > 0)
        {
            str = str + " and experience = '" + DRP_EXPERIENCE.Text + "'";
        }

         if(txt_LOCATION.Text != "")
         {
             str = str + " and job_location like '%" + txt_LOCATION.Text + "%'";
         }

        if(txt_JOB_NAME.Text !="")
        {
            str = str + " and job_name like '%" + txt_JOB_NAME.Text + "%'";
        }
        if(txt_EXSALARY.Text !="")
        {
          str = str + " and salary like '%" + txt_EXSALARY.Text +"%'";

        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();

        da.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();


    }
protected void  Button1_Click1(object sender, EventArgs e)
{





}



protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
{
    int rno;
    rno = int.Parse(e.CommandArgument.ToString());

    string c_id = "",j_id="";
    c_id = GridView1.Rows[rno].Cells[1].Text;
     j_id = GridView1.Rows[rno].Cells[2].Text;

     Response.Redirect("send_massege_candidate.aspx?comp_id=" + c_id + " & job_id=" + j_id);
}
}