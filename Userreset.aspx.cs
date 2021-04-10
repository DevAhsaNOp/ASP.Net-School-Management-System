using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userreset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Ebtn_Click(object sender, EventArgs e)
    {
        Eemail.Text = string.Empty;
        Esid.Text = string.Empty;
    }
}