import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {

  String ttlVal = "";
  String dscVal = "";
  double prcVal = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          // OonChanged runs on every keystroke.
          Text(""),
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Title',
            ),
            onChanged: (String title) {
              setState(() {
                ttlVal = title;
              }); // SetState
            }, // On Changed Function (String Input)
          ), // Text Field
          Text(""),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Input a Description',
            ),
            onChanged: (String description) {
              setState(() {
                dscVal = description;
              }); // SetState
            }, // On Changed Function (String Input)
          ), // Text Field
          Text(""),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Price Input',
            ),
            onChanged: (String price) {
              setState(() {
                prcVal = double.parse(price);
              }); // SetState
            }, // On Changed Function (String Input)
          ), // Text Field

          RaisedButton(
            child: Text("Submit"),
            onPressed: ((){
              final Map<String, dynamic> product = {
                'title': ttlVal,
                'description': dscVal,
                'price': prcVal,
                'image': 'https://picsum.photos/500/300/?image=967'
              };
              widget.addProduct(product);
            }),
          ),
        ], // Children Widget
      ),
    ); // Column
  } // Build Widget
}
