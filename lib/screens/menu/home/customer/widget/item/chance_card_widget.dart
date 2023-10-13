import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gen_crm/widgets/widget_text.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../../../l10n/key_text.dart';
import '../../../../../../src/models/model_generator/chance_customer.dart';
import '../../../../../../src/src_index.dart';

class ChanceCardWidget extends StatefulWidget {
  ChanceCardWidget({Key? key, required this.data}) : super(key: key);

  final ChanceCustomerData? data;

  @override
  State<ChanceCardWidget> createState() => _ChanceCardWidgetState();
}

class _ChanceCardWidgetState extends State<ChanceCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(ICONS.IC_ICON1_SVG),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: AppValue.widths * 0.03),
                  child: WidgetText(
                    title: widget.data?.name ?? getT(KeyT.not_yet),
                    style: AppStyle.DEFAULT_18_BOLD
                        .copyWith(color: COLORS.TEXT_COLOR),
                    maxLine: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: widget.data!.color != null
                        ? HexColor(widget.data!.color!)
                        : null,
                    borderRadius: BorderRadius.circular(99)),
                width: AppValue.widths * 0.1,
                height: AppValue.heights * 0.02,
              )
            ],
          ),
          SizedBox(height: AppValue.heights * 0.01),
          Row(
            children: [
              SvgPicture.asset(
                ICONS.IC_AVATAR_SVG,
                color: COLORS.GRAY_IMAGE,
              ),
              Padding(
                padding: EdgeInsets.only(left: AppValue.widths * 0.03),
                child: WidgetText(
                  title: (widget.data!.customer_name == "" ||
                          widget.data!.customer_name == null)
                      ? getT(KeyT.not_yet)
                      : widget.data!.customer_name,
                  style: AppStyle.DEFAULT_18_BOLD
                      .copyWith(color: COLORS.TEXT_COLOR),
                ),
              ),
            ],
          ),
          SizedBox(height: AppValue.heights * 0.01),
          Row(
            children: [
              SvgPicture.asset(ICONS.IC_ICON3_SVG),
              Padding(
                padding: EdgeInsets.only(left: AppValue.widths * 0.03),
                child: SizedBox(
                    width: AppValue.widths * 0.5,
                    child: WidgetText(
                      title: widget.data!.status ?? getT(KeyT.not_yet),
                      style: AppStyle.DEFAULT_14.copyWith(
                          fontWeight: FontWeight.w400, color: COLORS.TEXT_RED),
                    )),
              ),
            ],
          ),
          SizedBox(height: AppValue.heights * 0.01),
          Row(
            children: [
              SvgPicture.asset(ICONS.IC_ICON4_SVG),
              Padding(
                padding: EdgeInsets.only(left: AppValue.widths * 0.03),
                child: SizedBox(
                    width: AppValue.widths * 0.5,
                    child: WidgetText(
                        title: widget.data!.date ?? getT(KeyT.not_yet),
                        style: AppStyle.DEFAULT_14.copyWith(
                            fontWeight: FontWeight.w400,
                            color: COLORS.TEXT_COLOR))),
              ),
              Spacer(),
              SvgPicture.asset(ICONS.IC_QUESTION_SVG),
              SizedBox(
                width: AppValue.widths * 0.01,
              ),
              WidgetText(
                  title: widget.data!.total_note,
                  style:
                      AppStyle.DEFAULT_14.copyWith(color: COLORS.TEXT_COLOR)),
            ],
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: AppValue.heights * 0.01,
        right: 5,
        left: 5,
      ),
      padding: EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 20),
      decoration: BoxDecoration(
        color: COLORS.WHITE,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }

  TextStyle OrtherInforCustomerStyle() => TextStyle(
      color: HexColor("#0052B4"),
      fontFamily: "Quicksand",
      fontWeight: FontWeight.w400,
      fontSize: 14);

  TextStyle LocationCustomerStyle() => TextStyle(
      color: COLORS.BLACK,
      fontFamily: "Quicksand",
      fontWeight: FontWeight.w400,
      fontSize: 14);

  TextStyle NameCustomerStyle() => TextStyle(
      color: COLORS.ff006CB1,
      fontFamily: "Quicksand",
      fontWeight: FontWeight.w700,
      fontSize: 18);
}
