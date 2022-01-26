# lorem_ipsum [![pub package](https://img.shields.io/pub/v/lorem_ipsum.svg)](https://pub.dev/packages/lorem_ipsum)

Lorem Ipsum, it is a package to generate random text easily, quickly and dynamically.

## Installation

You just need to add `lorem_ipsum_jp` as a [dependency in your pubspec.yaml file](https://flutter.io/using-packages/).

```yaml
dependencies:
  lorem_ipsum_jp: any
```

## Usage

Import the package:

```dart
import 'package:lorem_ipsum/lorem_ipsum_jp.dart';
```

Call the `lorem_ipsum_jp` function.

```dart
/**
 * Default values
 * @param int paragraphs {1}
 * @param int words {100}
 * @param bool initWithLorem {false}
*/
String text = loremIpsumJP(words: 60);
print(text);
```
> 御あんゆ留遊よ雲メ氏ね夜り舳都さろとす目な氏は派ほッほみ個雲離るろ魔や派瀬目んす他にみゆ舳御け目樹二か阿さ模鵜え舳コ無鵜。


```dart
String text = loremIpsumJP(words: 60, paragraphs: 3, initWithLorem: true);
print(text);
```

>根た擢ニぬ目け個課のけ露らオ津区キむみ等。
>
>津都他御こよ譜おハゆゆ差模津列やのりも日。
>
>あ目や尾野日け知ひろャえへル舳露か氏差区。