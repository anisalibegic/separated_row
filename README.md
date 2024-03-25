# SeparatedRow [![pub package](https://img.shields.io/pub/v/separated_row.svg?label=separated_row&color=blue)](https://pub.dartlang.org/packages/separated_row)

Flutter package for rendering separated Row children.

Also, give [![pub package](https://img.shields.io/pub/v/separated_column.svg?label=separated_column&color=blue)](https://pub.dartlang.org/packages/separated_column) a try!

![example.gif](https://raw.githubusercontent.com/anisalibegic/separated_row/master/screenshots/example.gif)

## Usage

The only difference between `SeparatedRow` and `Row` are `separatorBuilder` and `includeOuterSeparators` properties.

- `separatorBuilder` - Executed every time when there is a need to inject the separator
- `includeOuterSeparators` - Separators are added before the first and after the last element if true


## Comparison

<table>
<tr>
<th>Before</th>
<th>After</th>
</tr>
<tr>
<td valign="top">
  
```dart
IntrinsicHeight(
  child: Row(
    children:[
      const VerticalDivider(),
      Text("Item 1"),
      const VerticalDivider(),
      Text("Item 2"),
      const VerticalDivider(),
      Text("Item 3"),
      const VerticalDivider(),
      Text("Item 4"),
      const VerticalDivider(),
      Text("Item 5"),
      const VerticalDivider(),
      Text("Item 6"),
      const VerticalDivider(),
      Text("Item 7"),
      const VerticalDivider(),
      Text("Item 8"),
      const VerticalDivider(),
      Text("Item 9"),
      const VerticalDivider(),
      Text("Item 10"),
      const VerticalDivider(),
    ],
  )
)
```
</td>
<td valign="top">
  
```dart
IntrinsicHeight(
  child: SeparatedRow(
    children: [
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
    separatorBuilder: (BuildContext context, int index) => const VerticalDivider(),
  )
)
```
</td>
</tr>
</table>
