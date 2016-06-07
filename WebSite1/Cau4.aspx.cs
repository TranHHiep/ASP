using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class Cau4 : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["chuoiketnoi"].ToString());
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource=loadrepeat();
        Repeater1.DataBind();
    }

    protected DataTable loadrepeat()
    {
     
        cnn.Open();
        cmd = new SqlCommand("proc_selectCat", cnn);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        cnn.Close();
        return dt;
       
    }
    
}