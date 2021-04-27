# SeparatedRow

Flutter package for rendering separated Row children.
This package is also available on [pub](https://pub.dartlang.org/packages/separated_row).

Also, give [separated_column](https://pub.dartlang.org/packages/separated_column) a try!

## Usage

The only difference between `SeparatedRow` and `Row` are `separatorBuilder` and `includeOuterSeparators` properties.

- `separatorBuilder` - Executed every time when there is a need to inject the separator
- `includeOuterSeparators` - Separators are added before the first and after the last element if true

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
    includeOuterSeparators: true,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    separatorBuilder: (BuildContext context, int index) => VerticalDivider(),
  )
)
```
is an equivalent of:

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
