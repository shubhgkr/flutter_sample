double calcBillWithTip(double bill, int percent) {
  return bill + (bill * (percent / 100));
}

double calcBillForEachPerson(double value, int persons) {
  return value / persons;
}
