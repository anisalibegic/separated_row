# SeparatedRow

Flutter package for rendering separated Row children.
This package is also available on [pub](https://pub.dartlang.org/packages/separated_row).

Also, give [separated_column](https://pub.dartlang.org/packages/separated_column) a try!

## Usage

The only difference between `SeparatedRow` and `Row` are `separatorBuilder` and `includeOuterSeparators` properties.

- `separatorBuilder` - Executed every time when there is a need to inject the separator
- `includeOuterSeparators` - Separators are added before the first and after the last element if true

```dart
SeparatedRow(
  children: <Widget>[
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.favorite),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.favorite_border),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.check),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.close),
    ),
  ],
  separatorBuilder: (BuildContext context, int index) {
    return Container(
      width: 1.0,
      height: 15.0,
      color: Colors.grey,
    );
  },
  includeOuterSeparators: false,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
)
```
