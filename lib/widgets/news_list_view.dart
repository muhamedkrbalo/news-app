import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> article;
  const NewsListView({
    super.key,
    required this.article
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: article.length, (context, index) {
      
        return NewsTile(articleModel: article[index]);
      } 
   )); }
}

// isLoading?const
    //  SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())):
    // articles.isNotEmpty? SliverList(delegate: SliverChildBuilderDelegate(
    //           childCount: articles.length,
    //           (context, index) {
    //           return NewsTile(articleModel: articles[index]);

    //         })):const 
//   }
// }

