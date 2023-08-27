import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';



class WebSearchBar extends StatefulWidget {
  const WebSearchBar({super.key});

  @override
  State<WebSearchBar> createState() => _WebSearchBarState();
}

class _WebSearchBarState extends State<WebSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Container(
          // padding: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(0.3)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,color: Colors.black,
                ),
                hintText: "Search for a brand or product",
                hintStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: k2SecondaryGold),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class MobSearchIcon extends StatefulWidget {
  const MobSearchIcon({super.key});

  @override
  State<MobSearchIcon> createState() => _MobSearchIconState();
}

class _MobSearchIconState extends State<MobSearchIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){}, 
      icon: Icon(Icons.search, color: buttonColor, size: 32)
    );
  }
}