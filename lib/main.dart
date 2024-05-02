import 'package:flutter/material.dart';
import 'package:flutter_learn/bloc_dio_sample/home_page.dart';
import 'package:flutter_learn/bloc_dio_retrofit_sample/ui/screen/home_screen.dart';
import 'package:flutter_learn/di.dart';
import 'package:flutter_learn/dio_sample/dio_jsonplaceholder_sample.dart';
import 'package:flutter_learn/dio_sample/dio_mealsdb_sample.dart';
import 'package:flutter_learn/mvvm_sample/MyMVVMJokesListApp.dart';
import 'package:flutter_learn/samples/button_samples.dart';
import 'package:flutter_learn/samples/column_samples.dart';
import 'package:flutter_learn/samples/customui_samples.dart';
import 'package:flutter_learn/samples/expanded_samples.dart';
import 'package:flutter_learn/samples/flexible_samples.dart';
import 'package:flutter_learn/samples/flexible_vs_expanded_list_samples.dart';
import 'package:flutter_learn/samples/flexible_vs_expanded_samples.dart';
import 'package:flutter_learn/samples/flexible_vs_expanded_text_samples.dart';
import 'package:flutter_learn/samples/routing_cupertino_samples.dart';
import 'package:flutter_learn/samples/routing_custom_pageroutebuilder_samples.dart';
import 'package:flutter_learn/samples/routing_material_samples.dart';
import 'package:flutter_learn/samples/routing_ongenerate_samples.dart';
import 'package:flutter_learn/samples/row_samples.dart';
import 'package:flutter_learn/samples/state_management_bloc_samples.dart';
import 'package:flutter_learn/samples/state_management_cubit_samples.dart';
import 'package:flutter_learn/samples/state_management_provider_samples.dart';
import 'package:flutter_learn/samples/stateless_vs_stateful_samples.dart';

void main() async {
  // runApp(MyButtonApp());
  // runApp(MyRowApp());
  // runApp(MyColumnApp());
  // runApp(MyExpandedApp());
  // runApp(MyFlexibleApp());
  // runApp(MyFlexiblevsExpandedApp());
  // runApp(MyFlexiblevsExpandedListApp());
  // runApp(MyFlexiblevsExpandedTextApp());

  // runApp(MyCustomUIApp());

  // runApp(MyMVVMJokesListApp());

  // runApp(MyRoutingMaterialApp());
  // runApp(MyRoutingCupertinoApp());
  // runApp(MyRoutingOnGenerateApp());
  // runApp(MyRoutingCustomPageRouteBuilderApp());

  // runApp(MyStatelessSampleApp());
  // runApp(MyStatefulSampleApp());
  // runApp(MyStateManagementProviderApp());

  // runApp(MyStateManagementBlocApp());
  // runApp(MyStateManagementCubitApp());

  // Dio API fetch print
  // fetchPosts();
  // fetchMeals();

  // Bloc Dio Retrofit DI
  await setupDi();
  // runApp(MyDioBlocApp());
  runApp(MyDioBlocRetrofitApp());
}
