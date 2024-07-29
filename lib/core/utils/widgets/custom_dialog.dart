import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:quon/core/theme/app_pallete.dart';

void customDialog({
  required BuildContext context,
  String? title,
  required String desc,
  required String okText,
  String? cancleText,
  required Function()? okTap,
  Function()? cancleTap,
  QuickAlertType? type,
}) {
  QuickAlert.show(
    backgroundColor: AppPallete.darkBackgroundColor,
    confirmBtnColor: AppPallete.darkBackgroundColor,
    showCancelBtn: true,
    context: context,
    type: type?? QuickAlertType.warning,
    titleColor: AppPallete.whiteColor,
    title: title,
    text: desc,
    textColor: AppPallete.greyColor,
    confirmBtnText: okText,
    onConfirmBtnTap: okTap,
    cancelBtnText: cancleText ?? "",
    onCancelBtnTap: cancleTap,
  );
}
