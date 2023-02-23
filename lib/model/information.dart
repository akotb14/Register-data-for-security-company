import 'package:security/model/company_information.dart';

CompanyInformation companyInformation;

class Information {
  int id;
    String name;
   String address;
   String phone;
  String startDate;
   String lastDate;
    String job;
  int idcompany;

  Information(
      this.id,
      this.name,
      this.address,
       this.phone,
       this.startDate,
       this.lastDate,
       this.job,
       this.idcompany
  );
  Map<String, dynamic> toJson() {
    return {
      'id': (id ==0)? null:id,
      'name': name,
      'address': address,
      'phone': phone,
      'startDate': startDate,
      'lastDate': lastDate,
      'job': job,
     'FK_contact_category': idcompany,
    };
  }

  Information.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    startDate = json['startDate'];
    lastDate = json['lastDate'];
    job = json['job'];
    idcompany = json['FK_contact_category'];
  }
}
