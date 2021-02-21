using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class job_details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();

        if (Session.Contents["id"] == null)
        {
            Response.Redirect("company_login_page.aspx");
            
        }
        txt_COMPANY_ID.Text = Session.Contents["id"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        gen_job_id();
        SqlCommand cmd = new SqlCommand();
        string str = "insert into job_details values(";
        str = str + "'" + txt_JOBID.Text + "',";
        str = str + "'" + txt_COMPANY_ID.Text + "',";
        str = str + "'" + txt_JOB_NAME.Text + "',";
        str = str + "'" + Drp_JOBTYPE.Text + "',";
        str = str + "'" + txt_DESCRIPTION.Text + "',";
        str = str + "'" + txt_POST.Text + "',";
        str = str + "'" + txt_SALARY.Text + "',";
        str = str + "'" + txt_LOCATION.Text + "',";
        str = str + "'" + txt_post_date.Text + "',";
        str = str + "'" + DRP_EXPERIENCE.Text + "')";

        cmd.Connection = cn;
        cmd.CommandText = str;
        cmd.ExecuteNonQuery();

    }

    private void gen_job_id()
    {
        string jobid = " ";
        SqlCommand id = new SqlCommand();
        id.CommandText = "select max(job_id) from job_details ";
        id.Connection = cn;

        SqlDataAdapter getid = new SqlDataAdapter(id);
        DataSet dataid = new DataSet();
        getid.Fill(dataid);

        if (dataid.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {
            jobid = "JB00001";
        }
        else
        {
            string old_id = dataid.Tables[0].Rows[0].ItemArray[0].ToString();
            int d = int.Parse(old_id.Substring(2)) + 1;
            jobid = "JB" + d.ToString().PadLeft(5, '0');
        }
        txt_JOBID.Text = jobid;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clearall();
    }

    private void clearall()
    {

        txt_JOBID.Text = "";
        txt_COMPANY_ID.Text = "";
        txt_JOB_NAME.Text = "";
        Drp_JOBTYPE.SelectedIndex = 0;
        txt_DESCRIPTION.Text = "";
        txt_POST.Text = "";
        txt_SALARY.Text = "";
        txt_LOCATION.Text = "";
        txt_post_date.Text = "";
        DRP_EXPERIENCE.SelectedIndex = 0;
    }





}