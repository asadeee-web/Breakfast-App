import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/strings.dart';
import 'package:flutter_application_2/screens/custom_widgets/appbar.dart';
import 'package:flutter_application_2/screens/home/home_view_model.dart';
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

            appBar: appbar(), //App bar function

            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchFeild(), //search feild function

                  SizedBox(
                    height: 40,
                  ),
                  Category_listview(model), //Category list view function

                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Recomendation\nfor Diet",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 240,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 210,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                        model.listdiet[index].iconpath),
                                    Column(
                                      children: [
                                        Text(
                                          model.listdiet[index].name,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          model.listdiet[index].level +
                                              ' | ' +
                                              model.listdiet[index].duration +
                                              ' | ' +
                                              model.listdiet[index].Calorie,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54),
                                        )
                                      ],
                                    ),
                                    Container(
                                        height: 45,
                                        width: 130,
                                        child: Center(
                                          child: Text("Veiw",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: model.listdiet[index]
                                                          .viewisslected
                                                      ? Colors.white
                                                      : Color(0xffc58bf2))),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            gradient: LinearGradient(colors: [
                                              model.listdiet[index]
                                                      .viewisslected
                                                  ? Color(0xff9dceff)
                                                  : Colors.transparent,
                                              model.listdiet[index]
                                                      .viewisslected
                                                  ? Color(0xff92a3fd)
                                                  : Colors.transparent
                                            ]))),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: model.listdiet[index].boxcolor
                                        .withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 25,
                              );
                            },
                            itemCount: model.listdiet.length),
                        padding: EdgeInsets.only(left: 20, right: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Column Category_listview(HomeCategoryModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Category",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 15,
        ),

        ///
        ///Category List View
        ///
        Container(
          height: 120,
          child: ListView.separated(
              itemCount: model.listcategory.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 20),
              itemBuilder: ((context, index) {
                return Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color:
                          model.listcategory[index].boxColor.withOpacity(0.3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: SvgPicture.asset(
                            model.listcategory[index].iconPath),
                      ),
                      Text(
                        model.listcategory[index].name,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                );
              }),
              separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  )),
        )
      ],
    );
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
