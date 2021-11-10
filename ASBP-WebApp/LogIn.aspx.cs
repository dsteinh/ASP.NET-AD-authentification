using System;
using System.Collections.Generic;
using System.DirectoryServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASBP_WebApp
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
            listBox.Visible = false;
            Label3.Visible = false;
        }
        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            if (ActiveDirectoryAuthenticate())
            {
                listBox.Visible = true;
                Label3.Visible = true;

            }
            else
            {       
                lblError.Visible = true;
                listBox.Items.Clear();
                listBox.Visible = false;
                Label3.Visible = false;

            }

        }
     
        //NOTE: This can be made static with no modifications
        public bool ActiveDirectoryAuthenticate()
        {
            DirectoryEntry entry = new DirectoryEntry("LDAP://192.168.241.128", txtUserName.Text, txtPassword.Text);

            DirectorySearcher searcher = new DirectorySearcher(entry);


            searcher.Filter = "(&(objectCategory=User)(objectClass=person))";

            try
            {
                SearchResult result = searcher.FindOne();
                PrintAllUsers(searcher);
                return true;
            }
            catch
            {

                return false;
            }

        }

        private void PrintAllUsers(DirectorySearcher searcher)
        {
           
            SearchResultCollection resultCollection = searcher.FindAll();

            foreach (SearchResult user in resultCollection)
            {
                
                listBox.Items.Add(user.Properties["name"][0].ToString());
            }
        }
    }
}