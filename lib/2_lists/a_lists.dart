void main() {
  var numbers = List.generate(10, (index) => index); 
  numbers.forEach(printAcademia); 

  // Expand
  // Array BiDimensional
  var list = [
    [1, 2],
    [3, 4],
  ];

  var newList = list.expand((numbers) => numbers).toList();   
  print(newList);

  // any
  print('.any');
  var searchlist = ['Rodrigo', 'João', 'José'];

  if(searchlist.any((name) => name == 'João')) {
    print('Has João');
  }else {
    print('Does not have João');
  }

  // every
  print('.every');
  var searchlist2 = ['Rodrigo', 'João', 'José'];

  if(searchlist2.every((name) => name.contains('o'))) {
    print('All the names have the letter o');
  }else {
    print('Not all the names have the letter o');
  }

  // .sort
  print('.sort');
  var listForSorting = [99, 22, 10, 9, 0, 765, 1, 2, 3, 100, 300];
  listForSorting.sort();
  print(listForSorting);

  var listNameSorting = ['Rodrigo', 'João', 'André', 'Arthur', 'José'];
  listNameSorting.sort();
  print(listNameSorting);

  var patientList = [
    'Rodrigo Rahman|37',
    'Luana Rahman|35',
    'Guilherme Souza|18',
    'Joaquim Silva|5',
    'Arthur Souza|5',
    'Antonio Silva|50',
    ];

    var newListPatient = [...patientList];

    newListPatient.sort((patient1, patient2) {
      final patientData1 = patient1.split('|');
      final patientData2 = patient2.split('|');

      final patientAge1 = int.parse(patientData1[1]);
      final patientAge2 = int.parse(patientData2[1]);

      if(patientAge1 > patientAge2) {
        return 1;
      } else if(patientAge1 == patientAge2) {
        return 0;
      } else {
        return -1;
      }      
    });
    print(patientList);  
    print(newListPatient); 

    // CompareTo
    print('.sort com compareTo');
    var patientList2 = [
    'Rodrigo Rahman|37',
    'Luana Rahman|35',
    'Guilherme Souza|18',
    'Arthur Souza|5',
    'Joaquim Silva|5',    
    'Antonio Silva|50',
    ];
    patientList2.sort((patient1, patient2) {
      final patientData1 = patient1.split('|');
      final patientData2 = patient2.split('|');

      final patientAge1 = int.parse(patientData1[1]);
      final patientAge2 = int.parse(patientData2[1]);

      return patientAge1.compareTo(patientAge2);
    });
    print(patientList2);

    // Pacientes por funcao
    var patientList3 = [
    'Rodrigo Rahman|37',
    'Luana Rahman|35',
    'Guilherme Souza|18',
    'Arthur Souza|5',
    'Joaquim Silva|5',    
    'Antonio Silva|50',
    ];
    print('Antes');
    print(patientList3);
    anyFunction(patientList3);
    print('Depois');
    print(patientList3);

}
void printAcademia(int valor){
  print(valor);
}


void anyFunction(List<String> patients) {
  final localPatient = [...patients];

  localPatient.sort((patient1, patient2) {
      final patientData1 = patient1.split('|');
      final patientData2 = patient2.split('|');

      final patientAge1 = int.parse(patientData1[1]);
      final patientAge2 = int.parse(patientData2[1]);

      return patientAge1.compareTo(patientAge2);
    });
    print('List anyFunction - localPatient'); 
    print(localPatient); 
}

