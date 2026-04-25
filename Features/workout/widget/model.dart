class Exercise {
  final String id;
  final String name;
  final String bodyPart;
  final String target;
  final String equipment;
  final List<String> secondaryMuscles;
  final List<String> instructions;
  final String description;
  final String difficulty;
  final String category;

  Exercise({
    required this.id,
    required this.name,
    required this.bodyPart,
    required this.target,
    required this.equipment,
    required this.secondaryMuscles,
    required this.instructions,
    required this.description,
    required this.difficulty,
    required this.category,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      bodyPart: json['bodyPart'] ?? '',
      target: json['target'] ?? '',
      equipment: json['equipment'] ?? '',
      secondaryMuscles: List<String>.from(json['secondaryMuscles'] ?? []),
      instructions: List<String>.from(json['instructions'] ?? []),
      description: json['description'] ?? '',
      difficulty: json['difficulty'] ?? '',
      category: json['category'] ?? '',
    );
  }
}
