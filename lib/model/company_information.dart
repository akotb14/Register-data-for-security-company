class CompanyInformation {
  int id;
  String nameCompany;
  CompanyInformation(this.id,  this.nameCompany);

  Map<String, dynamic> toJson() {
    return {
      'id': (id==0) ?null: id, 
    'nameCompany': nameCompany};
  }

  CompanyInformation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameCompany = json['nameCompany'];
  }
  int getid() => id;
}
