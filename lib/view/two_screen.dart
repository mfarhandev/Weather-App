import 'package:flutter/material.dart';

import '../utils/text_widget.dart';

class TwoScreen extends StatefulWidget {
  const TwoScreen({super.key});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
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
              Row(
                children: [
                  Container(
                    height: 38,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_upward,color: Colors.grey),
                          SizedBox(width: 10,),
                          AppText.normal("Poway, California",color: Colors.grey,fontWeight: FontWeight.w700),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      AppText.heading("33°C",fontsize: 45),
                      SizedBox(height: 10,),
                      Icon(Icons.sunny ,size: 45,color: Colors.orange,)
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Divider(),
              Container(
                height: 100,
                width: w,
                color: Colors.white,
              ),
              SizedBox(height: 20,),
              Divider(),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 4,
                        color: Colors.grey.shade300,
                      ),
                      Container(
                        height: 40,
                        width: 4,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.subHeading("Chance of rain",),
                      AppText.heading("45%",),
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 4,
                        color: Colors.grey.shade300,
                      ),
                      Container(
                        height: 40,
                        width: 4,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.subHeading("Rain feel",),
                      AppText.heading("38°",),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Divider(),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 4,
                        color: Colors.grey.shade300,
                      ),
                      Container(
                        height: 40,
                        width: 4,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.subHeading("Wind",),
                      AppText.heading("18 km/h",),
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 4,
                        color: Colors.grey.shade300,
                      ),
                      Container(
                        height: 40,
                        width: 4,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.subHeading("Humidty",),
                      AppText.heading("65%",),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
