import 'package:flutter/material.dart';


class IngredientItem {
  final String name;
  final String amount;
  bool isChecked;

  IngredientItem({
    required this.name,
    required this.amount,
    this.isChecked = true,
  });
}

class IngredientsList extends StatefulWidget {
  final List<String> ingredients;

  const IngredientsList({super.key, required this.ingredients});

  @override
  State<IngredientsList> createState() => _IngredientsListState();
}

class _IngredientsListState extends State<IngredientsList> {
  late List<IngredientItem> _items;

  @override
  void initState() {
    super.initState();
    _items = widget.ingredients.map((e) {
      final parts = e.split(':');
      return IngredientItem(
        name: parts[0],
        amount: parts.length > 1 ? parts[1] : '',
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: _items.length,
      separatorBuilder: (context, index) =>
          Divider(color: Color(0xFFE0E0E0), thickness: 1, height: 1),
      itemBuilder: (context, index) {
        final item = _items[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    item.isChecked = !item.isChecked;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: item.isChecked
                        ? Color(0xFF4A5568)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: item.isChecked
                          ? Color(0xFF4A5568)
                          : Color(0xFFBDBDBD),
                      width: 2,
                    ),
                  ),
                  child: item.isChecked
                      ? Icon(Icons.check, color: Colors.white, size: 16)
                      : null,
                ),
              ),

              SizedBox(width: 16),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    item.amount,
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF9E9E9E),
                    ),
                  ),

                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
