import 'dart:convert';

class MissionModel {
  final String content;
  final bool isComplete;
  MissionModel({
    required this.content,
    required this.isComplete,
  });

  MissionModel copyWith({
    String? content,
    bool? isComplete,
  }) {
    return MissionModel(
      content: content ?? this.content,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'isComplete': isComplete,
    };
  }

  factory MissionModel.empty() {
    return MissionModel(
      content: '',
      isComplete: false,
    );
  }

  factory MissionModel.fromMap(Map<String, dynamic> map) {
    return MissionModel(
      content: map['content'] as String,
      isComplete: map['isComplete'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory MissionModel.fromJson(String source) => MissionModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
