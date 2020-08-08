import 'package:flutter/material.dart';
import 'package:dynamic_treeview/dynamic_treeview.dart';
import 'SubCategories.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          height: MediaQuery.of(context).size.height,
          child: DynamicTreeView(
            data: getData(),
            config: Config(
                parentTextStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                parentPaddingEdgeInsets:
                    EdgeInsets.only(left: 16, top: 0, bottom: 0)),
            width: 220.0,
          ),
          color: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => SubCategories()));
              },
              child: Text('장보기 시작'),
            ),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
