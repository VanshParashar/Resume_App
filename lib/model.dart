// summary_model.dart
class Summary {
  String? content;

  Summary({this.content});
}

// work_experience_model.dart
class WorkExperience {
  String? company;
  String? position;
  String? startDate;
  String? endDate;

  WorkExperience({this.company, this.position, this.startDate, this.endDate});
}
// education_model.dart
class Education {
  String? institution;
  String? degree;
  String? fieldOfStudy;
  String? startDate;
  String? endDate;

  Education({
     this.institution,
    this.degree,
    this.fieldOfStudy,
    this.startDate,
    this.endDate,
  });
}

// project_model.dart
class Project {
  String? name;
  String? description;
  String? startDate;
  String? endDate;

  Project({
    this.name,
    this.description,
    this.startDate,
    this.endDate,
  });
}

// skill_model.dart
class Skill {
  String? name;
  String? proficiencyLevel;

  Skill({
    this.name,
    this.proficiencyLevel,
  });
}

// language_model.dart
class Language {
  String? name;
  String? proficiencyLevel;

  Language({
    this.name,
    this.proficiencyLevel,
  });
}
