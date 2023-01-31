import 'package:energyone_user/app/modules/cart_view/components/cartcard.dart';
import 'package:energyone_user/utils/colors.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {


  int selectedIndex = 0;
  bool selectAll = false;
  List<String> tabItems = ["Unpaid","Confirm","Delivered"];

  void toggleTab(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  void toggleSelect(){
    setState(() {
      selectAll = !selectAll;
    });
  }
  @override
  Widget build(BuildContext context) {
    double dx = MediaQuery.of(context).size.width;
    double dy = MediaQuery.of(context).size.height;
    return Column(
      children: [

        /*--------------------------------
        Tab Section
        ---------------------------------*/
        Container(
          width: dx,
          height: 60,
          margin: EdgeInsets.symmetric(
            horizontal: dx*0.05,
            vertical: dx*0.05
          ),
            padding: EdgeInsets.symmetric(
            horizontal: dx*0.02,
       
          ),
         decoration: BoxDecoration(
           color: AppTheme.primary.withOpacity(1),
           borderRadius: BorderRadius.circular(50)
         ),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(3, (index) => GestureDetector(
              onTap: (){
                toggleTab(index);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: dx*0.08
                ),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                  color: selectedIndex == index?Colors.white:Colors.transparent
              
                ),
                child:Text(tabItems[index], style: TextStyle( fontWeight: index == selectedIndex?FontWeight.bold:FontWeight.normal),)
              ),
            )),
          ],
         ),
        ),
        
        /*--------------------------------
        Discount/Total price section
        ---------------------------------*/
        Text("Discount: 250.00"),
        SizedBox(height: dx*0.02,),
        Text("Total: 8,000.00", style: TextStyle(color: AppTheme.blue, fontWeight: FontWeight.w800, fontSize: 25),),
        SizedBox(height: dx*0.02,),
        Row(
          children: [
            Checkbox(value: selectAll, onChanged: (value){
              toggleSelect();
            }),
            Text("Select all")
          ],
        ),

        Expanded(child: ListView.builder(itemBuilder: (context, index){
          return  CartCardWidget();
        }))
      ],
    );
  }
}

