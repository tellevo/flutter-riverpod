class ResponseApi {
  final String ok;
  final String status;
  final String message;
  final ResponseData data;

  ResponseApi({required this.ok, required this.status, required this.message, this.data});
  
  factory ResponseApi.fromJson(Map<String, dynamic> json) {
    return ResponseApi(
      ok: json['ok'],
      status: json['status'],
      message: json['message'],
      data: ResponseData.fromJson(json['data']),
    );
  }
}