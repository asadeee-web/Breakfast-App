import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/strings.dart';
import 'package:flutter_application_2/screens/custom_widgets/appbar.dart';
import 'package:flutter_application_2/screens/home/model_veiw_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeCategoryModel(),
        child: Consumer<HomeCategoryModel>(
          builder: (context, model, child) => Scaffold(
            backgroundColor: Colors.white,
            appBar: appbar(),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchFeild(),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Category",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 150,
                      child: ListView.separated(
                          itemCount: model.listcategory.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: model.listcategory[index].boxColor),
                            );
                          }),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 25,
                              )),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Container SearchFeild() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search Pancake",
            hintStyle: TextStyle(fontSize: 14, color: Colors.black54),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("assets/icons/Search.svg"),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("assets/icons/Filter.svg"),
            ),
            contentPadding: EdgeInsets.all(15),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
