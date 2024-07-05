void main() {
  var numbersList = <int?>[];
  numbersList.add(1);
  numbersList.add(2);
  numbersList.add(3);
  numbersList.add(3);
  numbersList.add(null);
  numbersList.add(1);
  numbersList.add(2);
  print(numbersList);

  // Usar set para não ter elementos duplicados na lista
  var numbersSet = <int?>{};
  numbersSet.add(1);
  numbersSet.add(2);
  numbersSet.add(3);
  numbersSet.add(3);
  numbersSet.add(null);
  numbersSet.add(1);
  numbersSet.add(2);
  print(numbersSet);

  // .toSet transforma a lista em set
  print('.toSet');
  print(numbersList.toSet());
  
  print('.forEach');
  numbersSet.forEach(print);

  var numbers1 = {1, 2, 3, 4, 5, 6};
  var numbers2 = {1, 3, 4, 7};

  print('.difference');
  print(numbers1.difference(numbers2));
  print(numbers2.difference(numbers1));

  print('.union');
  print(numbers1.union(numbers2));

  print('.intersection');
  print(numbers1.intersection(numbers2));

  var names1 = {'Rodrigo', 'Luana', 'José'};
  var names2 = {'Rodrigo', 'Joaquim', 'Guilherme'};
  print(names1.intersection(names2));

  // .lookup busca um elemento identico na lista, se não encontra, retorna null.
  print('.lookup');
  print(numbers1.lookup(3));
  print(numbers1.lookup(99));
  print(names1.lookup('Rodrigo'));
  print(names1.lookup('rodrigo')); // letra minúscula, retornou null

  // Para extrair dados no set, usar .elementAt 
  names1.elementAt(0);
  // ou
  names1.toList()[0];
}