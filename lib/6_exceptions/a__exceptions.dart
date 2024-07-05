void main() {
  var age = '38';
  // String? name;

  try {
    print('***Start');
    var ageParse = int.parse(age);
    // name!.toLowerCase();

    if (ageParse == 38) {
      throw Exception();
    }
    print('***End');
    
  } on FormatException catch (e, s) {
    // print(e);
    print(s); // StackTrace (guarda toda linha de execução programa)
    // print('Error converting age');
  } on TypeError {
    print('Error converting age');
  } on Exception {
    print('Error age == 38');
  } catch (e) {
    print('Error executing program');
  } finally {
    print('finally');
  }
}