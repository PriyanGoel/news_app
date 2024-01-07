import '../model/all_news_model.dart';
import '../model/modelBBcNews.dart';
import '../services/services.dart';

class NewsListViewModel {
  Future<AllNewsModel> fetchNews(String category) async {
    final myApiResult = await MyService().fetchAllNews(category);

    return myApiResult;
  }

  Future<ModelBbcNews> fetchBBcNews(String newChannel) async {
    final bbcApi = await MyService().fetchBBCNews(newChannel);

    return bbcApi;
  }
}
