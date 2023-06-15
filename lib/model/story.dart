final String tableStory = "story";

class StoryFields{

static final List<String> values = [id,title,description];

  static final String id = "_id";
  static final String title = "title";
  static final String description = "description";
}


class Story{
  final int? id;
  final String title;
  final String description;

  const Story({
    this.id,required this.title,required this.description
  });
  Story copy({
    int? id,
    String? title,
    String? description, 
  }) => 
      Story(
        id:id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description);

  static Story fromJson(Map<String, Object?> json) =>Story(
    id: json[StoryFields.id] as int?,
    title: json[StoryFields.title] as String,
    description: json[StoryFields.description] as String
  );


  Map<String,Object?> toJson()=>{
    StoryFields.id:id,
    StoryFields.title:title,
    StoryFields.description:description
  };
}