import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_list/searchbar.dart';
import 'Edit_task.dart';
import 'colors.dart' as color;
import 'creat_new_task.dart';
import 'database_repo/database_repository.dart';
import 'database_repo/todoModel.dart';
import 'minibar.dart';
import 'minibar2.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyHomePage> {
  // final GlobalKey<ScaffoldState> _key = GlobalKey();

  List<TodoModel> myTodos = [];

  @override
  void initState() {
    getTodos();
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        backgroundColor: Color.fromARGB(228, 228, 228, 228),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromARGB(255, 131, 117, 117),
                offset: const Offset(5, 6),
                blurRadius: 4,
              ),
              BoxShadow(
                color: Color.fromARGB(255, 131, 117, 117),
                offset: const Offset(-3, -3),
                blurRadius: 4,
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.green,
            unselectedItemColor: Colors.black45,
            selectedItemColor: Colors.green,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: "Calendar"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: "Message"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        ), // backgroundColor: color.AppColor.homePageBackground,

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                    // height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.only(
                        top: 70, left: 8, right: 8,),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xfff9f9f9f9),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        offset: const Offset(5, 6),
                                        color: color.AppColor.gradientSecond
                                            .withOpacity(0.1)),
                                              BoxShadow(
                                        blurRadius: 5,
                                        offset: const Offset(-10, -13),
                                        color: color.AppColor.gradientSecond
                                            .withOpacity(0.1))
                                  ]),
                              child: Expanded(
                                child: Column(
                                  
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://media.licdn.com/dms/image/C4D03AQFMbzuiwCMO5w/profile-displayphoto-shrink_100_100/0/1641271914049?e=1687392000&v=beta&t=J7oo2dT9jkP4J55mlgHlvbV2l-vXlfRPXn41s_dy-mM"),
                                          radius: 30,
                                        ),
                                        const SizedBox(
                                          width: 250,
                                        ),
                                        Icon(
                                          Icons.notifications,
                                          size: 30,
                                          color: color.AppColor.homePageIcons,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, bottom: 10),
                                      child: Text(
                                        "New & Note Worthy",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17,
                                            color: color.AppColor.homePageTitle),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(bottom: 8),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor:
                                                    const Color(0xFFFFFFFF),
                                                isDense: true,
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15.0),
                                                /* -- Text and Icon -- */
                                                hintText: "Search Products...",
                                                hintStyle: const TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFFB3B1B1),
                                                ), // TextStyle
                                                suffixIcon: const Icon(
                                                  Icons.search,
                                                  size: 26,
                                                  color: Colors.black54,
                                                ), // Icon
                                                /* -- Border Styling -- */
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(45.0),
                                                  borderSide: const BorderSide(
                                                    width: 2.0,
                                                    color: Color(0xFFFF0000),
                                                  ), // BorderSide
                                                ), // OutlineInputBorder
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(45.0),
                                                  borderSide: const BorderSide(
                                                    width: 2.0,
                                                    color: Colors.grey,
                                                  ), // BorderSide
                                                ), // OutlineInputBorder
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(45.0),
                                                  borderSide: const BorderSide(
                                                    width: 2.0,
                                                    color: Colors.grey,
                                                  ), // BorderSide
                                                ), // OutlineInputBorder
                                              ), // InputDecoration
                                            ),
                                          ), // TextField
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10, right: 20),
                                          child: Icon(
                                            Icons.filter_alt,
                                            size: 30,
                                            color: color.AppColor.homePageIcons,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Minibar(),
                                    // Minibar2(), 
                                    Coursel(),
                                   
                                  ],
                                ),
                              )),
                          // EditTask(),
                          // Container(
                          //   padding: const EdgeInsets.only(
                          //     top: 1,
                          //   ),
                          //   child: Card(
                          //       elevation: 0,
                          //       color: Colors.greenAccent[100],
                          //       child: SizedBox(
                          //         width: 380,
                          //         height: 90,
                          //         child: Padding(
                          //           padding: const EdgeInsets.all(10),
                          //           child: Column(
                          //             crossAxisAlignment:
                          //                 CrossAxisAlignment.start,
                          //             // ignore: prefer_const_literals_to_create_immutables
                          //             children: [
                          //               // ignore: prefer_const_constructors
                          //               Text(
                          //                 'GeeksforGeeks',
                          //                 // ignore: prefer_const_constructors
                          //                 style: TextStyle(
                          //                   fontSize: 15,
                          //                   color: Colors.black,
                          //                   fontWeight: FontWeight.w500,
                          //                 ), //Textstyle
                          //               ),
                          //               const SizedBox(
                          //                 height: 10,
                          //               ),
                          //               const Text(
                          //                 '15 task',
                          //                 // ignore: prefer_const_constructors
                          //                 style: TextStyle(
                          //                   fontSize: 15,
                          //                   color: Colors.black,
                          //                   fontWeight: FontWeight.w500,
                          //                 ), //Textstyle
                          //               ), //Text
                          //             ],
                          //           ), //Column
                          //         ), //Padding
                          //       )),
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.only(top: 15),
                          //   child: Row(
                          //     children: [
                          //       Text(
                          //         "Todays's Task",
                          //         style: TextStyle(
                          //             fontWeight: FontWeight.w800,
                          //             fontSize: 15,
                          //             color: color.AppColor.homePageTitle),
                          //       ),
                          //       Expanded(child: Container()),
                          //       Text(
                          //         "See All",
                          //         style: TextStyle(
                          //             fontSize: 13,
                          //             color: color.AppColor.homePageTitle),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Expanded(
                          //   child: Padding(
                          //       padding: const EdgeInsets.symmetric(
                          //         horizontal: 0,
                          //         vertical: 0,
                          //       ),
                          //       child: GridView.count(
                          //         crossAxisCount: 1,
                          //         childAspectRatio: (1 / .3),
                          //         shrinkWrap: true,
                          //         children:
                          //             List.generate(myTodos.length, (index) {
                          //           return Padding(
                          //             padding: const EdgeInsets.all(5.0),
                          //             child: Container(
                          //               decoration: BoxDecoration(
                          //                   border: Border.all(
                          //                       color: Color.fromARGB(
                          //                           255, 91, 151, 93))),
                          //               child: Row(
                          //                 children: [
                          //                   Padding(
                          //                     padding:
                          //                         const EdgeInsets.all(8.0),
                          //                     child: Icon(
                          //                       Icons.settings,
                          //                       size: 30,
                          //                       color: color
                          //                           .AppColor.homePageIcons,
                          //                     ),
                          //                   ),
                          //                   const SizedBox(
                          //                     width: 50,
                          //                   ),
                          //                   Expanded(
                          //                     child: Container(
                          //                         padding:
                          //                             const EdgeInsets.only(
                          //                                 top: 20),
                          //                         child: Column(
                          //                           children: [
                          //                             Text(
                          //                               "${myTodos[index].taskName}",
                          //                               style: TextStyle(
                          //                                   fontSize: 15,
                          //                                   color: color
                          //                                       .AppColor
                          //                                       .homePageTitle),
                          //                             ),
                          //                             Text(
                          //                               "${myTodos[index].startTime}",
                          //                               style: TextStyle(
                          //                                   fontSize: 15,
                          //                                   color: Colors.grey),
                          //                             ),
                          //                             Text(
                          //                               "${myTodos[index].startTime}",
                          //                               style: TextStyle(
                          //                                   fontSize: 15,
                          //                                   color: Colors.grey),
                          //                             ),
                          //                           ],
                          //                         )),
                          //                   ),
                          //                   const SizedBox(
                          //                     width: 50,
                          //                   ),
                          //                   Padding(
                          //                     padding:
                          //                         const EdgeInsets.all(8.0),
                          //                     child: Icon(
                          //                       Icons
                          //                           .arrow_forward_ios_outlined,
                          //                       size: 20,
                          //                       color: color
                          //                           .AppColor.homePageIcons,
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //             ),
                          //           );
                          //         }),
                          //       )),
                          // )
                          //Sized
        
                          // Center(
                          //   child: ButtonBar(
                          //     alignment: MainAxisAlignment.center,
                          //     children: [
                          //       ElevatedButton(
                          //         style: ElevatedButton.styleFrom(
                          //             backgroundColor: Colors.green,
                          //             shape: RoundedRectangleBorder(
                          //                 borderRadius:
                          //                     BorderRadius.circular(100))),
                          //         child: const Icon(
                          //           Icons.add,
                          //           size: 40,
                          //           color: Colors.white,
                          //         ),
                          //         onPressed: () {
                          //           Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) =>
                          //                       const CreateNewTask()));
                          //         },
                          //       ),
                          //     ],
                          //   ),
                          // )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ));
  }

  void getTodos() async {
    await DatabaseRepository.instance.getAllTodos().then((value) {
      setState(() {
        myTodos = value;
        print(myTodos);
      });
    }).catchError((e) => debugPrint(e.toString()));
  }
}
