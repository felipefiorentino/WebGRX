using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebGRX
{
    public class conexao
    {
        public string conec = "SERVER=localhost; DATABASE=asp; UID=root; PWD=;";
        public MySqlConnection con = null;

        public void AbrirCon()
        {
            try
            {
                con = new MySqlConnection(conec);
                con.Open();
                HttpContext.Current.Response.Write("Conectado com Sucesso");
            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("Erro ao conectar" + ex);
            }
        }

        public void FecharCon()
        {
            try
            {
                con = new MySqlConnection(conec);
                con.Close();
            }
            catch (Exception ex)
            {
                //
            }
        }
    }
}