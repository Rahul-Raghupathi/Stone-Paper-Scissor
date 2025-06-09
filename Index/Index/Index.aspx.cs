using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Index
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Session["userwin"] = 0;
                Session["computerwin"] = 0;
            }

        }
        protected void Play_Game(object sender, EventArgs e)
        {
            string user_choice = ((System.Web.UI.WebControls.ImageButton)sender).CommandArgument;
            string[] choices = { "ROCK", "PAPER", "SCISSOR" };
            Random rnd = new Random();

            string computer_choice = choices[rnd.Next(choices.Length)];

            Label1.Text = $"You Choose : <b>{user_choice}</b>";
            Label2.Text = $"Computer Choose : <b>{computer_choice}</b>";

            string result = Get_Result(user_choice, computer_choice);

            if(result=="Win")
            {
                Session["userwin"] = (int)Session["userwin"] + 1;
                Button1.Visible = true;
                Button1.Text = "Win";
                Button1.ForeColor = System.Drawing.Color.White;
                Button1.BackColor = System.Drawing.Color.Green;
            }
            else if(result=="Lose")
            {
                Session["computerwin"] = (int)Session["computerwin"] + 1;
                Button1.Visible = true;
                Button1.Text = "Lose";
                Button1.ForeColor = System.Drawing.Color.White;
                Button1.BackColor = System.Drawing.Color.Red;
            }
            else
            {
                Button1.Visible = true;
                Button1.Text = "it's a Tie";
                Button1.ForeColor = System.Drawing.Color.White;
                Button1.BackColor = System.Drawing.Color.Orange;
            }

            Label3.Text= $"User Win : <b>{Session["userwin"]}</b>";
            Label4.Text = $"Computer Win : <b>{Session["computerwin"]}</b>";
        }

        protected string Get_Result(string user, string computer)
        {
            if(user == computer)
            {
                return "Tie";
            }
            else if(
                (user=="ROCK" && computer=="SCISSOR") ||
                (user =="PAPER" && computer=="ROCK") ||
                (user == "SCISSOR" && computer == "PAPER"))
            {
                return "Win";
            }
            else
            {
                return "Lose";
            }
        }
    }
}