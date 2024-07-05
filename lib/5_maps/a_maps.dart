void main() {
  // Mapa é uma representação de Chave:Valor
  //                key    value
  final patient = <String, String>{
    'name': 'Rodrigo Rahman',
    'course': 'Academia do Flutter',
  };

  //! 3 Estruturas para o nullSafety
  // 1 - O mapa pode ser nulo mas se for criado deve conter: 
  // a chave e o valor não nulos.
  Map<String, String>? patientNullSafety = null;

  // 2 - O mapa e o valor não podem ser nulos, mas a chave pode ser nula.
  var patientNullSafety2 = <String?, String>{
    null: 'Rodrigo',
  };

  // 3 - O mapa e a chave não podem ser nulos, mas o valor pode ser nulo.
  var patientNullSafety3 = <String, String?>{
    'name': null,
  };

  var products = <String, String>{};
  // Só será adicionado se a chave não existir
  products.putIfAbsent('name', () => 'Beer');  
  print(products);
  

  products.update('name', (value) => 'Soft Drink');
  print(products);
  products.update('price', (value) => '10', ifAbsent: () => '10');

  // Recuperando o valor:
  print('Products ${products['name']}');
  print('Price ${products['price']}');

  // Quando utilizado em MAP, o .forEach dá a chave e o valor.
  products.forEach((key, value) {
    print('Key: $key: $value');
  });

  // Fazer algum processo asyncrono dentro dele.
  print('***for in / asyncrono');
  for (var entry in products.entries) {    
    print('Key: ${entry.key}: ${entry.value}');
  }
  
  // For in utilizado para varrer todas as chaves existente no mapa.
  print('***for in / keys');
  for (var key in products.keys) {
    print('Key: $key');
  }
  // For in utilizado para varrer todas os valores existente no mapa.
  print('***for in / value');
  for (var value in products.values) {
    print('Key: $value');
  }
  
  
  var newMapProducts = products.map((key, value) {
    return MapEntry('${key}_new', value.toUpperCase());
  });
  print(newMapProducts);

  var map = <String, Object>{
    'name': 'Rodrigo Rahman',
    'courses': [
      {
        'name': 'Academia do Flutter',
        'description': 'Best Flutter course in Brazil!!!'
      },
      {
        'name': 'Arquiteto Flutter',
        'description': 'Best Flutter course in Brazil!!!'
      },
    ]
  };
  print(map['courses']);
}