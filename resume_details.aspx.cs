using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class resume_details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    string cand_id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();
        

        if (Request.QueryString["cand_id"] != null)
        {
            cand_id = Request.QueryString["cand_id"].ToString();
        }

        string str = "select * from candidate_detail where cand_id='" + cand_id + "'";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Lbl_name.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Lbl_father.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            Lbl_mother.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            Lbl_gender.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            Lbl_aadhar.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            Lbl_email.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            //txt_dob.Text = DateTime.Parse( ds.Tables[0].Rows[0].ItemArray[7].ToString());
            //txt_password.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            Lbl_address.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();

            img_candi.ImageUrl = "view_image.aspx?id="+cand_id;

            load_edu();
            load_exp();
        }
        else
        {
            Response.Write("<script>alert('data not found');</script>");
        }
    }

    private void load_edu()
    {

        string str="select * from qualification_table where candidate_id='"+cand_id+"'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        Grid_education.DataSource = ds;
        Grid_education.DataBind();
    }

    private void load_exp()
    {

        string str = "select * from  experience_table where candidate_id='" + cand_id + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        Grid_experince.DataSource = ds;
        Grid_experince.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("send_massege_company.aspx?cand_id="+cand_id);
    }
}