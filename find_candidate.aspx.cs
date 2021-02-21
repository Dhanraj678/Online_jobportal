using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class find_candidate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();
        if (!Page.IsPostBack)
        {

            load_qualification();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       // string str= "select 


    }
    
    private void load_qualification()
    {
        string str = "select distinct(course_name ) from Qualification_table";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();

        da.Fill(ds);
        int i;
        for (i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            Drp_qualification.Items.Add(ds.Tables[0].Rows[i].ItemArray[0].ToString());
        }
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        //select cand_id,name,address,gender,email,dob from candidate_detail c, Qualification_table q where c.cand_id=q.candidate_id and  cand_id=cand_id and course_name='cd' and gender='male' and address like '%lab%'

        string str = "select cand_id,name,address,gender,email,dob from candidate_detail where  cand_id=cand_id";

        if (Drp_qualification.SelectedIndex > 0)
        {
            str = str + " and cand_id in(select candidate_id from qualification_table where course_name='" + Drp_qualification.Text + "')";
        }

        if (Drp_GENDER.SelectedIndex > 0)
        {
            str = str + " and gender = '" + Drp_GENDER.Text + "'";
        }

         if(txt_LOCATION.Text != "")
         {
             str = str + " and address like '%" + txt_LOCATION.Text + "%'";
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rno;
        rno = int.Parse(e.CommandArgument.ToString());

        string c_id = "";
        c_id = GridView1.Rows[rno].Cells[1].Text;

        Response.Redirect("resume_details.aspx?cand_id=" + c_id);
    }
}