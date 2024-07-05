void main() {  
  
  final peopleList = [
    'Rodrigo Rahman|35|Male',
    'Jose|56|Male',
    'Joaquim|84|Male',
    'Rodrigo Rahman|35|Male',
    'Maria|88|Female',
    'Helena|24|Female',
    'Leonardo|5|Male',
    'Laura Maria|29|Female',
    'Joaquim|72|Male',
    'Helena|24|Female',
    'Guilherme|15|Male',
    'Manuela|85|Female',
    'Leonardo|5|Male',
    'Helena|24|Female',
    'Laura|29|Female',
  ];

  //! 1
  print('1 - Remove the duplicate patients and present the new list.');
  var peopleListNew = [...peopleList.toSet()];
  peopleListNew.forEach(print);
  print('');

  //! 2
  print('2 - Show me the number of people by gender (Male and Female) and then present their names.');
  var peopleGenderList = [...peopleList.toSet()];
  var people = ' ';
  final maleGender = [];
  final femaleGender = [];

  final maleCount = peopleGenderList.where((people) {
    var peopleData = people.split('|');
    return peopleData[2] == 'Male';
  }).length;

  final femaleCount = peopleGenderList.where((people) {
    var peopleData = people.split('|');
    return peopleData[2] == 'Female';
  }).length; 

  for (people in peopleGenderList) {
    var peopleData = people.split('|');
    var name = peopleData[0];
    var gender = peopleData[2];
    if(gender == 'Male'){
      maleGender.add('Name: $name');      
    }
    if(gender == 'Female'){
      femaleGender.add('Name: $name');      
    }           
  }   

  print('Male Gender:');
  print('Quantity: $maleCount');
  maleGender.forEach(print);  
  print('');
  print('Female Gender:');
  print('Quantity: $femaleCount');
  femaleGender.forEach(print);
  print('');

  //! 3
  print('3 - Filter and keep the list only with people over 18 years old and present these people by name.');

  var peopleListAge = [...peopleList.toSet()];  

  for (people in peopleListAge) {
    var peopleData = people.split('|');
    var name = peopleData[0];
    var age = int.tryParse(peopleData[1]) ?? 0;
    if(age > 18) {
      print(name);
    }               
  }
  print('');

   //! 4
  print('4 - Find the oldest person and present their name.');

  var olderPerson = [...peopleList.toSet()]; 
  
  olderPerson.sort((person1, person2) {
      final personData1 = person1.split('|');
      final personData2 = person2.split('|');

      final personAge1 = int.parse(personData1[1]);
      final personAge2 = int.parse(personData2[1]);

      return personAge2.compareTo(personAge1);      
    });
    print(olderPerson.first); 
    
}