import 'package:flutter/material.dart';
import 'package:gen_crm/src/app_const.dart';
import 'package:gen_crm/src/src_index.dart';
import '../../l10n/key_text.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    Key? key,
    this.onTap,
    this.title,
    this.marginHorizontal,
    this.backgroundColor,
    this.paddingAll,
    this.textColor,
    this.marginVertical,
  }) : super(key: key);

  final Function()? onTap;
  final String? title;
  final double? marginHorizontal;
  final double? marginVertical;
  final double? paddingAll;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: marginVertical ?? 16,
        horizontal: marginHorizontal ?? 16,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? getBackgroundWithIsCar(),
          padding: EdgeInsets.all(paddingAll ?? 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onTap,
        child: Text(
          title ?? getT(KeyT.action),
          style: AppStyle.DEFAULT_16_BOLD.copyWith(
            color: textColor ?? getColorWithIsCar(),
          ),
        ),
      ),
    );
  }
}

class ButtonBaseSmall extends StatelessWidget {
  const ButtonBaseSmall({
    Key? key,
    required this.onTap,
    this.title,
  }) : super(key: key);

  final Function() onTap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: getBackgroundWithIsCar(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          )),
      onPressed: () => onTap(),
      child: Text(
        title ?? getT(KeyT.action),
        style: AppStyle.DEFAULT_14_BOLD.copyWith(
          color: getColorWithIsCar(),
        ),
        textAlign: TextAlign.center,
        maxLines: 2,
      ),
    );
  }
}
