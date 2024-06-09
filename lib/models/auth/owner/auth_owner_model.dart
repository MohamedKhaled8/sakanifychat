class Student {
  String id;
  String name;
  String email;
  String gender;
  String phone;
  String photo;
  String photoUrl;
  String role;
  int v;

  Student({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.phone,
    required this.photo,
    required this.photoUrl,
    required this.role,
    required this.v,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'],
      name: json['name'],
      email: json['email'],
      gender: json['gender'],
      phone: json['phone'],
      photo: json['photo'],
      photoUrl: json['photoUrl'],
      role: json['role'],
      v: json['__v'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['gender'] = gender;
    data['phone'] = phone;
    data['photo'] = photo;
    data['photoUrl'] = photoUrl;
    data['role'] = role;
    data['__v'] = v;
    return data;
  }
}

class StudentResponse {
  String status;
  String token;
  Student student;

  StudentResponse({
    required this.status,
    required this.token,
    required this.student,
  });

  factory StudentResponse.fromJson(Map<String, dynamic> json) {
    return StudentResponse(
      status: json['status'],
      token: json['token'],
      student: Student.fromJson(json['data']['student']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    data['data'] = this.student.toJson();
    return data;
  }
}
