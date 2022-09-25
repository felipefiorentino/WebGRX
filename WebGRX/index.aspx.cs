using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebGRX
{
    public partial class index : System.Web.UI.Page
    {
        conexao con = new conexao();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Send_Click(object sender, EventArgs e)
        {
           
            
            if (TextBox1.Text == "")
            {
                lblMensagemErro.Text = "Preencha a Pergunta 4";
                return;
            }
            Salvar();

            
        }

        private void Salvar()
        {
            string sql;
            MySqlCommand cmd;

            con.AbrirCon();

            sql = "INSERT INTO grxtab  (pergunta1, pergunta2, pergunta3, pergunta4) VALUES (@pergunta1, @pergunta2, @pergunta3, @pergunta4)";
            cmd = new MySqlCommand(sql, con.con);
            cmd.Parameters.AddWithValue("@pergunta1", txtpergunta1.Text);
            cmd.Parameters.AddWithValue("@pergunta2", txtpergunta2.Text);
            cmd.Parameters.AddWithValue("@pergunta3", txtpergunta3.Text);
            cmd.Parameters.AddWithValue("@pergunta4", txtpergunta4.Text);

            cmd.ExecuteNonQuery();
            lblMensagemok.Text = "Salvo com Sucesso!";

            con.FecharCon();
            
        }
    }
}