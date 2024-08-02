import 'package:flutter/material.dart';
import 'package:gen_crm/screens/menu/widget/widget_label.dart';
import '../../../../../src/src_index.dart';

class WidgetTotalSum extends StatelessWidget {
  WidgetTotalSum({
    Key? key,
    required this.label,
    required this.value,
    required this.onChange,
  }) : super(key: key);

  final String? label;
  final String? value;
  final Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    onChange((value ?? '').replaceAll('.', '').replaceAll('đ', ''));
    return Container(
      margin: marginBottomFrom,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textScaleFactor: MediaQuery.of(context).textScaleFactor,
            text: TextSpan(
              text: label ?? '',
              style: AppStyle.DEFAULT_14W600,
              children: <TextSpan>[
                TextSpan(),
              ],
            ),
          ),
          Expanded(
            child: Text(
               value ?? '',
              style: AppStyle.DEFAULT_14_BOLD.copyWith(
                color: COLORS.ORANGE_IMAGE,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
