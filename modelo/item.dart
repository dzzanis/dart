import './produto.dart';

class Item {
  Produto produto;
  int quantidade;
  late double _preco;

  Item(this.quantidade, this.produto);

  double get preco {
    if (produto != Null) {
      this._preco = produto.precoComDesconto * quantidade;
    }
    return this._preco;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      this._preco = novoPreco;
    }
  }
}
