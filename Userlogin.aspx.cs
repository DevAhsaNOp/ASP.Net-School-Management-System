using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        LSid.Text = string.Empty;
        LPass.Text = string.Empty;
    }
}