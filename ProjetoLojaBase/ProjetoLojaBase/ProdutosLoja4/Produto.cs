namespace namespaceProdutos
{
    public class Produto
    {
        private int codigoProd;
        private string nomeProd;
        private float precoProd;

        public Produto()
        {
        }

        public Produto(int codigoProd, string nomeProd, float precoProd)
        {
            this.codigoProd = codigoProd;
            this.nomeProd = nomeProd;
            this.precoProd = precoProd;
        }

        public int CodigoProd { get => codigoProd; set => codigoProd = value; }
        public string NomeProd { get => nomeProd; set => nomeProd = value; }
        public float PrecoProd { get => precoProd; set => precoProd = value; }
    }

}