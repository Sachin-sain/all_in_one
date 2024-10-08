import 'package:all_in_one/provider/providerPage.dart';
import 'package:all_in_one/provider/providercontroller.dart';
import 'package:all_in_one/redux/conterIntcremenetanddecrementpage.dart';
import 'package:all_in_one/redux/reducercounter.dart';
import 'package:all_in_one/redux/statecounter.dart';
import 'package:all_in_one/serchwithfilter/searchpage.dart';
import 'package:all_in_one/share/share.dart';
import 'package:all_in_one/sharedprefernce/sharedprefernce1.dart';
import 'package:all_in_one/sharedprefernce/shareprefernece.dart';
import 'package:all_in_one/sharedprefernceExample/Splash.dart';
import 'package:all_in_one/shimmereffect/shimmereffect.dart';
import 'package:all_in_one/stream/streampage.dart';
import 'package:all_in_one/stream/streampage1.dart';
import 'package:all_in_one/websocket/livedata.dart';
import 'package:all_in_one/websocket/sendmessage.dart';
import 'package:all_in_one/websocket/sendmessageandaddinlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'animation/animation.dart';
import 'checkconnctivity/checkconnctivity.dart';
import 'copytoclipboard/copytoclipboard.dart';
import 'design/lottery.dart';
import 'encapsulation/encapsulatio.dart';
import 'getstorage/getstoragepage.dart';
import 'image_picker/image_picker.dart';
import 'language/translations.dart';
import 'loadingcamera/loadingcamera.dart';
import 'loadpageandurl/launchurl.dart';
import 'loadpageandurl/loadwepage.dart';
import 'maplistinwidgets/maplistinwudgets.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  ///encapsulation
  Student student=Student("Sachin", 21);
  print(student.name);
 print(student.age);
 student.display();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final store = Store<AppState>(
      reducerCounter,
      initialState: AppState(count: 0), // Set the initial state
    );
    
    return ChangeNotifierProvider(
      create: (BuildContext context)=>ProviderController(),
      child: StoreProvider<AppState>(
        store: store,
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: AppTranslations(), // Set the translations
          locale: const Locale('en', 'US'), // Default locale is English
          fallbackLocale: const Locale('en', 'US'),
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          // home:    CounterScreen(store:store,),
          home: const ShareApp(),
        ),
      ),
    );
  }
}
