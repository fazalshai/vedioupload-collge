using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace vedioupload_collge
{
    public partial class _interface : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int length = FileUpload2.PostedFile.ContentLength;
            int length1 = FileUpload1.PostedFile.ContentLength;
            byte[] imgbyte1 = new byte[length1];
            byte[] imgbyte = new byte[length];
            HttpPostedFile img = FileUpload2.PostedFile;
            HttpPostedFile img1 = FileUpload1.PostedFile;
            img.InputStream.Read(imgbyte, 0, length);
            img1.InputStream.Read(imgbyte1, 0, length);
            string name = TextBox2.Text;
            SqlConnection con = new SqlConnection("database=college; server=FAZAL; user id=sa; password=computer");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into ve(tit,des,lev,pre,ppt,ved) values(@tit,@des,@lev,@pre,@ppt,@ved)", con);
            cmd.Parameters.AddWithValue("@tit",TextBox1.Text);
            cmd.Parameters.AddWithValue("@des", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lev", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pre", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ppt", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@ved", FileUpload2.FileName);
            int count = cmd.ExecuteNonQuery();
            con.Close();
            if (count == 1)
            {
                TextBox2.Text = string.Empty;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage ", "javascript:alert(' record inserted successfully')", true);
            }
        }
    }
}