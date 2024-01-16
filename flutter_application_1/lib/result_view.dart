import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class view extends StatelessWidget {
  const view({super.key, required this.res});

  final double res;
  String getClassification() {
    if (res < 16) {
      return 'Severe thinness';
    } else if (res > 18.5 && res < 25) {
      return 'Normal';
    } else {
      return 'obese Class III';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolors.backcolor,
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            getClassification(),
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: appcolors.whitecolor),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '14.2',
            style: TextStyle(fontSize: 15, color: appcolors.whitecolor),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: appcolors.redcolor,
                      foregroundColor: appcolors.whitecolor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('RECALCULATE')))
        ]),
      ),
    );
  }
}
