
import 'package:ecommerce_app/infrastructure/database/tables/carts/carts_table.dart';

import 'package:ecommerce_app/infrastructure/database/tables/users/users_table.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'obay_database.g.dart';

@LazySingleton()
@UseMoor(tables: [OUsers,Carts],daos: [OUserDAO,CartDAO])
class ObayDatabase extends _$ObayDatabase {
  ObayDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(
          path: 'obay_db.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: true,
        ));

  // Bump this when changing tables and columns.

  @override
  int get schemaVersion => 9;

  @override
  MigrationStrategy get migration => MigrationStrategy(


      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {

        if (from == 8){
          await m.createAll();
        }
      }
  );
}
