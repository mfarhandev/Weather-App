
import 'package:flutter/material.dart';
import 'package:weather_app/utils/text_widget.dart';

import '../utils/color.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    List weekdays = ["TUE","WED","THU","FRI","SAT","SUN"];
    List weathericons = [
      Icon(Icons.sunny,color: Colors.orange,),
      Icon(Icons.cloud, color: Colors.grey,),
      Icon(Icons.water_drop,color: Colors.blue,),
      Icon(Icons.cloud, color: Colors.grey,),
      Icon(Icons.sunny,color: Colors.orange,),
      Icon(Icons.water_drop,color: Colors.blue,),
    ];
    double hot = 26;
    double cold = 18;

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  AppText.heading("Weather Forecast",fontsize: 22),
                  Container(),
                ],
              ),
              SizedBox(height: 20,),
              AppText.subHeading("Next 7 days",color: Colors.blue,fontWeight: FontWeight.bold),
              SizedBox(height: 30,),
              Container(
                width: w,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              AppText.subHeading("Monday" , fontsize: 16),
                              SizedBox(width: 10,),
                              Icon(Icons.sunny,color: Colors.orange,)
                            ],
                          ),
                          Row(
                            children: [
                              AppText.subHeading("32°C" , fontsize: 18),
                              SizedBox(width: 10,),
                              AppText.normal("22°C",color: Colors.grey,),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.subHeading("Wind",),
                              SizedBox(height: 15,),
                              AppText.subHeading("Humidity",),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.normal("10 m/h",color: Colors.grey,),
                              SizedBox(height: 15,),
                              AppText.normal("40%",color: Colors.grey,),
                            ],
                          ),
                          SizedBox(width: 50,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.subHeading("Visibility",),
                              SizedBox(height: 15,),
                              AppText.subHeading("UV",),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.normal("20 km",color: Colors.grey,),
                              SizedBox(height: 15,),
                              AppText.normal("1",color: Colors.grey,),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 800,
                child: ListView.builder(
                    itemCount: weekdays.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.subHeading(weekdays[index],color: Colors.black,fontWeight: FontWeight.bold),
                              Row(
                                children: [
                                  AppText.subHeading( ( cold + index.toDouble()).toString() + "°C",color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 22 + index.toDouble(),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft:Radius.circular(50) ),
                                        ),
                                      ),
                                      Container(
                                        height: 15,
                                        width: 60 - index.toDouble(),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight:Radius.circular(50) ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  AppText.subHeading( ( hot - index.toDouble()).toString() +  "°C",),
                                ],
                              ),
                              weathericons[index],


                            ],
                          ),
                          SizedBox(height: 10,),
                          Divider(),
                          SizedBox(height: 15,),
                        ],
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
