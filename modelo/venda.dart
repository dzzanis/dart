import './cliente.dart';
import './item.dart';

class Venda {
  Cliente cliente;
  List<Item> itens;

  Venda({required this.cliente, this.itens = const []});

  double get valorTotal {
    return itens.map((i) => i.preco).reduce((t, a) => t + a);
  }
}
