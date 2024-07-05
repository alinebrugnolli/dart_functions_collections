void main(){
  final calculatedValue = sumIntegers(10, 10);
  print('The sum of two integers is $calculatedValue');
}

int sumIntegers(int number1, int number2){
  print('Running the sum of integers($number1, $number2)');
  return number1 + number2;   
}