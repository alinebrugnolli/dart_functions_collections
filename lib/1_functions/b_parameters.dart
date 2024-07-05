void main(){
  // Parametros Obrigatórios por default
  print('The sum of 10 + 10 is ${sumIntegers(10, 10)}');

  // Parametros Nomeados
  // Parametros nomeado são nullables por default
  // Parametros nomeados podem ser promovidos para non-null com checagem de null
  print('The sum of 10.2 + 10.2 is ${sumDoubles(number1: 10.2, number2: 10.2)}');  
  print('The sum of 10.2 + 10.2 is ${sumDoubles(number2: 10.2, number1: 10.2)}'); 

  sumDoublesRequired(number1: 5.2, number2: 10.2);
  sumDoublesRequired2(number1: null, number2: 10.1);

  print('Calls with default parameters ${sumDoublesDefault()}');
  print('Calls with default parameters ${sumDoublesDefault(number1: 10, number2: 15.2)}');

  // Parametros Opcional
  sumIntOptional();
  sumIntOptional(1);
  sumIntOptional(1,1);

  normalParametersWithNamed(1, name: 'Rodrigo', age: 37);
  normalParametersWithNamed2(1, 'Rodrigo Rahman', 37);

}

int sumIntegers(int number1, int number2){  
  return number1 + number2;   
}

double sumDoubles({double? number1, double? number2}){  
    if(number1 != null && number2 != null){
      return number1 +number2;
    } else{
      return 0.0;
    }
}

double sumDoublesRequired({required double number1, required double number2}){
  return number1 + number2;   
}

double sumDoublesRequired2({required double? number1, required double number2}){
  number1 ??= 0;
  // if(number1 == null){
  //   number1 = 0;
  // }
  return number1 + number2;   
}

double sumDoublesDefault({double number1 = 0, double number2 = 0}){
  return number1 + number2;   
}

int sumIntOptional([int number1 = 0, int number2 = 0]){
  return number1 + number2;
}

// Parametros simples com parametros nomeados(sempre o último parametro).
void normalParametersWithNamed(int number, {required String name, required int age}){}
// Parametros simples com parametros opcionais(sempre o último parametro).
void normalParametersWithNamed2(int number, [String? name, int? age ]){}
// Parametros opcionais e nomeados sempre por último.
//                                Simples      Simples            Opcional
void normalParametersWithNamed3(int number1, int number2, [String? name, int? age ]){}