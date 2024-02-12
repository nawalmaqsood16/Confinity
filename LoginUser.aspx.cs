using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Data;


namespace confinity
{
    public partial class LoginUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-C87NKI3;Initial Catalog=confinity;Integrated Security=True");
        string cs = ConfigurationManager.ConnectionStrings["confinity"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                //Session.Abandon();
                //Session.Remove("username");
                //Session.Remove("password");
                //Response.Redirect("~/book appoitnment.aspx");
            }

        }

        protected void login_Click(object sender, EventArgs e)
        {
            
                con.Open();
                SqlCommand cmd1 = new SqlCommand("LoginUser");
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@email", username.Text);
                cmd1.Parameters.AddWithValue("@password", password.Text);
                cmd1.Parameters.AddWithValue("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd1.Connection = con;
                int count = (int)cmd1.ExecuteNonQuery();
                if (count < 1)
                {

                    Session["user"] = username.Text;
                    Response.Redirect("indexi.aspx");

                }
                else
                {

                    Msg.Text = "Incorrect Email OR Password";
                }
            

        }

        //protected void logout_Click(object sender, EventArgs e)
        //{
        //    username.Clear();
        //    //Response.Redirect("LoginUser.aspx");
        //}
    }

}