using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspNET :  System.Web.UI.Page
{
    public String r = "";
    public String g = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        for(int i = 1; i <= 10; i++){
            r = r+i;
            r += "</br>";

        }
        g = "<table border='1'>";
        for (int i = 1; i <= 10; i++){
            g += "<tr>";
            for(int j = 1; j <= 10; j++){
                g += "<td>" + (i * j) + "</td>";
            }
            g += "</tr>";
        }
        g += "</table>";
    }
}
