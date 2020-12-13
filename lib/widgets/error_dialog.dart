import 'package:flutter/material.dart';
import 'package:spa_coding_exercise/values/app_errors.dart';
import 'package:spa_coding_exercise/values/app_theme.dart';

void showErrorDialog(AppError error, BuildContext context) async {
  showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Text(error.getString(context)),
        actions: <Widget>[
          TextButton(
            child: Text("Ok",
                style:
                    context.bodyTextStyle().copyWith(color: AppColors.black)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
