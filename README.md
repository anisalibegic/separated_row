# SeparatedRow [![pub package](https://img.shields.io/pub/v/separated_row.svg?label=separated_row&color=blue)](https://pub.dartlang.org/packages/separated_row)

Flutter package for rendering separated Row children.

Also, give [![pub package](https://img.shields.io/pub/v/separated_column.svg?label=separated_column&color=blue)](https://pub.dartlang.org/packages/separated_column) a try!

![example.gif](https://raw.githubusercontent.com/anisalibegic/separated_row/master/screenshots/example.gif)

## Usage

The only difference between `SeparatedRow` and `Row` are `separatorBuilder` and `includeOuterSeparators` properties.

- `separatorBuilder` - Executed every time when there is a need to inject the separator
- `outerSeparatorMode` - Separators can be added before the first element, after the last element, or both

```dart
IntrinsicHeight(
  child: SeparatedRow(
    children: <Widget>[
      Text("Item 1"),
      Text("Item 2"),
      Text("Item 3"),
      Text("Item 4"),
      Text("Item 5"),
      Text("Item 6"),
      Text("Item 7"),
      Text("Item 8"),
      Text("Item 9"),
      Text("Item 10"),
    ],
    outerSeparatorMode: OuterSeparatorMode.both,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    separatorBuilder: (BuildContext context, int index) => VerticalDivider(),
  )
)
```
Which is an equivalent of:

```dart
IntrinsicHeight(
  child: Row(
    children: <Widget>[
      VerticalDivider(),
      Text("Item 1"),
      VerticalDivider(),
      Text("Item 2"),
      VerticalDivider(),
      Text("Item 3"),
      VerticalDivider(),
      Text("Item 4"),
      VerticalDivider(),
      Text("Item 5"),
      VerticalDivider(),
      Text("Item 6"),
      VerticalDivider(),
      Text("Item 7"),
      VerticalDivider(),
      Text("Item 8"),
      VerticalDivider(),
      Text("Item 9"),
      VerticalDivider(),
      Text("Item 10"),
      VerticalDivider(),
    ],
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  )
)
```
