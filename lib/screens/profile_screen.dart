import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_style.dart';
import 'package:bookticket/widgets/colum_layout.dart';
import 'package:bookticket/widgets/layout_builder_widgets.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
      children: [
        Gap(AppLayout.getHeight(40)),
        Row(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(86),
              width: AppLayout.getWidth(86),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                 image: const DecorationImage(
                  image: AssetImage(
                      "assets/images/air.PNG"
                  ),
                )

              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Book Tickets', style: Styles.headlineStyle,),
                Gap(AppLayout.getHeight(2)),
                Text('New-Yourk', style:TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                ),),
                Gap(AppLayout.getHeight(8)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                    color: Color(0xFFFEF4F3),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                          color: Color(0xFF526799),
                        ),
                        child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                        color: Colors.white,size: 15,),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      const Text('Premium Status', style: TextStyle(color: Color(0xFF526799),fontWeight: FontWeight.w600),),
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              children:  [
                Text('Edit',
                style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight:FontWeight.w500),
                )
              ],
            )
          ],
        ),
        Gap(AppLayout.getHeight(8)),
        Divider(
          color: Colors.grey.shade300,
        ),
        Gap(AppLayout.getHeight(8)),
        Stack(
          children: [
            Container(
              height: AppLayout.getHeight(90),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
              ),
            ),
           Positioned(
             right: -45,
               top: -40,
               child:  Container(
             padding: EdgeInsets.all(AppLayout.getHeight(30)),
             decoration: BoxDecoration(
               color: Colors.transparent,
                 shape: BoxShape.circle,
                 border: Border.all(width: 18,  color: Color(0xFF264CD2))
             ),
           )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child:Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,size: 27,
                    ),
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('You\'v got a new award',
                        style: Styles.headlineStyle2.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white
                        ),
                      ),
                      Text('You have 95 flights in a year',
                        style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9),fontSize: 16
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Gap(AppLayout.getHeight(25)),
        Text('Accumulated miles', style: Styles.headlineStyle2,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
            color: Styles.bgColor,
            boxShadow:[
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 1,
                spreadRadius: 1
              )
            ]
          ),
          child: Column(
            children: [
              Gap(AppLayout.getHeight(20)),
              Text('192802',
                style: TextStyle(
                  fontSize: 45,
                  color: Styles.textColor, fontWeight: FontWeight.w600
                ),
              ),
              Gap(AppLayout.getHeight(4)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Miles accrued', style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                  Text('23 June 2022', style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                ],
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              Gap(AppLayout.getHeight(4)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, ),
                  AppColumnLayout(firstText: 'Airlines Co', secondText: 'Recieved From', alignment: CrossAxisAlignment.end, )
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, ),
                  AppColumnLayout(firstText: 'McDonal', secondText: 'Recieved From', alignment: CrossAxisAlignment.end, )
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              Divider(
                color: Colors.grey.shade300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(firstText: '52 340', secondText: 'Miles', alignment: CrossAxisAlignment.start, ),
                  AppColumnLayout(firstText: 'Exuma', secondText: 'Recieved From', alignment: CrossAxisAlignment.end, )
                ],
              ),
              Gap(AppLayout.getHeight(8)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text('How to get more miles', style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              )



            ],
          ),
        )
      ],
    ),
    );
  }
}
