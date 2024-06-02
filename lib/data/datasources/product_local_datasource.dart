import 'package:flutter_cafe/data/models/response/product_response_model.dart';
import 'package:flutter_cafe/presentations/home/models/order_item_detail.dart';
import 'package:flutter_cafe/presentations/home/models/order_model.dart';
import 'package:flutter_cafe/presentations/home/models/product_quantity.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

///db local for product 

class ProductLocalDatasource {
  ProductLocalDatasource._init();

  static final ProductLocalDatasource instance = ProductLocalDatasource._init();

  final String tableProduct = 'products';
  final String tableOrder = 'orders';
  final String tableOrderItem = 'order_items';

  static Database? _database;

  //  "id": 7,
  //         "category_id": 3,
  //         "name": "Colin Bayer PhD",
  //         "description": "Eveniet molestiae laudantium vitae consectetur temporibus et. Dolorum cum quo quibusdam doloribus suscipit. At quo maxime excepturi nihil autem.",
  //         "image": "https://via.placeholder.com/640x480.png/00aa66?text=quasi",
  //         "price": 95,
  //         "stock": 96,
  //         "is_available": 1,
  //         "created_at": "2024-02-13T00:49:21.000000Z",
  //         "updated_at": "2024-02-13T00:49:21.000000Z"

  Future<void> _createDb(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tableProduct(
      id INTEGER PRIMARY KEY,
      productId INTEGER,
      name TEXT,
      categoryId INTEGER,
      categoryName TEXT,
      description TEXT,
      image TEXT,
      price INTEGER,
      stock INTEGER,
      status INTEGER,
      isAvailable INTEGER,
      createdAt TEXT,
      updatedAt TEXT
    )
    ''');

    await db.execute('''
    CREATE TABLE $tableOrder(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      payment_amount INTEGER,
      sub_total INTEGER,
      tax INTEGER,
      discount INTEGER,
      service_charge INTEGER,
      total INTEGER,
      payment_method TEXT,
      total_item INTEGER,
      id_kasir INTEGER,
      nama_kasir TEXT,
      transaction_time TEXT,
      is_sync INTEGER DEFAULT 0
    )
    ''');

    await db.execute('''
      CREATE TABLE $tableOrderItem(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        id_order INTEGER,
        id_product INTEGER,
        quantity INTEGER,
        price INTEGER
      )
    ''');
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = dbPath + filePath;
    return await openDatabase(path, version: 1, onCreate: _createDb);
  }
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('dbresto.db');
    return _database!;
  }

  // save order
  Future<void> saveOrder(OrderModel order) async {
    final db = await instance.database;
    int id = await db.insert(tableOrder, order.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);

    for (var item in order.orderItems) {
      await db.insert(tableOrderItem, item.toLocalMap(id),
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
  }

// insert data product
  Future<void> insertProduct(Product product) async {
    final db = await instance.database;
    await db.insert(tableProduct, product.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // get data order
  Future<List<OrderModel>> getOrderByIsNotSync() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps =
        await db.query(tableOrder, where: 'is_sync = ?', whereArgs: [0]);
    return List.generate(maps.length, (i) {
      return OrderModel.fromMap(maps[i]);
    });
  }

//   // get order item by order id
  Future<List<ProductQuantity>> getOrderItemByOrderId(int orderId) async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db
        .query(tableOrderItem, where: 'id_order = ?', whereArgs: [orderId]);
    return List.generate(maps.length, (i) {
      return ProductQuantity.fromLocalMap(maps[i]);
    });
  }

  // update order is sync
  Future<void> updateOrderIsSync(int orderId) async {
    final db = await instance.database;
    await db.update(tableOrder, {'is_sync': 1},
        where: 'id = ?', whereArgs: [orderId]);
  }

  Future<void> insertProducts(List<Product> products) async {
    final db = await instance.database;
    for (var product in products) {
      await db.insert(tableProduct, product.toLocalMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);

      print('insertd success ${product.category?.name}');
    }
  }

  Future<List<Product>> getProducts() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(tableProduct);

    print('insertd success ${maps.length}');

    return List.generate(
        maps.length, (index) => Product.fromLocalMap(maps[index]));
  }

  Future<void> deleteAllProducts() async {
    final db = await instance.database;
    await db.delete(tableProduct);
  }

  Future<List<OrderModel>> getAllOrder(
    DateTime start,
    DateTime end,
  ) async {
    final db = await instance.database;

    final List<Map<String, dynamic>> maps = await db.query(
      tableOrder,
      where: 'transaction_time BETWEEN ? AND ?',
      whereArgs: [
        DateFormat('yyyy-MM-ddTHH:mm:ss.SSSSSS').format(start),
        DateFormat('yyyy-MM-ddTHH:mm:ss').format(end),
      ],
    );
    return List.generate(maps.length, (i) {
      print('data report ${maps.length}');

      return OrderModel.fromMap(maps[i]);
    });
  }

  Future<List<OrderItemDetail>> getAllOrderItemDetails(
      DateTime start, DateTime end) async {
    final db = await instance.database;

    final List<Map<String, dynamic>> orderItemMaps = await db.rawQuery('''
    SELECT $tableOrderItem.id, $tableOrderItem.id_order, $tableOrderItem.id_product,
           $tableOrderItem.quantity, $tableOrderItem.price, $tableProduct.name as product_name,
           $tableProduct.price as product_price, $tableOrder.transaction_time as order_transaction_time
    FROM $tableOrderItem
    INNER JOIN $tableProduct ON $tableOrderItem.id_product = $tableProduct.id
    INNER JOIN $tableOrder ON $tableOrderItem.id_order = $tableOrder.id
    WHERE $tableOrder.transaction_time BETWEEN ? AND ?
    ORDER BY 
    $tableOrderItem.quantity DESC; 
  ''', [
      DateFormat('yyyy-MM-ddTHH:mm:ss.SSSSSS').format(start),
      DateFormat('yyyy-MM-ddTHH:mm:ss').format(end),
    ]);

    return List.generate(orderItemMaps.length, (i) {
      return OrderItemDetail.fromMap(orderItemMaps[i]);
    });
  }
}
