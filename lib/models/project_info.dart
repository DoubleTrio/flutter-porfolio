import 'package:equatable/equatable.dart';

class ProjectInfo extends Equatable {

  final String assetName;
  final String projectName;
  final String description;

  ProjectInfo({required this.assetName, required this.projectName, required this.description});

  @override
  List<Object> get props => [assetName, projectName, description];

  ProjectInfo copyWith({String? assetName, String? projectName, String? description }) {
    return ProjectInfo(
      assetName: assetName ?? this.assetName,
      projectName: projectName ?? this.projectName,
      description: description ?? this.description,
    );
  }

  @override
  String toString() {
    return 'ProjectInfo { assetName: $assetName, projectName: $projectName , description: $description }';
  }
}