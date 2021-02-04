import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Row and Col1'),
      ),
      body: Center(
        child: _buildImageColumn(),
      ),
    ));
  }

  Widget _buildImageColumn() => Container(
        decoration: BoxDecoration(color: Colors.black26),
        child: Column(
          children: [_buildImageRow(1), _buildImageRow(3)],
        ),
      );

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.black38),
              borderRadius: const BorderRadius.all(const Radius.circular(8))),
          margin: const EdgeInsets.all(4),
          child: Image.asset('assets/images/pic$imageIndex.jpg'),
        ),
      );

  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1)
        ],
      );
}

// Widget buildRow() => Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Image.asset('assets/images/pic1.jpg'),
//         Image.asset('assets/images/pic2.jpg'),
//         Image.asset('assets/images/pic3.jpg'),
//       ],
//     );
