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

  String _ttlVal = "";
  String _dscVal = "";
  double _prcVal = 0.0;
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
                _ttlVal = title;
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
                _dscVal = description;
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
                _prcVal = double.parse(price);
              }); // SetState
            }, // On Changed Function (String Input)
          ), // Text Field
            /* Can also do this :)
             *  onPressed: () {
              final product = {
                'title': _ttlVal,
                'description': _dscVal,
                'price': _prcVal
              };
              widget.addProduct(product);
            },
             */
          SizedBox(
            height: 10.0
          ),
          RaisedButton(
            child: Text("Submit"),
            onPressed: ((){
              final Map<String, dynamic> product = {
                'title': _ttlVal,
                'description': _dscVal,
                'price': _prcVal,
                'image': 'https://picsum.photos/500/300/?image=967'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, "/discovery");
            }),
          ),
        ], // Children Widget
      ),
    ); // Column
  } // Build Widget
}
