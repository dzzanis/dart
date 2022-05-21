import '../modelo/cliente.dart';
import '../modelo/item.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';

main() {
  var venda = Venda(
      cliente: Cliente(
        'Diogo',
        '062.686.969-21',
      ),
      itens: <Item>[
        Item(
          10,
          Produto(
            codigo: 1,
            nome: 'borracha',
            desconto: 10,
            precoUnitario: 100,
          ),
        ),
        Item(
          10,
          Produto(
            codigo: 2,
            nome: 'caneta',
            desconto: 10,
            precoUnitario: 100,
          ),
        ),
      ]);

  for (Item i in venda.itens) {
    print("Valor do item ${i.produto.nome}: ${i.preco}");
  }
  print("--------------------------------------------------");
  print('O valor total da venda é de R\$${venda.valorTotal}');
}
