import 'package:energyone_user/app/modules/station_details/component/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double rating = 3.8;
    double dx = MediaQuery.of(context).size.width;
    double dy = MediaQuery.of(context).size.height;
    List progressRate = [0.43, 0.30,0.2, 0.1, 0.3];

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Text(
            "About",
            style: GoogleFonts.mulish(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "This is Shell Filling Station. Branch located at No. 20 Ijaiye Road, Ikeja, Lagos. We sell the best refined products and cater for over 20, 000 customers each day. We work tirelessly and relentlessly to bring you the best products and services at your convenience. Choose Shell today.",
            style: GoogleFonts.mulish(),
          ),
          SizedBox(
            height: 10,
          ),
           Text(
            "Rating and Reviews",
            style: GoogleFonts.mulish(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Column(
                children: [
                  Text("4.8",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
                  Row(
                    children: [
                      ...List.generate(5, (index) => Icon(Icons.star, size: 13, color: rating>index?Colors.amber:Colors.grey ,))
                    ],
                  ),
                    SizedBox(
                  height: 5,
                ),
                  Text("281,281")
                ],
              ),
              SizedBox(width: dx*0.05,),
              Column(
                children: [
                  ...List.generate(5, (index) => ProgressBar(dx: dx, rate: progressRate[index], index: index+1,))
                ],
              )
            ],
          )
        ],
        

      ),
    );
  }
}
