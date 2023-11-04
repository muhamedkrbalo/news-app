import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
final dio = Dio();

  Future<List<ArticleModel>> getGenralNews({required String category}) async {
  try {
  Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=6ea9ab5d20954a3fbfae56be3923812f&category=$category');
   Map<String,dynamic> jasonData= response.data;
   List<dynamic> articles=jasonData['articles'];
   List<ArticleModel> articlesList = []; 
   for (var article in articles) {
    ArticleModel articleModel =ArticleModel.fromJson(article);
      
     articlesList.add(articleModel);
   }
    return articlesList;
}   catch (e) {
  return [];
}
    //articles.map((e) {
  //   ArticleModel articleModel =ArticleModel(image: e[''], title: e['title'], subTitle: e['subTitle']);
  //   articlesList.add(articleModel);
  //  }).toList();
}

}