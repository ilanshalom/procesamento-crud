using System;
using System.ComponentModel;

namespace namespaceProdutos
{
    public partial class frmProdutos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)   
            {
                popularGrid();
            }
        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            try
            {
                txtMsg.Text = "";
                //...
                //String retorno = banco.inserir(prod);
                //txtMsg.Text = retorno;
                popularGrid(); //atualizamos os dados na GridView
            }
            catch(Exception erro1)
            {
                txtMsg.Text = "Erro tentando inserir um novo produto.";
            }
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            try
            {
                //...
                //...
                popularGrid(); //atualizamos os dados na grade
            }
            catch (Exception ex2)
            {
                txtMsg.Text = "Erro tentando alterar um produto.";
            }
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            try
            {
                //...
                //...
                popularGrid(); //atualizamos os dados na grade
            }
            catch (Exception ex3)
            {
                txtMsg.Text = "Erro tentando eliminar um produto.";
            }
        }
        private void popularGrid()
        {
            try
            {
                Dao banco = new Dao();
                grdProdutos.DataSource = banco.preencherGradeProdutos();
                grdProdutos.DataBind(); //para atualizar os dados da grade
            }
            catch (Exception ex1)
            {
                txtMsg.Text = ex1.Message;
            }
            //Outra possibilidade de solução seria:
            //Dao banco = new Dao();
            //String dados = banco.retornaProdutos(); //que retorna string
            //txtDadosProdutos.Text = dados;
        }

        protected void btnConsultarPrecoMax_Click(object sender, EventArgs e)
        {
            float precoMax = 0.0f;
            try
            {
                //...
                //...
                //para processar os dados e preencher a grade:
                Dao banco = new Dao();
                grdProdutos.DataSource = banco.preencherGridPrecosMenores(precoMax);
                grdProdutos.DataBind(); //para atualizar os dados da grade
            }
            catch (Exception ex1)
            {
                txtMsg.Text = "..." + ex1.Message;
            }
        }

    }    
}