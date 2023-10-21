import 'package:sqflite/sqflite.dart';

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
            UserID INTEGER PRIMARY KEY AUTOINCREMENT,
            Nombre TEXT NOT NULL,
            Username TEXT NOT NULL,
            Email TEXT NOT NULL,
            PasswordHash TEXT NOT NULL
          );
        ''');

        // Tabla Carrito
        await db.execute('''
          CREATE TABLE Carrito (
            CarritoID INTEGER PRIMARY KEY,
            UserID INTEGER,
            FOREIGN KEY (UserID) REFERENCES Usuarios (UserID)
          );
        ''');

        // Tabla Empresas
        await db.execute('''
          CREATE TABLE Empresas (
            EmpresaID INTEGER PRIMARY KEY AUTOINCREMENT,
            NombreEmpresa TEXT NOT NULL,
            Direccion TEXT,
            ContactoNombre TEXT,
            ContactoEmail TEXT NOT NULL,
            Cuenta CHAR(25) NOT NULL
          );
        ''');

        // Tabla ProductosServicios
        await db.execute('''
          CREATE TABLE ProductosServicios (
            ProductoID INTEGER PRIMARY KEY AUTOINCREMENT,
            NombreProductoServicio TEXT NOT NULL,
            Etiqueta TEXT,
            Descripcion TEXT,
            Precio REAL NOT NULL,
            EmpresaID INTEGER,
            FOREIGN KEY (EmpresaID) REFERENCES Empresas (EmpresaID)
          );
        ''');

        // Tabla DetallesDelCarrito
        await db.execute('''
          CREATE TABLE DetallesDelCarrito (
            DetalleID INTEGER PRIMARY KEY,
            CarritoID INTEGER,
            ProductoID INTEGER,
            Cantidad INTEGER,
            FOREIGN KEY (CarritoID) REFERENCES Carrito (CarritoID),
            FOREIGN KEY (ProductoID) REFERENCES ProductosServicios (ProductoID)
          );
        ''');

        // Tabla Compras
        await db.execute('''
          CREATE TABLE Compras (
            CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
            UsuarioID INTEGER,
            CarritoID INTEGER,
            EmpresaID INTEGER,
            ProductoID INTEGER,
            FechaCompra DATE,
            MontoTotal REAL NOT NULL,
            FOREIGN KEY (UsuarioID) REFERENCES Usuarios (UserID),
            FOREIGN KEY (CarritoID) REFERENCES Carrito (CarritoID),
            FOREIGN KEY (EmpresaID) REFERENCES ProductosServicios (EmpresaID),
            FOREIGN KEY (ProductoID) REFERENCES DetallesDelCarrito (ProductoID)
          );
        ''');

        // Tabla ImagenesEmpresa
        await db.execute('''
          CREATE TABLE ImagenesEmpresa (
            ImagenID INTEGER PRIMARY KEY AUTOINCREMENT,
            EmpresaID INTEGER NOT NULL,
            NombreArchivo TEXT,
            DatosImagen BLOB,
            FOREIGN KEY (EmpresaID) REFERENCES Empresas (EmpresaID)
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
            UserID INTEGER NOT NULL,
            NombreArchivo TEXT,
            DatosImagen BLOB,
            FOREIGN KEY (UserID) REFERENCES Usuarios (UserID)
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
            EmpresaID INTEGER,
            UserID INTEGER,
            PagoID INTEGER,
            ProductoID INTEGER,
            FOREIGN KEY (EmpresaID) REFERENCES Empresas (EmpresaID),
            FOREIGN KEY (UserID) REFERENCES Usuarios (UserID),
            FOREIGN KEY (PagoID) REFERENCES Compras (CompraID),
            FOREIGN KEY (ProductoID) REFERENCES DetallesDelCarrito (ProductoID)
          );
        ''');

      },
    );
    return database;
  }
}
