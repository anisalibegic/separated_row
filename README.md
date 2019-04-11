# SeparatedRow

Flutter package for rendering separated Row children.

## Usage

The only difference between `SeparatedRow` and `Row` is the `separatorBuilder` property.

```dart
SeparatedRow(
  children: <Widget>[
    ListTile(
      title: Text("Item 1"),
    ),
    ListTile(
      title: Text("Item 2"),
    ),
    ListTile(
      title: Text("Item 3"),
    ),
    ListTile(
      title: Text("Item 4"),
    ),
  ],
  separatorBuilder: (BuildContext context, int index) {
    return Divider();
  },
)
```