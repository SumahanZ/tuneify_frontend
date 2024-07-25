class APIConstants {
  static const baseURL = "http://10.0.2.2:3002/api";
  //Users & Auth Endpoints
  static const signupEndpoint = "/user/signup";
  static const loginEndpoint = "/user/login";
  static const getDataEndpoint = "/user/get-data";

  //Songs Endpoints
  static const uploadSongEndpoint = "/song/upload-song";
  static const getLatestSongsEndpoint = "/song/list";

  //Favorites Endpoints
  static const addRemoveFavoriteEndpoint = "/favorite";
  static const getFavoritesEndpoint = "/favorite";
}
