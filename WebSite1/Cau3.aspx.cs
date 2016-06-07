using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Cau3 : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["chuoiketnoi"].ToString());
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text=="" ||TextBox2.Text=="")
        {
            Response.Write("Nhap day du thong tin");
        }
        else
        {
            dt = new DataTable();
            cnn.Open();
            cmd = new SqlCommand("Them_User",cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Fullname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@SysRight", RadioButtonList1.SelectedValue);
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows[0]["errCode"].ToString() == "0")
            {
                Response.Write("Fail");
            }
            else
                Response.Write("Success");
            cnn.Close();
        }
    }
}