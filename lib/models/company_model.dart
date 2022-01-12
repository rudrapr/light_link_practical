class CompanyModel {
  String? companyId;
  String? companyName;
  String? companyLatitude;
  String? companyLogitude;
  bool? companyIsVerified;
  bool? companyIsFeatured;
  String? companyLogo;

  CompanyModel(
      {this.companyId,
      this.companyName,
      this.companyLatitude,
      this.companyLogitude,
      this.companyIsVerified,
      this.companyIsFeatured,
      this.companyLogo});

  CompanyModel.fromJson(Map<String, dynamic> json) {
    companyId = json['company_id'];
    companyName = json['company_name'];
    companyLatitude = json['company_latitude'];
    companyLogitude = json['company_logitude'];
    companyIsVerified = json['company_isVerified'];
    companyIsFeatured = json['company_isFeatured'];
    companyLogo = json['company_logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_id'] = this.companyId;
    data['company_name'] = this.companyName;
    data['company_latitude'] = this.companyLatitude;
    data['company_logitude'] = this.companyLogitude;
    data['company_isVerified'] = this.companyIsVerified;
    data['company_isFeatured'] = this.companyIsFeatured;
    data['company_logo'] = this.companyLogo;
    return data;
  }
}
