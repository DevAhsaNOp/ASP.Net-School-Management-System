using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditClass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddCls_Click(object sender, EventArgs e)
    {
        Success.Text = "Class Name Updated!";
        Button1.Style.Add("display", "block");
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}