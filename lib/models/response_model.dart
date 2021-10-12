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
        message: json["message"]  ?? "",
        status: json["status"]  ?? false,
        isAuthorize: json["isAuthorize"] ?? true,
        totalRecords: json["totalRecords"] ,
        data: json["data"],
      );
}
