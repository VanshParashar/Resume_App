import 'package:hive/hive.dart';

import 'model.dart';

class SummaryService {
  final Box<String> _summaryBox = Hive.box<String>('summaryBox');

  Future<void> addSummary(String content) async {
    await _summaryBox.add(content);
  }

  Future<List<String>> getSummaries() async {
    return _summaryBox.values.toList();
  }

  Future<void> updateSummary(int index, String newContent) async {
    if (index >= 0 && index < _summaryBox.length) {
      await _summaryBox.putAt(index, newContent);
    } else {
      throw Exception('Invalid index');
    }
  }

  Future<void> deleteSummary(int index) async {
    if (index >= 0 && index < _summaryBox.length) {
      await _summaryBox.deleteAt(index);
    } else {
      throw Exception('Invalid index');
    }
  }
}

class WorkExperienceService {
  final Box<WorkExperience> _workExperienceBox =
  Hive.box<WorkExperience>('workExperienceBox');

  Future<void> addWorkExperience(WorkExperience workExperience) async {
    await _workExperienceBox.add(workExperience);
  }

  Future<List<WorkExperience>> getWorkExperiences() async {
    return _workExperienceBox.values.toList();
  }

// Implement update and delete functions
}

