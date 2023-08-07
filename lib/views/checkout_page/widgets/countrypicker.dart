import 'package:country_list_pick/country_list_pick.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class CountryPicker extends StatefulWidget {
  const CountryPicker({super.key});

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            //padding: EdgeInsets.symmetric(horizontal: 20),
            //height: 600,
            
            child: Column(
              children: [
                ///Adding CSC Picker Widget in app
                CountryListPick(
                  theme: CountryTheme(
                    isShowFlag: true,
                    isShowTitle: true,
                    isShowCode: true,
                    isDownIcon: true,
                    showEnglishName: false,
                    labelColor: Colors.blueAccent,
                  ),
                  initialSelection: '+256', //inital selection, +672 for Antarctica
                  onChanged: (CountryCode? code) {},
               ),
                
              ],
            )),
      );
  }
}