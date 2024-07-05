void main() {
  // var list = ['Rodrigo'];
  // print(list.hashCode);
  // print(list);
  // function(list);
  // print(list);

  // var name = 'Rodrigo Rahman';
  // print(name);
  // print(name.hashCode);
  // function2(name);
  // print(name);
  // print(name.hashCode);

  var list1 = ['Rodrigo'];
  print(list1);
  add(list1);
  print(list1);  

  var listProducts = ['Prod'];
  print(listProducts);
  var valor = calculateCart(listProducts);
  print(valor);
  print(listProducts);
}

int calculateCart(List<String> products) {
  products.clear();
  return 10;
}

void function2(String name) {
  name += ' Academia do Flutter';
  print(name);
  print(name.hashCode);
}

void function(List<String> names) {
  print(names.hashCode);
  if (names.isNotEmpty) {
    names.clear();
  }
}

List<String> add(List<String> names) {
  var newNames = [...names];
  newNames.add('Rodrigo Rahman');
  print(newNames);
  return newNames;
}