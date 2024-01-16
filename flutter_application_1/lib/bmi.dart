import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/result_view.dart';

class bmiscreen extends StatefulWidget {
  const bmiscreen({super.key});

  @override
  State<bmiscreen> createState() => _bmiscreenState();
}

class _bmiscreenState extends State<bmiscreen> {
  int age = 18;
  int weight = 60;
  int heigth = 150;
  bool isMale = true;

//  Color getColor(isMale) {
  //   if (isMale) {
  // return appcolors.redcolor;
  //   } else {
  //   return appcolors.countaner;
  // }
  // }

  Color getColor(bool isMale) {
    Color color = (isMale) ? appcolors.redcolor : appcolors.countaner;
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolors.backcolor,
      appBar: AppBar(
        backgroundColor: appcolors.backcolor,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 20, color: appcolors.whitecolor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          //male
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          (isMale) ? appcolors.redcolor : appcolors.countaner,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: appcolors.whitecolor,
                            size: 60,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                                fontSize: 20, color: appcolors.whitecolor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          (isMale) ? appcolors.countaner : appcolors.redcolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: appcolors.whitecolor,
                            size: 60,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                fontSize: 20, color: appcolors.whitecolor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          //heigth
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: appcolors.countaner,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGTH',
                      style:
                          TextStyle(fontSize: 15, color: appcolors.whitecolor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$heigth cm',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: appcolors.whitecolor,
                      ),
                    ),
                    Slider(
                        min: 100,
                        max: 210,
                        thumbColor: appcolors.redcolor,
                        activeColor: appcolors.redcolor,
                        inactiveColor: appcolors.iconcolor,
                        value: heigth.toDouble(),
                        onChanged: (value) {
                          setState(() {});
                          heigth = value.toInt();
                        })
                  ]),
            ),
          ),
          //age and weigth
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: appcolors.countaner,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGTH',
                            style: TextStyle(
                                fontSize: 15, color: appcolors.whitecolor),
                          ),
                          Text(
                            '$weight kg',
                            style: TextStyle(
                                color: appcolors.whitecolor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  style: IconButton.styleFrom(
                                      backgroundColor: appcolors.whitecolor),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: appcolors.iconcolor,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                  style: IconButton.styleFrom(
                                      backgroundColor: appcolors.whitecolor),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: appcolors.iconcolor,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: appcolors.countaner,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                                fontSize: 20, color: appcolors.whitecolor),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                color: appcolors.whitecolor,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  style: IconButton.styleFrom(
                                      backgroundColor: appcolors.whitecolor),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: appcolors.iconcolor,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                  style: IconButton.styleFrom(
                                      backgroundColor: appcolors.whitecolor),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: appcolors.iconcolor,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // btn
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
                    double res = weight / (heigth * 0.1 * heigth * 0.1);
                    print(res);

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => view(
                              res: res,
                            )));
                  },
                  child: Text('CALCULATE')))
        ]),
      ),
    );
  }
}
