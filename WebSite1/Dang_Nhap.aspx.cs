using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Dang_Nhap : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["chuoiketnoi"].ToString());
    SqlCommand cmd ;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cnn.Open();
        cmd = new SqlCommand("KT_DangNhap", cnn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        dr = cmd.ExecuteReader();
        if (dr != null)
        {
            if (dr.HasRows == true)
            {
                while (dr.Read())
                {
                    Session["user"] = dr.GetString(1);
                }
                
                TextBox1.Text = "";
                TextBox2.Text = "";
                Response.Redirect("DoiMatKhau.aspx");
                
            }
            else
            {
                Response.Write("Fail");
            }
        }
        cnn.Close();
    }
}