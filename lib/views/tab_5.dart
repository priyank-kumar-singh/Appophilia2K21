import 'package:flutter/material.dart';

class Tab5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNameRow(context, 'Priyank Kumar Singh'),
          SizedBox(
            height: 20.0,
          ),
          _buildNameRow(context, 'Raghav Agrawal'),
        ],
      ),
    );
  }

  Widget _buildNameRow(BuildContext context, String name) {
    return Center(
      child: Text(
        name,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
