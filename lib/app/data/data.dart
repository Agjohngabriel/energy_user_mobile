class Onboardingdetails {
  String? title;
  String? description;

  Onboardingdetails({this.title, this.description});

  Onboardingdetails.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    return data;
  }
}
