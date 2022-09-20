import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/cubit/state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  int count =0;

   bool selected = true;

   void clicked ()
   {
     selected = !selected;
     emit(SelectedState());
   }

  void IncrementProcess ()
  {
    count++;
    emit(incrementState());
  }

  void DecrementProcess ()
  {
    count--;
    emit(decrementState());
  }
}