import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpanies_app/views/checkout_page/widgets/dropdown.dart';

import '../../../utils/constants.dart';
import '../../../widgets/hoverWidget.dart';

class Paymentfield extends StatefulWidget {
  const Paymentfield({super.key});

  @override
  State<Paymentfield> createState() => _PaymentfieldState();
}

class _PaymentfieldState extends State<Paymentfield> {

  TextEditingController controller = new TextEditingController();

  List<String> monthList = ['01','02','03','04','05','06','07','08','09','10','11','12'];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('2. Enter Payment Details', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20, )),
            SizedBox(height: 35,),
      
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaymentOptionsHover(
                  defaultColor: Colors.transparent, 
                  hoverColor: kPrimaryColor,
                  onTap: () {},
                  child: SvgPicture.asset('assets/images/paypal.svg', height: 50, width:80) ,
                ),
                PaymentOptionsHover(
                  defaultColor: Colors.transparent, 
                  hoverColor: kPrimaryColor,
                  onTap: () {},
                  child: SvgPicture.asset('assets/images/visa.svg', height: 50, width:80) ,
                ),
                PaymentOptionsHover(
                  defaultColor: Colors.transparent, 
                  hoverColor: kPrimaryColor,
                  onTap: () {},
                  child: SvgPicture.asset('assets/images/mc.svg', height: 50, width:80) ,
                ),
                PaymentOptionsHover(
                  defaultColor: Colors.transparent, 
                  hoverColor: kPrimaryColor,
                  onTap: () {},
                  child: Image.asset('assets/images/D-Money.png', height: 50, width:80) ,
                ),
                
              ],
            ),
      
            Text('*Card Number', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 10,),  
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    //width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    //width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                //hintText: 'Email',
              ),
            ),
      
            SizedBox(height: 20,),
      
            Text('*Name on Card', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 10,),  
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    //width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    //width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: '',
              ),
            ),
      
            SizedBox(height: 20,),
      
            Text('*Expiry Date', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 10,),  
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: MonthDropdownField(
                    months: ['01', '02', '03', '04','05', '06', '07', '08','09', '10', '11', '12'],
                    selectedMonth: null, 
                    onChanged: (String? month) {},
                    labelText: 'Select Month',
                  )
                ),
                
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: MonthDropdownField(
                    months: ['22', '23', '24', '25','26', '27', '28', '29','30', '31', '32', '33'],
                    selectedMonth: null, 
                    onChanged: (String? month) {},
                    labelText: 'Select Year',
                  )
                ),
      
                ],
            ),
      
            SizedBox(height: 20), 
      
            Container(
              height: 40,
              child: ElevatedHoverButton(
                  text: 'Pay \$750',
                  
                  onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Checkout()),
                            // ); // Navigate back to the previous page
                  },
                          //icon: Icons.lock,
              ),
            ),
            
      
      
          ],
        ),
      ),

    );
  }
}