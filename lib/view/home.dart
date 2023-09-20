import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: MyMasonryGrid(),
    );
  }
}

//ini comment
class MyMasonryGrid extends StatefulWidget {
  @override
  _MyMasonryGridState createState() => _MyMasonryGridState();
}

class _MyMasonryGridState extends State<MyMasonryGrid> {
  List<bool> isExpandedList = List.generate(10, (index) => false);

  List<String> namaHewan = [
    'Singa',
    'Gajah',
    'Jerapah',
    'Kucing',
    'Anjing',
    'Burung',
    'Kanguru',
    'Kuda',
    'Panda',
    'Harimau'
  ];

  void toggleSize(int index) {
    setState(() {
      isExpandedList[index] = !isExpandedList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                toggleSize(index);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: isExpandedList[index]
                    ? MediaQuery.of(context).size.width
                    : 100.0,
                height: isExpandedList[index] ? 200.0 : 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.circular(isExpandedList[index] ? 20.0 : 20.0),
                    topRight:
                        Radius.circular(isExpandedList[index] ? 20.0 : 20.0),
                    bottomLeft:
                        Radius.circular(isExpandedList[index] ? 20.0 : 20.0),
                    bottomRight:
                        Radius.circular(isExpandedList[index] ? 20.0 : 20.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    namaHewan[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
          staggeredTileBuilder: (int index) {
            return StaggeredTile.count(
                isExpandedList[index] ? 2 : 1, isExpandedList[index] ? 2 : 1);
          },
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
      ),
    );
  }
}
