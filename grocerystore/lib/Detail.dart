import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Detail extends StatelessWidget {
  final dummy1 = {
    '사과': 5000,
    '바나나': 3000,
    '포도': 10000,
  };
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

//   @override
//   Widget build(BuildContext context) {
//     StreamBuilder(
//         stream: Firestore.instance.collection('grocery store').snapshots(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return CircularProgressIndicator();
//           }
//           final documents = snapshot.data.documents;
//           return Expanded(
//             child: ListView(
//               children: documents.map((doc)=>menu(doc)).toList(),
//             ),
//           );
//         });

//     return Scaffold(
//         appBar: AppBar(
//           title: Text("${data['title']}"),
//         ),
//         body: ListTile());
//   }

//   void menu(String documentID) {
//     Firestore.instance
//         .collection("stuff")
//         .document(documentID)
//         .get()
//         .then((DocumentSnapshot doc) {
//       doc.data["fruit"];
//     });
//   }
// }

//
//   @override
//   Widget build(BuildContext context) {
//     var scaffold = Scaffold(
//         appBar: AppBar(),
//         backgroundColor: Colors.white,
//         body: Column(
//           children: <Widget>[
//             _buildtop(),
//             _buildlist(),
//           ],
//         ));
//     return scaffold;
//   }

//   Widget _buildtop() {
//     StreamBuilder<QuerySnapshot>(
//         stream: Firestore.instance.collection('grocery store').snapshots(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return CircularProgressIndicator();
//           }
//           final documents = snapshot.data.documents;
//           return Expanded(
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: documents.map((doc) => _bildbutton(doc)).toList(),
//             ),
//           );
//         });
//   }

//   Widget _bildbutton(DocumentSnapshot doc) {
//     final menu = doc['name'];
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         Container(
//           child: FlatButton(
//             color: Colors.white,
//             textColor: Colors.black,
//             padding: EdgeInsets.all(8.0),
//             onPressed: () {},
//             child: Text(
//               {doc['menu']},
//               style: TextStyle(fontSize: 20.0),
//             ),
//           ),
//         ),
//         Container(
//           child: FlatButton(
//             color: Colors.white,
//             textColor: Colors.black,
//             padding: EdgeInsets.all(8.0),
//             onPressed: () {},
//             child: Text(
//               "닭고기",
//               style: TextStyle(fontSize: 20.0),
//             ),
//           ),
//         ),
//         Container(
//           child: FlatButton(
//             color: Colors.white,
//             textColor: Colors.black,
//             padding: EdgeInsets.all(8.0),
//             onPressed: () {},
//             child: Text(
//               "소고기",
//               style: TextStyle(fontSize: 20.0),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildlist() {
//     return Text('sdd');
//   }
// }
