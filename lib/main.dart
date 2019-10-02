import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart'
    '';
import 'text.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TreeText());
  }
}

class TreeText extends StatelessWidget {
  final tree = TextTree();
  final controller = TextEditingController();

  static String hintText = "Enter ${'Tree'} to spawn a tree";
  final decoration = InputDecoration(
      hintText: hintText.toString(),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ));

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: size.width * 0.9,
                  child: TextField(
                    decoration: decoration,
                    controller: controller,
                    onChanged: (text) {
                      doOnChanged();
                    },
                  ),
                )
              ],
            ),
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Observer(builder: (_) {
                  return Container(
                    child: Text(
                      tree.text,
                      style: TextStyle(color: Colors.white),
                    ),
                    color: tree.color,
                    height: size.width * 0.2,
                    width: size.width * 0.2,
                  );
                })
              ],
            ),
            Observer(
              builder: (_) {
                return Visibility(
                  visible: tree.visible,
                  child: Container(
                    child: Image.network(
                        "https://media.istockphoto.com/vectors/tree-background-vector-id518399734?k=6&m=518399734&s=612x612&w=0&h=qxXFy440iXG-CXB9jlC-TyWPKU0NRWLa3cGYu_-ukQI="),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void doOnChanged() {
    tree.lenght = controller.text.length;
    tree.controllerText = controller.text;
    tree.changeColor();
    tree.showImg();
  }
}
