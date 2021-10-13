class ResponseModel {
  final String message;
  final bool status;
  final bool isAuthorize;
  final int? totalRecords;
  final dynamic data;

  ResponseModel({
    required this.message,
    required this.status,
    required this.isAuthorize,
    this.totalRecords,
    required this.data,
  });

  factory ResponseModel.fromJson(final json) => ResponseModel(
        message: json["message"] as String ?? "",
        status: json["status"] as bool ?? false,
        isAuthorize: json["isAuthorize"] as bool ?? true,
        totalRecords: json["totalRecords"] as int,
        data: json["data"],
      );
}
