import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hfavire/constants/assets_const.dart';
import 'package:hfavire/constants/colors_const.dart';
import 'package:hfavire/constants/data_const.dart';
import 'package:hfavire/extensions/number_exten.dart';
import 'package:hfavire/extensions/string_exten.dart';
import 'package:hfavire/widgets/custom_appbar.dart';
import 'package:hfavire/widgets/rich_title.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsConst.pattern))
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: -MediaQuery.of(context).size.width/2.3,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width/3.5,
                    backgroundColor: Colors.white.withOpacity(0.1),
                  ),
                ),
                Positioned(
                  top: -MediaQuery.of(context).size.width/1.5,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width/2,
                    backgroundColor: Colors.white.withOpacity(0.1),
                  ),
                ),
                Column(
                  children: [
                    const CustomAppBar(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(26, 0, 26, 30),
                      child: "ABOUT US".bold(fontSize: 24)
                    )
                  ],
                ),
              ],
            ),
          ),

          16.h(),

          const RichTitle(),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: DataConst.content2.regularCenter(fontSize: 12, color: ColorsConst.textLight),  
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: -30,
                  child: Image.asset(AssetsConst.avatar1, width: MediaQuery.of(context).size.width/3, height: MediaQuery.of(context).size.width/3,)),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Image.asset(AssetsConst.avatar2, width:  MediaQuery.of(context).size.width/3, height: MediaQuery.of(context).size.width/3,))),
                Positioned(
                  right: -10,
                  child: Image.asset(AssetsConst.avatar3, width:  MediaQuery.of(context).size.width/3, height: MediaQuery.of(context).size.width/3,)),
              ],
            ),
          ),

          8.h(),
          
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
            
                Positioned(
                  right: -50,
                  bottom: -50,
                  child: Image.asset(AssetsConst.logo, width: 200, height: 200, color: ColorsConst.primary.withOpacity(0.05),)),
            
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: Row(
                        children: [
                          "Made with love in India".semibold(fontSize: 14, color: ColorsConst.textLight),
                          12.w(),
                          Image.asset(AssetsConst.flag, width: 18, height: 12)
                        ],
                      ),
                    ),
                
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Follow us".bold(fontSize: 16, color: ColorsConst.text),
                          10.h(),
                          Row(
                            children: [
                              ...[AssetsConst.instagram, AssetsConst.twitter, AssetsConst.facebook].map((e) => 
                                Padding(
                                  padding: const EdgeInsets.only(right: 6),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: ColorsConst.text,
                                    child: Image.asset(e, width: 14, height: 14),
                                  )  
                                )
                              )
                
                            ],
                          ),
                          16.h()
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}