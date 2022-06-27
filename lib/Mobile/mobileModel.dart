//CodingKnowledgeModel

// ignore_for_file: file_names

class CodingKnowledgeModel {
  String? photo;
  String? name;
  double? percent;

  CodingKnowledgeModel({
    this.name,
    this.percent,
    this.photo,
  });
}

//KnowledgeModel

class KnowledgeModel {
  String? photo;
  String? subject;
  String? explain;

  KnowledgeModel({
    this.explain,
    this.photo,
    this.subject,
  });
}

//ExperinceModel
class ExperinceModel {
  final String? subject;
  final String? explain;
  final String? photo;
  ExperinceModel({
    this.explain,
    this.photo,
    this.subject,
  });
}

//RecentWork
class RecentWorkModel {
  final String? photo;
  final String? name;
  final String? explain;

  RecentWorkModel({
    this.explain,
    this.name,
    this.photo,
  });
}

//ciretifesnts
class CiretifesntsModel {
  final String? photo;
  CiretifesntsModel({
    this.photo,
  });
}

//contact with me
class ContactsModel {
  final String? photo;
  ContactsModel({
    this.photo,
  });
}
