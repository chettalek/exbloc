import 'package:exbloc/bloc/data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listapi extends StatefulWidget {
  _listapiState createState() => _listapiState();
}

class _listapiState extends State<listapi> {
  final DataBloc _newsBloc = DataBloc();

  @override
  void initState() {
    _newsBloc.add(GetDataList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: Text(
            "SUM API",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: BlocBuilder<DataBloc, DataState>(
          bloc: _newsBloc,
          builder: (context, state) {
            if (state is DataLoaded) {
              return ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: state.dataModel.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        height: 280,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 50,
                                      )),
                                  SizedBox(width: 5),
                                  Text(
                                    "User_${state.dataModel[index].id}",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${state.dataModel[index].title}",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "${state.dataModel[index].body}",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }));
            } else {
              return CircularProgressIndicator();
            }

            // ListView(
            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //   children: [
            //     Container(
            //       height: 170,
            //       decoration: BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.circular(15)),
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(
            //             horizontal: 25, vertical: 15),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 Container(
            //                     decoration: BoxDecoration(
            //                         color: Colors.black,
            //                         borderRadius: BorderRadius.circular(50)),
            //                     child: Icon(
            //                       Icons.person,
            //                       color: Colors.white,
            //                       size: 50,
            //                     )),
            //                 SizedBox(width: 5),
            //                 Text(
            //                   "User_1",
            //                   style: TextStyle(fontSize: 18),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             Text(
            //               "Title",
            //               style: TextStyle(fontSize: 18),
            //             ),
            //             Text(
            //               "Body",
            //               style: TextStyle(fontSize: 13),
            //             ),
            //           ],
            //         ),
            //       ),
            //     )
            //   ],
            // );
          },
        ));
  }
}
