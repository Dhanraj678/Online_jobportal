using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class candidate_basic_details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clear_all();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        gen_id();
        SqlCommand cmd = new SqlCommand();
        string str = "insert into candidate_detail values(";
        str = str + "'" + txt_id.Text + "',";
        str = str + "'" + txt_name.Text + "',";
        str = str + "'" + txt_fname.Text + "',";
        str = str + "'" + txt_mname.Text + "',";
        str = str + "'" + Drp_gender.Text + "',";
        str = str + "'" + Txt_aadhar.Text + "',";
        str = str + "'" + Txt_email.Text + "',";
        str = str + "'" + txt_dob.Text + "',";
        str = str + "'" + txt_password.Text + "',";
        str = str + "'" + Txt_address.Text + "', ";


        if (FileUpload1.FileName != "")
        {


            Byte[] imageSize = new Byte[FileUpload1.PostedFile.ContentLength - 1];
            HttpPostedFile postedimage;
            postedimage = FileUpload1.PostedFile;
            postedimage.InputStream.Read(imageSize, 0, int.Parse((FileUpload1.PostedFile.ContentLength - 1).ToString()));

            SqlParameter imgload = new SqlParameter("@imgitem", SqlDbType.Image, imageSize.Length);

            imgload.Value = imageSize;
            cmd.Parameters.Add(imgload);
            str += "@imgitem)";
        }
        else
        {
            str += "null)";
        }



        
        cmd.CommandText = str;
        cmd.Connection = cn;

        cmd.ExecuteNonQuery();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string str = "select * from candidate_detail where cand_id='" + txt_id.Text + "'";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_name.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            txt_fname.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            txt_mname.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            Drp_gender.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            Txt_aadhar.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            Txt_email.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            //txt_dob.Text = DateTime.Parse( ds.Tables[0].Rows[0].ItemArray[7].ToString());
            txt_password.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            Txt_address.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();

        }
        else
        {
            Response.Write("<script>alert('data not found');</script>");
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = "select * from candidate_detail where cand_id='" + txt_id.Text + "'";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            string sql = "update candidate_detail set ";
            sql = sql + "name = '" + txt_name.Text + "',";
            sql = sql + "father_name='" + txt_fname.Text + "',";
            sql = sql + "mother_name ='" + txt_mname.Text + "',";
            sql = sql + "gender ='" + Drp_gender.Text + "',";
            sql = sql + "aadhar_no ='" + Txt_aadhar.Text + "',";
            sql = sql + "email ='" + Txt_email.Text + "',";
            if (txt_dob.Text != "")
                sql = sql + "dob ='" + txt_dob.Text + "',";
            if (txt_password.Text != "")
                sql = sql + "password'" + txt_password.Text + "',";
            sql = sql + "address='" + Txt_address.Text + "' ";
            sql = sql + " where cand_id='" + txt_id.Text + "'";

            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = cn;
            cmd1.CommandText = sql;
            cmd1.ExecuteNonQuery();
            Response.Write("<script>alert('data updated');</script>");
        }
        else
        {
            Response.Write("<script>alert('data not found');</script>");
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string str = "select * from candidate_detail where cand_id='" + txt_id.Text + "'";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            string sql = "delete from candidate_detail where cand_id='" + txt_id.Text + "'";
            SqlCommand cmd_del = new SqlCommand(sql, cn);
            cmd_del.ExecuteNonQuery();

            clear_all();
            Response.Write("<script>alert('DATA IS DELETED');</script>");

        }
        else
        {
            Response.Write("<script>alert('DATA IS NOT FOUND');</script>");
        }

    }
    private void clear_all()
    {
        txt_id.Text = "";
        txt_name.Text = "";
        txt_fname.Text = "";
        txt_mname.Text = "";
        Drp_gender.SelectedIndex = 0;
        Txt_aadhar.Text = "";
        Txt_email.Text = "";
        txt_dob.Text = "";
        txt_password.Text = "";
        Txt_address.Text = "";
            
    }
    private void gen_id()
    {
        string item_id = "";

        SqlCommand cmd_id = new SqlCommand();
        cmd_id.CommandText = "select max(cand_id) from candidate_detail";
        cmd_id.Connection = cn;

        SqlDataAdapter da_id = new SqlDataAdapter(cmd_id);
        DataSet ds_id = new DataSet();
        da_id.Fill(ds_id);

        if (ds_id.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {
            item_id = "C0001";
        }
        else
        {
            string old_id = ds_id.Tables[0].Rows[0].ItemArray[0].ToString();
            int d = int.Parse(old_id.Substring(1)) + 1;
            item_id = "C" + d.ToString().PadLeft(4, '0');

        }
        txt_id.Text = item_id;

    }
}