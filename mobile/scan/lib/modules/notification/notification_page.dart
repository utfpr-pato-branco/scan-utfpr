import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scan/shared/widgets/button.dart';

import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_text_styles.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  DateTime? _chosenDateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: AppTextStyles.normalRegular,
                text: "Notificar a ",
                children: [
                  TextSpan(text: "UTFPR", style: AppTextStyles.normalBold),
                ],
              ),
            ),
          ),
          Text(
            "Qual a data do exame/diagnóstico?",
            style: AppTextStyles.normalRegular,
          ),
          
          Container(
            height: 200,
            child: CupertinoDatePicker(

              use24hFormat: true,

              initialDateTime: DateTime.now(),
              onDateTimeChanged: (val) {
                setState(
                  () {
                    _chosenDateTime = val;
                  },
                );
              },
            ),
          ),
          Button(
            title: "Confirmar data do exame",
            onTap: () {
              Navigator.pushNamed(context, "block");
            },
          ),
        ],
      ),
    );
  }
}
