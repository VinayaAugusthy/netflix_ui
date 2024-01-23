// ignore_for_file: depend_on_referenced_packages


import 'package:bloc/bloc.dart';


import 'package:dartz/dartz.dart';


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';


import 'package:netflix/domain/core/failures/main_failure.dart';


import 'package:netflix/domain/model/downloads/download_model.dart';


import 'package:netflix/domain/model/downloads/i_downloads_repo.dart';


part 'downloads_event.dart';


part 'downloads_state.dart';


part 'downloads_bloc.freezed.dart';

@injectable //where ever we need IDownloadsRepo , downloadsrepository will call or replace there
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {

  final IDownloadsRepo _downloadsRepo;


  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {

    on<_GetDownloadsImages>((event, emit) async {

      emit(state.copyWith(

        isLoading: true,

        downloadsFailureOrSuccessOption: none(),

      ));


      final Either<MainFailure, List<Downloads>> downloadsOption =

          await _downloadsRepo.getDownloadsImages();


      emit(

        downloadsOption.fold(

          (failure) => state.copyWith(

            isLoading: false,
            downloadsFailureOrSuccessOption: some(Left(failure)),

          ),

          (success) => state.copyWith(

            isLoading: false,
            downloads: success,
            downloadsFailureOrSuccessOption: some(Right(success)),

          ),

        ),

      );

    });

  }

}

