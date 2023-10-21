import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DatabaseProvider {
  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();
  Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await createDatabase();
    return _database;
  }

  Future<Database> createDatabase() async {
    String path = await getDatabasesPath();
    path = '$path/viaja_smart.db';

    final database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        // Tabla Usuarios
        await db.execute('''
          CREATE TABLE Usuarios (
            userID INTEGER PRIMARY KEY AUTOINCREMENT,
            nombre TEXT NOT NULL,
            username TEXT NOT NULL,
            email TEXT NOT NULL,
            password TEXT NOT NULL
          );
        ''');

        // Tabla Carrito
        await db.execute('''
          CREATE TABLE Carrito (
            carritoID INTEGER PRIMARY KEY,
            userID INTEGER,
            FOREIGN KEY (userID) REFERENCES Usuarios (userID)
          );
        ''');

        // Tabla Empresas
        await db.execute('''
          CREATE TABLE Empresas (
            empresaID INTEGER PRIMARY KEY AUTOINCREMENT,
            NombreEmpresa TEXT NOT NULL,
            direccion TEXT,
            contactoNombre TEXT,
            contactoEmail TEXT NOT NULL,
            cuenta CHAR(25) NOT NULL
          );
        ''');

        // Tabla ProductosServicios
        await db.execute('''
          CREATE TABLE ProductosServicios (
            productoID INTEGER PRIMARY KEY AUTOINCREMENT,
            NombreProductoServicio TEXT NOT NULL,
            etiqueta TEXT,
            descripcion TEXT,
            precio REAL NOT NULL,
            empresaID INTEGER,
            FOREIGN KEY (empresaID) REFERENCES Empresas (empresaID)
          );
        ''');

        // Tabla DetallesDelCarrito
        await db.execute('''
          CREATE TABLE DetallesDelCarrito (
            detalleID INTEGER PRIMARY KEY,
            carritoID INTEGER,
            productoID INTEGER,
            cantidad INTEGER,
            FOREIGN KEY (carritoID) REFERENCES Carrito (carritoID),
            FOREIGN KEY (productoID) REFERENCES ProductosServicios (productoID)
          );
        ''');

        // Tabla Compras
        await db.execute('''
          CREATE TABLE Compras (
            compraID INTEGER PRIMARY KEY AUTOINCREMENT,
            usuarioID INTEGER,
            carritoID INTEGER,
            empresaID INTEGER,
            productoID INTEGER,
            FechaCompra DATE,
            montoTotal REAL NOT NULL,
            FOREIGN KEY (usuarioID) REFERENCES usuarios (userID),
            FOREIGN KEY (carritoID) REFERENCES carrito (carritoID),
            FOREIGN KEY (empresaID) REFERENCES ProductosServicios (empresaID),
            FOREIGN KEY (productoID) REFERENCES DetallesDelCarrito (productoID)
          );
        ''');

        // Tabla ImagenesEmpresa
        await db.execute('''
          CREATE TABLE ImagenesEmpresa (
            ImagenID INTEGER PRIMARY KEY AUTOINCREMENT,
            empresaID INTEGER NOT NULL,
            NombreArchivo TEXT,
            DatosImagen BLOB,
            FOREIGN KEY (empresaID) REFERENCES Empresas (empresaID)
          );
        ''');

        // Tabla ImagenesProducto
        await db.execute('''
          CREATE TABLE ImagenesProducto (
            ImagenID INTEGER PRIMARY KEY AUTOINCREMENT,
            ProductoID INTEGER NOT NULL,
            NombreArchivo TEXT,
            DatosImagen BLOB,
            FOREIGN KEY (ProductoID) REFERENCES ProductosServicios (ProductoID)
          );
        ''');

        // Tabla ImagenesUsuarios
        await db.execute('''
          CREATE TABLE ImagenesUsuarios (
            ImagenID INTEGER PRIMARY KEY AUTOINCREMENT,
            userID INTEGER NOT NULL,
            NombreArchivo TEXT,
            DatosImagen BLOB,
            FOREIGN KEY (userID) REFERENCES Usuarios (userID)
          );
        ''');

        // Tabla TransportePublico
        await db.execute('''
          CREATE TABLE TransportePublico (
            TransporteID INTEGER PRIMARY KEY AUTOINCREMENT,
            NombreTransporte TEXT NOT NULL,
            Descripcion TEXT,
            Tarifa REAL NOT NULL,
            Origen TEXT NOT NULL,
            Destino TEXT NOT NULL
          );
        ''');

        // Tabla pedidos
        await db.execute('''
          CREATE TABLE pedidos (
            PedidoID INTEGER PRIMARY KEY AUTOINCREMENT,
            empresaID INTEGER,
            userID INTEGER,
            PagoID INTEGER,
            productoID INTEGER,
            FOREIGN KEY (empresaID) REFERENCES Empresas (empresaID),
            FOREIGN KEY (userID) REFERENCES Usuarios (userID),
            FOREIGN KEY (pagoID) REFERENCES Compras (compraID),
            FOREIGN KEY (productoID) REFERENCES DetallesDelCarrito (productoID)
          );
        ''');
      },
    );
    return database;
  }

  // Método para insertar un nuevo usuario en la tabla "Usuarios".
  Future<void> insertUsuario(
      String nombre, String username, String email, String passwordHash) async {
    final newDatabase = await database;

    final usuario = {
      'nombre': nombre,
      'username': username,
      'email': email,
      'password': passwordHash,
    };

    await newDatabase!.insert('Usuarios', usuario);
    await insertUsuario('predro', 'pedro', '@gmail.com', '12345678');

  }

  Future<bool?> checkUser(String email, String password) async {
    final db = await database;
    final result = await db?.query(
      'Usuarios',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );
    return result?.isNotEmpty; // Devuelve true si el usuario existe

  }
}
