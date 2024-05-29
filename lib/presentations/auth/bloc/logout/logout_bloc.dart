import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/data/datasources/auth_remotes_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthRemoteDatasource authRemoteDatasource;

  LogoutBloc(this.authRemoteDatasource) : super(_Initial()) {
    on<_Logout>(
      (event, emit) async {
        emit(const _Loading());
        final result = await authRemoteDatasource.logout();
        result.fold(
          (error) => emit(_Error(error)),
          (success) => emit(
            const _Success(),
          ),
        );
      },
    );
  }
}
