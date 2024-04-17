class PdfResponse {
  bool? success;
  String? msg;
  int? code;
  Data? data;

  PdfResponse({this.success, this.msg, this.code, this.data});

  PdfResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    msg = json['msg'];
    code = json['code'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['success'] = this.success;
    data['msg'] = this.msg;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? link;

  Data({this.link});

  Data.fromJson(Map<String, dynamic> json) {
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['link'] = this.link;
    return data;
  }
}
