import 'package:flutter/widgets.dart';
import 'package:shopping/models/category-list-item.model.dart';
import 'package:shopping/ui/shared/widgets/category/category-card.widget.dart';
import 'package:shopping/ui/shared/widgets/shared/loader.widget.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryListItemModel> categories;

  const CategoryList({Key key, this.categories}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Loader(
        object: categories,
        callback: list,
      ),
    );
  }

  Widget list() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        CategoryListItemModel item = categories[index];

        return Padding(
          padding: EdgeInsets.all(5),
          child: CategoryCardWidget(
            item: item,
          ),
        );
      },
    );
  }
}
