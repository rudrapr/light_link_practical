import 'package:flutter/material.dart';
import 'package:light_link_practical/models/company_model.dart';

class GridItemView extends StatelessWidget {
  final CompanyModel companyModel;

  const GridItemView({Key? key, required this.companyModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(companyModel.companyLogo!),
    );
  }
}
