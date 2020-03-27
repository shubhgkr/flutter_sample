import 'package:flutter_sample/helper/tip_calculation.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("Calculating tip on a bill", () {
    double bill = 100;
    int tipPercent = 10;

    double answer = 110; // tipping 10% on $100 makes a total bill of $110

    expect(answer, calcBillWithTip(bill, tipPercent));
  });

  test("Calculating bill shared by many people", () {
    double bill = 100;
    int tipPercent = 20;
    int numberOfPersons = 4;

    double amountWithTip = calcBillWithTip(bill, tipPercent); // tipping 20% on $100 should give $120
    double answer = 30; // splitting final bill $120 among 4 persons should be $30 each.

    expect(answer, calcBillForEachPerson(amountWithTip, numberOfPersons));
  });
}
