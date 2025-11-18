class AppRoutes {
  static String home = "/";
  static String app = "/a/:id";

  static String getAppRoute(String id) {
    return app.replaceFirst(":id", id);
  }
}
