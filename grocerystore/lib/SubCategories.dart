import 'package:flutter/material.dart';
import 'package:dynamic_treeview/dynamic_treeview.dart';
import 'DataModel.dart';
import 'Detail.dart';

class SubCategories extends StatefulWidget {
  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DynamicTreeView(
          data: getData(),
          config: Config(
              parentTextStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              rootId: "1",
              parentPaddingEdgeInsets:
                  EdgeInsets.only(left: 16, top: 0, bottom: 0)),
          onTap: (m) {
            print("onChildTap -> $m");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => Detail(
                          data: m,
                        )));
          },
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}

List<BaseData> getData() {
  return [
    DataModel(
      id: 1,
      name: 'Root',
      parentId: -1,
      extras: {'key': 'extradata1'},
    ),
    DataModel(
      id: 2,
      name: '정육 코너',
      parentId: 1,
      extras: {'key': 'extradata2'},
    ),
    DataModel(
      id: 3,
      name: '돼지',
      parentId: 2,
      extras: {'key': 'extradata3'},
    ),
    DataModel(
      id: 4,
      name: '소',
      parentId: 2,
      extras: {'key': 'extradata4'},
    ),
    DataModel(
      id: 5,
      name: '닭',
      parentId: 2,
      extras: {'key': 'extradata5'},
    ),
    DataModel(
      id: 6,
      name: '식품',
      parentId: 1,
      extras: {'key': 'extradata6'},
    ),
    DataModel(
      id: 7,
      name: '과일',
      parentId: 6,
      extras: {'key': 'extradata7'},
    ),
    DataModel(
      id: 8,
      name: '채소',
      parentId: 6,
      extras: {'key': 'extradata8'},
    ),
    DataModel(
      id: 9,
      name: '쌀/잡곡',
      parentId: 6,
      extras: {'key': 'extradata9'},
    ),
    DataModel(
      id: 10,
      name: '우유/유제품/유아식',
      parentId: 6,
      extras: {'key': 'extradata10'},
    ),
    DataModel(
      id: 11,
      name: '냉장/냉동/즉석 식품',
      parentId: 6,
      extras: {'key': 'extradata11'},
    ),
    DataModel(
      id: 12,
      name: '생수/음료/주류',
      parentId: 6,
      extras: {'key': 'extradata12'},
    ),
  ];
}
