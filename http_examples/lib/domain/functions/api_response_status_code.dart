bool isResponseStatusOk(int status) {
  return status == 200;
}

bool isApiResponseSuccess(int status) {
  return status == 201;
}

bool isApiResponseUnauthorized(int status) {
  return status == 401;
}

bool isApiResponseNotFound(int status) {
  return status == 404;
}

bool isServerError(int status) {
  return status == 500;
}
