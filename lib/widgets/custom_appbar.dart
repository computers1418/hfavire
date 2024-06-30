import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hfavire/constants/assets_const.dart';
import 'package:hfavire/extensions/context_exten.dart';
import 'package:hfavire/extensions/number_exten.dart';
import 'package:hfavire/extensions/string_exten.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(AssetsConst.logo, width: 35, height: 35),
          16.w(),
          SizedBox(
            width: 100,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 15,
                  child: Image.asset(AssetsConst.spark, width: 12, height: 12),
                ),
                "HFAVIRE\nIAUIV RLUA".black(fontSize: 16)
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                "Location".medium(fontSize: 6, color: Colors.white.withOpacity(0.7)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    "DL".bold(fontSize: 12),
                    const Icon(Icons.arrow_drop_down, color: Colors.white, size: 11)
                  ],
                )
              ],
            ),
          ),
          16.w(),
          InkWell(
            onTap: ()=>context.back(),
            child: Container(
              width: 44, height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white.withOpacity(0.1),
                border: Border.all(
                  color: Colors.white.withOpacity(0.05),
                )
              ),
              alignment: Alignment.center,
              child: Image.asset(AssetsConst.arrowBack, width: 20, height: 20),
            ),
          )
        ],
      ),
    );
  }
}