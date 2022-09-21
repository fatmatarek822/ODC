import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/view_model/cubit/home/home_state.dart';

class HomeMainCubit extends Cubit<HomeMainState>{
  HomeMainCubit() : super(HomeMainInitial());

  static HomeMainCubit get(context) => BlocProvider.of(context);


}