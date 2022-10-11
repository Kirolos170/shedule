import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:schedule/constants.dart';
import 'package:schedule/model/home_model.dart';
import 'package:schedule/viewmodel/Database/network/dio_helper.dart';

import '../../model/home2_model.dart';
import '../Database/network/end_points.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());


  static HomeScreenCubit get(context) => BlocProvider.of(context);
  List<String> mydate = ['2022-10-8' , '2022-11-15','2022-4-15','2022-6-15'

  ];

  homemodel? mymodel;
  List<homemodel> m = [] ;

  void fetchdata() async
  {
    for (int i = 0; i < mydate.length; i++) {

      await DioHelper.getData(url: mydate[i], token: Token).then((value) {
        if (value.statusCode == 200) {
          print("loop num ${i}");
          print("data successful fetched ${i}");
        }

        // for (int i = 0; i < value.data.length; i++) {
        //   mymodel = homemodel.fromJson(value.data[i]);
        //
        // }

        mymodel = homemodel.fromJson(value.data[0]);
        m.add(mymodel!);





        print("price");
        print( m[i].price);
        print("title");
        print(m[i].title);
        print("placename");
        print(m[i].placeName);
        print("date");
        print(m[i].date);
        print("spots");
        print(m[i].spots);

        // print(mymodel!.price);
        //
        // print(mymodel!.date);
        // print(mymodel!.title);
        //
        // print(mymodel!.featuredImage);


        emit(GetdataSuccessfully());

      });


    }
print(m.length);
  }


}




