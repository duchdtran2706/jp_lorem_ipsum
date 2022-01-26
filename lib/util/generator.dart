import 'dart:math';

import 'dictionary.dart';

class Generator {
  int _randomInteger(int min, int max) {
    return Random().nextInt(max - min + 1) + min;
  }

  int _pickOne(List<int> array) {
    return array[_randomInteger(0, array.length - 1)];
  }

  String randomWord() {
    final wordType = _pickOne(Dictionary.mixWeighting);
    final types = [Dictionary.kanji, Dictionary.hiragana, Dictionary.katakana];
    final type = types[wordType - 1];
    final length = type['text']!.toList().length - 1;
    final word = type['text']![_randomInteger(0, length)] as String;
    return word;
  }
}
