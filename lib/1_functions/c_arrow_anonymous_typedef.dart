void main(){
  //! Funcoes Arrow
  //! Funcoes Anonimas(anonymous)
  //! Typedef

  var name = '';
  var age = 37;
  // var anyFunction = (){}; (foi feito dessa forma na aula)
  // nova maneira sugerida
  //Funcao anonima  
  anyFunction(){
    print('Called the variable function');
    return '2000';
  }  
  print(anyFunction());

  print(sumIntegers(10, 10));

  print('Starting call');
  callFunctionOfParameter((name) {
    if(name.isEmpty) {
      print('Name came empty');
    }else{
      print(name);
    }
  });
  print('Ending call');  
  
}

// 3 partes
// 1 tipo de retorno
// 2 nome
// 3 parametros (normais, nomeados e opcionais)
int sumIntegers(int number1, int number2) => number1 + number2; // Funcao arrow
void sumIntegersVoid(int number1, int number2) => number1 + number2;

void callFunctionOfParameter(Function(String name) functionReceiveName) {
  var calculation = 1 + 1;
  var fullName = 'Rodrigo Rahman';
  functionReceiveName(fullName);
}

void callFunctionOfParameter1(FunctionThatReceivesName functionReceiveName) {
  var calculation = 1 + 1;
  var fullName = 'Rodrigo Rahman';
  functionReceiveName(fullName);
}

void callFunctionOfParameter2(FunctionThatReceivesName functionReceiveName) {
  var calculation = 1 + 1;
  var fullName = 'Rodrigo Rahman';
  functionReceiveName(fullName);
}

void funx(String Function (
  String name,
  String fullName, {
  required String? x,
  required String? x2,
  int? qq
}) name){}

void funx2(FunctionThatReceivesNameComplex name){}

typedef FunctionThatReceivesName = void Function(String name);
typedef FunctionThatReceivesNameComplex = String Function(
  String name,
  String fullName, {
  required String? x,
  required String? x2,
  int? qq
  });


