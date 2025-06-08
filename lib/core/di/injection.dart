import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDI() async {
  // Register singleton services here
  // Example: getIt.registerSingleton<ApiService>(ApiService());
  
  // Register lazy singletons for controllers
  // Example: getIt.registerLazySingleton<AuthController>(() => AuthController());
  
  // Register factories for use cases
  // Example: getIt.registerFactory<LoginUseCase>(() => LoginUseCase());
} 