using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    private static string PetitionLocation;

    protected void Page_Load(object sender, EventArgs e)
    {
        PetitionLocation = Server.MapPath("/PetitionList.txt");
    }

    [WebMethod]
    public static IEnumerable<Moment> GetMoments()
    {
        List<Moment> moments = new List<Moment>();
       
        using (StreamReader sr = new StreamReader(PetitionLocation))
        {
            while (sr.Peek() > -1)
            {
                object[] currentLine = sr.ReadLine().Split(new char[] { '|' });

                Moment moment = new Moment();
                moment.text = currentLine[4].ToString();
                moment.footerName = string.Format("{0}</br>", currentLine[0].ToString());
                moment.footerJobInfo = string.Format("{0} - {1}", currentLine[2].ToString(), currentLine[3].ToString());

                moments.Add(moment);
            }
        }

        return moments;
    }

    public class Moment
    {
        public string text;
        public string footerName;
        public string footerJobInfo;
    }
}