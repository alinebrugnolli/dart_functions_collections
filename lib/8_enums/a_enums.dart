void main() {
  // const color = 'red';
  var color = Color.red;

  if (color == Color.red) {}

  // Transformando a string azul em um enum Colors.blue.
  // Antes da versão 2.15
  var blue = 'blue';
  var colorBlue = Color.values.where((color) => color.toString() == 'Color.$blue');
  print(colorBlue);
  // *****************

  // Após a versão 2.15
  print(Color.blue.name);
  var colorBlue215 = Color.values.byName(blue);
  print(colorBlue215);
  
  // Mapa de chave e valor, onde a chave é o indice do enum, e o valor é o enum.
  print('****Example enum map, key as index:');
  var colorsMap = Color.values.asMap();
  print(colorsMap);

  // Mapa de chave e valor, onde a chave é o nome do atributo, e o valor é o enum.
  print('****Example enum map, key as name:');
  var colorsNameMap = Color.values.asNameMap();
  print(colorsNameMap);

  // Mapa de chave e valor, buscando pela chave e não pelo byName.
  print('****Using the map and not byName:');
  var colorsBlueForMap = colorsNameMap[blue];
  print(colorsBlueForMap);

  // Colors.values.byName('white');
  // Pelo map, quando não existe o valor ele retorna null.
  print('****The value white does not exist in enum: null');
  var colorWhite= colorsNameMap['white'];
  print(colorWhite);
}

enum Color {
  blue,
  red,
  orange,
  green,
  black,
}