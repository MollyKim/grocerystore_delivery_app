import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Detail extends StatelessWidget {
  final dummy1 = [
    '사과',
    '바나나',
    '포도',
  ];
  final dummy2 = {
    '돼지': 10000,
    '소': 20000,
    '닭': 15000,
  };

  final Map data;
  Detail({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${data['title']}"),
      ),
      body: _conditioncheck(),
    );
  }

  Widget _conditioncheck() {
    final list2 = List.generate(dummy2.length, (i) => i).toList();
    final list1 = List.generate(dummy1.length, (i) => i).toList();

    if (data['id'] == 2) {
      return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListBody(
            children: list2.map((e) => Text('$e')).toList(),
          ));
    } else {
      return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListBody(
            children: list1.map((e) => Text('$e')).toList(),
          ));
    }
  }
}
