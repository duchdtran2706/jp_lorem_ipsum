import 'package:flutter_test/flutter_test.dart';

import 'package:lorem_ipsum_jp/jp_lorem_ipsum.dart';

void main() {
  test('-adds one to input values-', () {
    print(loremIpsumJP(words: 100, paragraphs: 2));
  });
}
