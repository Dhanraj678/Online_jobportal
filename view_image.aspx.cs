using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

public partial class view_image : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["my_connection"].ToString();
        cn.Open();
        ProcessRequest();
    }



    public void ProcessRequest()
    {
        String empno;
        if (Request.QueryString["id"] != null)
            empno = Request.QueryString["id"].ToString();
        else
            throw new ArgumentException("No parameter specified");

        Response.ContentType = "image/jpeg";
        Stream strm = ShowEmpImage(empno);
        byte[] buffer = new byte[4096];
        int byteSeq = strm.Read(buffer, 0, 4096);

        while (byteSeq > 0)
        {
            Response.OutputStream.Write(buffer, 0, byteSeq);
            byteSeq = strm.Read(buffer, 0, 4096);
        }

        Response.BinaryWrite(buffer);
        Response.End();
    }

    public Stream ShowEmpImage(String itemid)
    {

        string sql = "SELECT candi_photo FROM candidate_detail WHERE cand_id = @ID";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@ID", itemid);
        
        object img = cmd.ExecuteScalar();
        try
        {
            return new MemoryStream((byte[])img);
        }
        catch
        {
            return null;
        }
        finally
        {
            cn.Close();
        }
    }

}