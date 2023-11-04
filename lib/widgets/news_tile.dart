import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articleModel.image??"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nahwechorouk.info%2F%25D8%25A8%25D9%258F%25D9%2587%25D8%25AA%25D8%25A7%25D9%2586%25D9%258F-%25D8%25A7%25D9%2584%25D8%25B4%25D9%2590%25D9%2591%25D8%25B9%25D8%25B1-%25D8%25B4%25D8%25B9%25D8%25B1-%25D8%25A7%25D9%2584%25D8%25AF%25D9%2583%25D8%25AA%25D9%2588%25D8%25B1-%25D8%25B9%25D8%25A8%25D8%25AF-%25D8%25A7%25D9%2584%25D9%2588%25D9%2584%25D9%258A%2F%25D8%25B5%25D9%2588%25D8%25B1-%25D8%25A7%25D9%2584%25D9%2584%25D9%258A%25D9%2584-%25D8%25AE%25D9%2584%25D9%2581%25D9%258A%25D8%25A7%25D8%25AA-%25D9%2584%25D9%258A%25D9%2584%25D9%258A%25D8%25A9-%25D8%25B1%25D9%2588%25D8%25B9%25D8%25A9-%25D9%2584%25D9%2584%25D9%2582%25D9%2585%25D8%25B1-%25D9%2588%25D8%25A7%25D9%2584%25D9%2586%2F&psig=AOvVaw0wcrPLJ9CKLEpix3dDEMgQ&ust=1699214306212000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJj9vd6Qq4IDFQAAAAAdAAAAABAE",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}