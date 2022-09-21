import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/view_model/cubit/midterm/midterm_state.dart';

class MidtermCubit extends Cubit<MidtermState>{
  MidtermCubit() : super(MidtermInitial());

  static MidtermCubit get(context) => BlocProvider.of(context);


}