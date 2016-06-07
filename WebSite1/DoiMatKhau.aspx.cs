using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class DoiMatKhau : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["chuoiketnoi"].ToString());
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Dang_Nhap.aspx");
        }
        TextBox1.Text = Session["user"].ToString();
        TextBox1.Enabled = false;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox3.Text==TextBox4.Text)
        {
            cnn.Open();

            cmd = new SqlCommand("Change_password", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@NewPassword", TextBox3.Text);
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows[0]["errCode"].ToString()=="0")
            {
                Response.Write("Success!");
            }
            else
                Response.Write("fail");
        }
        else
        {
            Response.Write("Khong khop MK");
        }
    }
}