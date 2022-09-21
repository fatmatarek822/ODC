import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/view_model/cubit/section/section_state.dart';

class SectionCubit extends Cubit<SectionState>{
  SectionCubit() : super(SectionInitial());

  static SectionCubit get(context) => BlocProvider.of(context);


}