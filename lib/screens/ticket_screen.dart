import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/screens/ticket_view2.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_style.dart';
import 'package:bookticket/widgets/colum_layout.dart';
import 'package:bookticket/widgets/layout_builder_widgets.dart';
import 'package:bookticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  // final Map<String, dynamic> ticket;
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
               Text('Tickets', style: Styles.headlineStyle,),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Upcoming',secondTab: 'Previous',),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView2(ticket: ticketList[0],isColor: true,),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:   const [
                    AppColumnLayout(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start),
                        AppColumnLayout(
                            firstText: '5221 364869',
                            secondText: 'passport',
                            alignment: CrossAxisAlignment.end)


                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(section: 15,isColor: false,width: 5,)
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:   [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('00044 6565 33224', style: Styles.headlineStyle3,),
                            Gap(AppLayout.getHeight(5)),
                            Text('Numbers of E-tickets', style: Styles.headlineStyle4,),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('B2SG28', style: Styles.headlineStyle3,),
                            Gap(AppLayout.getHeight(5)),
                            Text('Booking Code', style: Styles.headlineStyle4,),
                          ],
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(section: 15,isColor: false,width: 5,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/visa.PNG", height: 50, width: 35,),
                                    Text('***2462',style: Styles.headlineStyle3,)
                                  ],
                                ),
                                Text('Payment method', style: Styles.headlineStyle4,)
                              ],
                            ),
                            const AppColumnLayout(
                                firstText: '\$249.99',
                                secondText: 'Price',
                                alignment: CrossAxisAlignment.end),

                          ],
                        )

                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
