class Values {
  String words;
  int digits;

  Values({required this.digits, required this.words});
}

List<Values> myDictionary = [
  Values(digits: 34, words: "thirty-four"),
  Values(digits: 90, words: 'ninety'),
  Values(digits: 91, words: 'ninety-one'),
  Values(digits: 21, words: 'twenty-one'),
  Values(digits: 61, words: 'sixty-one'),
  Values(digits: 9, words: 'nine'),
  Values(digits: 2, words: 'two'),
  Values(digits: 6, words: 'six'),
  Values(digits: 3, words: 'three'),
  Values(digits: 8, words: 'eight'),
  Values(digits: 80, words: 'eighty'),
  Values(digits: 81, words: 'eighty-one'),
  Values(words: 'Ninety-Nine', digits: 99),
  Values(words: 'nine-hundred', digits: 900),
];

List<Values> getSortedDictionary() {
  myDictionary.sort((a, b) => a.digits.compareTo(b.digits));
  return myDictionary;
}
