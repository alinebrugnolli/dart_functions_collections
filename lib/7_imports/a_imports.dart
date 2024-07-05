import 'sums/sum.dart' as sum;
import 'sums/sum_new.dart' as sum_new;

void main() {
  var totalDoubles = sum.sumDoubles(10.1, 5.1);
  var totalIntergers = sum_new.sumIntergers(10, 5);

  print('Total of doubles: $totalDoubles');
  print('Total of intergers: $totalIntergers');
}