import 'package:Moview/app/bloc/bloc_base.dart';
import 'package:Moview/app/modules/splash/bloc/splash_event.dart';
import 'package:Moview/app/modules/splash/bloc/splash_state.dart';

class SplashBloc extends BlocBase<SplashEvent, SplashState> {
  @override
  SplashState get initialState => InitialSplashState();

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    if (event is InitialEvent) {
      await Future.delayed(Duration(seconds: 3));
      yield SplashAnimationState();
    }

    if (event is FinishAnimationEvent) {
      yield SplashFinishState();
    }

    if (event is FinishEvent) {
      yield FinishSplashState(isAuth: false);
    }
  }
}
