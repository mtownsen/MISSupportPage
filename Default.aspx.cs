using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string FullName = name.Value;
            string GradYear = year.Value;
            string Industry = industry.Value;
            string Title = title.Value;
            string Note = note.Value;

            File.AppendAllText(Server.MapPath("/PetitionList.txt"), string.Format("{0}|{1}|{2}|{3}|{4}", FullName, GradYear, Industry, Title, Note) + Environment.NewLine);
        }
    }
}