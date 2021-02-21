using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class company_details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();


    protected void Page_Load(object sender, EventArgs e)
    {

        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        gen_com_id();
        SqlCommand cmd = new SqlCommand();
        string str = " insert into company_detail values(";
        str = str + "'" + COMPANY_ID.Text + "',";
        str = str + "'" + COMPANY_NAME.Text + "',";
        str = str + "'" + COMPANY_EMAIL.Text + "',";
        str = str + "'" + PHONE_NO_1.Text + "',";
        str = str + "'" + PHONE_NO_2 .Text + "'," ;
        str = str + "'" + COMPANY_ADDRESS.Text + "',";
        str = str + "'" + COMPANY_PIN.Text + "',";
        str = str + "'" + ESTABLISHED_YEAR.Text + "',";
        str = str + "'" + PASSWORD.Text + "')";

        cmd.CommandText = str;
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
    
    }
    

    private void gen_com_id()
    {

        string comid;
        SqlCommand id = new SqlCommand();
        id.CommandText = "select max(comp_id) from  company_detail ";
        id.Connection = cn;

        SqlDataAdapter getid = new SqlDataAdapter(id);
        DataSet dataid = new DataSet();
        getid.Fill(dataid);

        if (dataid.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {
            comid = "CM00001";
        }
        else
        {
            string old_id = dataid.Tables[0].Rows[0].ItemArray[0].ToString();
            int d = int.Parse(old_id.Substring(2)) + 1;
            comid = "CM" + d.ToString().PadLeft(5, '0');
        }
        COMPANY_ID.Text=comid;

    }

    

}