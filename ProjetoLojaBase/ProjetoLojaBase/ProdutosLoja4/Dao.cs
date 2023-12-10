using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace namespaceProdutos
{
    public class Dao
    {
        //Esta classe se ocupa das operações a realizar com o BD

        private MySqlConnection conexao = new MySqlConnection(
            "server=localhost; port=3306; user id=root; password=12345; "
            + "database=lojaonline3;");
        private MySqlCommand command;

        public String inserir(Produto prod)
        {
            try
            {
                //...
                //...

                return "...";
            }
            catch (Exception ex1)
            {
                return "Erro na gravação! " + ex1.Message;
            }
            finally
            {
                if (command != null) command.Dispose();
                if (conexao != null) conexao.Close();
            }
        }

        public String alterar(Produto prod)
        {
            try
            {
                //...
                //...
                return "...";
            }
            catch (Exception ex1)
            {
                return "Erro na alteração! " + ex1.Message;
            }
            finally
            {
                if (command != null) command.Dispose();
                if (conexao != null) conexao.Close();
            }
        }

        public String excluir(int codigoprod)
        {
            try
            {
                //...
                //...
                return "...";
            }
            catch (Exception ex1)
            {
                return "Erro na eliminação! " + ex1.Message;
            }
            finally
            {
                if (command != null) command.Dispose();
                if (conexao != null) conexao.Close();
            }
        }
        public DataSet preencherGradeProdutos()
        {
            try
            {
                MySqlDataAdapter adapter = new MySqlDataAdapter();
                adapter.SelectCommand =
                    new MySqlCommand("select * from produtosloja ORDER BY codigoprod", conexao);
                DataSet dataset = new DataSet();
                adapter.Fill(dataset);
                return dataset;
            }
            catch (Exception ex1)
            {
                return null;
            }
        }

        //Outra possibilidade de solução, gerando o HTML da grade.
        //Acrescente CSS para uma formatação adequada.
        public string retornaProdutos()
        { 
            MySqlCommand comando = null;
            MySqlDataReader leitor = null;
            string tabela = "<table><tr><td>Código</td><td>Nome</td><td>Preço</td></tr>"; 
            try
            { 
            conexao.Open();
            String sql = "SELECT codigoprod,nomeprod,precoprod FROM produtosloja ORDER BY codigoprod";
            comando = new MySqlCommand(sql, conexao);
            leitor = comando.ExecuteReader();
            while (leitor.Read())
            {
                tabela += "<tr>";
                int cod = leitor.GetInt32("codigoprod");
                string nom = leitor.GetString("nomeprod");
                float prec = leitor.GetFloat("precoprod");
                tabela += "<td>" + cod + "</td>";
                tabela += "<td>" + nom + "</td>";
                tabela += "<td>" + prec + "</td>";
                tabela += "</tr>";
            }
            tabela += "</table>";
            }
            catch (Exception erroSql)
            {
                tabela = erroSql.Message;
            }
            finally
            {
                if (leitor != null) leitor.Dispose();
                if (comando != null) comando.Dispose();
                if (conexao != null) conexao.Close();
            }
            return tabela;
        }

        public DataSet preencherGridPrecosMenores(float precoMax)
        {
            try
            {
                //...
                //...
                return null; //na verdade deveria retornar um DataSet adequado
            }
            catch (Exception ex1)
            {
                return null;
            }

        }

    }
}