import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schedule/model/home_model.dart';
import 'package:schedule/view/components/core(reusable%20components)/mycustom_card.dart';
import 'package:schedule/view/components/home_screen_divider/home_screen_divider.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants.dart';
import '../../viewmodel/home_screen_cubit/home_screen_cubit.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => HomeScreenCubit()..fetchdata(),
      child: BlocConsumer<HomeScreenCubit, HomeScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          HomeScreenCubit mycubit = HomeScreenCubit.get(context);

          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              //   boxShadow: [BoxShadow(color: Colors.black,blurRadius: 3 , offset: Offset(2.00 , 2.0))]
                            ),
                            child: Icon(
                              Icons.arrow_back_sharp,
                              size: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          "Shedule",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: GoogleFonts.poppins().toString()),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 8),
                          child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Colors.redAccent, width: 1),
                              ),
                              child: Icon(
                                Icons.calendar_today,
                                size: 30,
                                color: Colors.redAccent,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "11",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 40,
                              fontFamily: GoogleFonts.poppins().toString()),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Friday",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: GoogleFonts.poppins().toString()),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Nov 2022",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                  fontFamily: GoogleFonts.poppins().toString()),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                          width: 600,
                          height: 800,
                          child: mycubit.mymodel == null
                              ? Center(
                              child: CircularProgressIndicator(
                                color: Colors.deepOrange,
                                strokeWidth: 5,
                              ))
                              : ListView.builder(
                            itemBuilder: (context, index) {
                              return Mycard(
                                  mycubit.m[index].title ?? " empty",
                                  mycubit.m[index].spots ?? 10,
                                  mycubit.m[index].date ?? " empty",
                                  mycubit.m[index].placeName ?? " empty",
                                  mycubit.m[index].price ?? 10);
                            },
                            itemCount: mycubit.mydate.length,
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
