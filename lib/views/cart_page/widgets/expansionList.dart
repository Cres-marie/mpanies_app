import 'package:flutter/material.dart';

class ReusableExpansionList extends StatefulWidget {
  final List<ExpansionListItem> items;

  ReusableExpansionList({required this.items});

  @override
  _ReusableExpansionListState createState() => _ReusableExpansionListState();
}

class _ReusableExpansionListState extends State<ReusableExpansionList> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 60),
        constraints: BoxConstraints(maxWidth: 550),
        child: ListView.separated(
          shrinkWrap :true,
          itemCount: widget.items.length,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index){
            return Container(
              //width: MediaQuery.of(context).size.width / 4,
              child: ExpansionTile(
                title: Text(widget.items[index].title),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: widget.items[index].content
                    ),
                  ),
                ],
              ),
            );
            
          }),
      ),
    );
    
  }
}

class ExpansionListItem {
  final String title;
  final Widget content;

  ExpansionListItem({required this.title, required this.content});
}




class ExpandedItem extends StatefulWidget {
  const ExpandedItem({super.key});

  @override
  State<ExpandedItem> createState() => _ExpandedItemState();
}

class _ExpandedItemState extends State<ExpandedItem> {
  @override
  Widget build(BuildContext context) {
    return ReusableExpansionList(
          items: [
            ExpansionListItem(
              title: 'How to Use',
              content: Text('Content for Item 1'),
            ),
            
            ExpansionListItem(
              title: 'Full Ingredients List',
              content: Text('Content for Item 2'),
            ),
            // Add more items as needed
          ],
        );
  }
}