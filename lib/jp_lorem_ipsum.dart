library lorem_ipsum;

import 'package:lorem_ipsum_jp/util/generator.dart';

String loremIpsumJP(
    {int paragraphs = 1, int words = 100, bool initWithLorem = false}) {
  if (paragraphs == null || paragraphs < 0) {
    throw new ArgumentError.value(paragraphs, "paragraphs");
  }
  if (words == null || words < 0) {
    throw new ArgumentError.value(words, "words");
  }

  if (paragraphs == 0 || words == 0) {
    return "";
  }

  if (paragraphs > words) {
    paragraphs = words;
  }

  String _lorem = _makeParagraphs(paragraphs, words);
  if (words > 3 && initWithLorem) {
    _lorem = _lorem.replaceAll(_lorem.split(" ")[0], "Lorem");
    _lorem = _lorem.replaceAll(_lorem.split(" ")[1], "ipsum,");
    return _lorem;
  }
  return _lorem;
}

String _makeParagraphs(int paragraphs, int words) {
  int wordLength = words ~/ paragraphs;
  List<String> result = [];

  for (int i = 0; i < paragraphs - 1; i++) {
    result.add(_makeParagraph(wordLength));
  }
  result.add(_makeParagraph(wordLength + (words % paragraphs)));
  return result.join("\n\n");
}

String _makeParagraph(int words) {
    var result = [];
  for (var i = 0; i < words; i++) {
    String nextWord = _makeWord();
    result.add(nextWord);
  }
  return result.join('') + '。';
}

String _makeWord() {
  return Generator().randomWord();
}
