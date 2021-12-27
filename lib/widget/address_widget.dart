import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'address_widget.g.dart';

// run generator from command line with:
// flutter pub pub run build_runner watch --delete-conflicting-outputs
class AddressWidget extends StatefulWidget {
  @override
  AddressWidgetState createState() => AddressWidgetState();
}

class AddressWidgetState extends State<AddressWidget> {
  @override
  Widget build(BuildContext context) {
    print('Rebuild "build" method');
    return Column(
      children: <Widget>[
        const DeepNestedWidget(),
        SizedBox(height: 16.0),
        RaisedButton(
          child: Text('SetState'),
          onPressed: () {
            setState(() {});
          },
        ),
      ],
    );
  }
}

@widget
Widget deepNestedWidget() {
  print('Build deepNestedWidget');
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Maria Meier',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                    ),
                    Text(
                      '+4967173218712872',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Icon(
                      Icons.phone,
                      color: Colors.red[500],
                      size: 32.0,
                    ),
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          Image.asset(
            'images/profile.jpg',
            width: 200.0,
          ),
        ],
      ),
    ],
  );
}
