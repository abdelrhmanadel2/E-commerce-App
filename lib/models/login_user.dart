// // To parse this JSON data, do
// //
// //     final userLogin = userLoginFromJson(jsonString);
//
// import 'dart:convert';
//
// UserLogin userLoginFromJson(String str) => UserLogin.fromJson(json.decode(str));
//
// String userLoginToJson(UserLogin data) => json.encode(data.toJson());
//
// class UserLogin {
//   UserLogin({
//     required this.firstName,
//     required this.seconedName,
//     required this.mobileNo,
//     this.email,
//     required this.gender,
//     this.personalPhoto,
//     required this.customersId,
//     required this.cityName,
//     required this.nationalityName,
//     required this.userId,
//     required this.token,
//     this.wallet,
//     this.name,
//   });
//
//   final String firstName;
//   final String seconedName;
//   final String mobileNo;
//   final String? email;
//   final String gender;
//   final String? personalPhoto;
//   final int customersId;
//   final String cityName;
//   final String nationalityName;
//   final int userId;
//   final String token;
//   final String? wallet;
//   final String? name;
//
//   factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
//         firstName: json["firstName"],
//         seconedName: json["seconedName"],
//         mobileNo: json["mobileNo"],
//         email: json["email"] as String?,
//         gender: json["gender"],
//         personalPhoto: json["personalPhoto"] as String?,
//         customersId: json["customersID"],
//         cityName: json["cityName"],
//         nationalityName: json["nationalityName"],
//         userId: json["userId"],
//         token: json["token"],
//         wallet: json["wallet"],
//         name: json["name"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "firstName": firstName,
//         "seconedName": seconedName,
//         "mobileNo": mobileNo,
//         "email": email,
//         "gender": gender,
//         "personalPhoto": personalPhoto,
//         "customersID": customersId,
//         "cityName": cityName,
//         "nationalityName": nationalityName,
//         "userId": userId,
//         "token": token,
//         "wallet": wallet,
//         "name": name,
//       };
// }
