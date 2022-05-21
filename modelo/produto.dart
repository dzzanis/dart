class Produto {
  int codigo;
  String nome;
  double precoUnitario;
  double desconto;

  Produto({
    required this.codigo,
    required this.nome,
    required this.precoUnitario,
    this.desconto = 0,
  });

  double get precoComDesconto {
    return ((1 - (desconto / 100)) * precoUnitario);
  }
}
