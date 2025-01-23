void main() {
  // Задание 1. Класс "Человек"
  var person1 = Person1('Алексей', 30, 'Мужской');
  person1.displayInfo();
  person1.increaseAge();
  person1.changeName('Александр');
  person1.displayInfo();

  // Задание 2. Наследование: Класс "Работник" и "Менеджер"
  var worker1 = Worker1('Иван', 25, 'Мужской', 50000);
  var manager1 = Manager1('Мария', 35, 'Женский', 80000, [worker1]);
  manager1.displayInfo();
  print('Зарплата: ${manager1.salary}');

  // Задание 3. Полиморфизм: Животные
  List<Animal1> animals1 = [Dog1(), Cat1(), Cow1()];
  for (var animal in animals1) {
    animal.makeSound();
  }

  // Задание 4. Абстрактный класс "Транспорт"
  var car1 = Car1();
  var bike1 = Bike1();
  car1.move();
  bike1.move();

  // Задание 5. Класс "Книга" и "Библиотека"
  var library1 = Library1();
  library1.addBook(Book1('Книга 1', 'Автор 1', 2000));
  library1.addBook(Book1('Книга 2', 'Автор 2', 2001));
  var booksByAuthor1 = library1.findByAuthor('Автор 1');
  var booksByYear1 = library1.findByYear(2001);
  print(booksByAuthor1);
  print(booksByYear1);

  // Задание 6. Инкапсуляция: Банк
  var account1 = BankAccount1('123456', 1000);
  account1.deposit(500);
  account1.withdraw(200);
  print('Баланс: ${account1.getBalance()}');

  // Задание 7. Счетчик объектов
  var counter1 = Counter1();
  var counter2 = Counter1();
  print('Количество объектов: ${Counter1.getCount()}');

  // Задание 8. Площадь фигур
  var circle1 = Circle1(5);
  var rectangle1 = Rectangle1(4, 6);
  print('Площадь круга: ${circle1.getArea()}');
  print('Площадь прямоугольника: ${rectangle1.getArea()}');

  // Задание 9. Наследование: Животные и их движения
  var fish1 = Fish1();
  var bird1 = Bird1();
  var dog1 = Dog1();
  fish1.move();
  bird1.move();
  dog1.move();

  // Задание 10. Работа с коллекциями: Университет
  var university1 = University1();
  university1.addStudent(Student1('Алексей', 'Группа 1', 4.5));
  university1.addStudent(Student1('Мария', 'Группа 2', 3.8));
  university1.sortByName();
  var topStudents1 = university1.filterByGrade(4.0);
  print(topStudents1);

  // Задание 11. Класс "Магазин"
  var store1 = Store1();
  store1.addProduct(Product1('Яблоко', 1.0, 10));
  store1.addProduct(Product1('Банан', 1.5, 5));
  var productB = store1.findProduct('Яблоко');
  print(productB);
  store1.removeProduct('Банан');
  print(store1.products);

  // Задание 12. Интерфейс "Платежная система"
  var creditCard1 = CreditCard1();
  var payPal1 = PayPal1();
  creditCard1.pay(100);
  payPal1.refund(50);

  // Задание 13. Генерация уникальных идентификаторов
  var id1 = UniqueID1();
  var id2 = UniqueID1();
  print('Уникальный идентификатор: ${UniqueID1.getUniqueID()}');

  // Задание 14. Класс "Точка" и "Прямоугольник"
  var topLeft1 = Point1(0, 1);
  var bottomRight1 = Point1(1, 0);
  var rectangle2 = Rectangle2(topLeft1, bottomRight1);
  print('Площадь прямоугольника: ${rectangle2.getArea()}');

  // Задание 15. Комплексные числа
  var c1 = ComplexNumber1(1, 2);
  var c2 = ComplexNumber1(3, 4);
  var sum1 = c1.add(c2);
  var difference1 = c1.subtract(c2);
  var product1 = c1.multiply(c2);
  var quotient1 = c1.divide(c2);
  print('Сумма: ${sum1.real} + ${sum1.imaginary}i');
  print('Разность: ${difference1.real} + ${difference1.imaginary}i');
  print('Произведение: ${product1.real} + ${product1.imaginary}i');
  print('Частное: ${quotient1.real} + ${quotient1.imaginary}i');

  // Задание 16. Перегрузка операторов: Матрица
  var matrix1 = Matrix1([[1, 2], [3, 4]]);
  var matrix2 = Matrix1([[5, 6], [7, 8]]);
  var sumMatrix1 = matrix1.add(matrix2);
  var productMatrix1 = matrix1.multiply(matrix2);
  print('Сумма матриц: $sumMatrix1');
  print('Произведение матриц: $productMatrix1');

  // Задание 17. Создание игры с использованием ООП
  var player1 = Player1('Герой', 100);
  var enemy1 = Enemy1('Враг', 50);
  var weapon1 = Weapon1('Меч', 20);
  player1.attack(enemy1);
  weapon1.use(enemy1);

  // Задание 18. Автоматизированная система заказов
  var customer1 = Customer1('Иван');
  var order1 = Order1(customer1);
  order1.addProduct(Product2('Яблоко', 1.0));
  order1.addProduct(Product2('Банан', 1.5));
  print('Общая стоимость заказа: ${order1.getTotal()}');

  // Задание 19. Наследование: Электроника
  var smartphone1 = Smartphone1('Apple');
  var laptop1 = Laptop1('Dell');
  smartphone1.turnOn();
  smartphone1.takePhoto();
  laptop1.turnOff();
  laptop1.code();

  // Задание 20. Игра "Крестики-нолики"
  var player2 = Player2('Игрок 1', 'X');
  var game1 = Game1(player2);
  game1.makeMove(0, 0);
  game1.makeMove(1, 1);
  game1.makeMove(0, 1);
  game1.makeMove(2, 2);
  game1.printBoard();
}

// Задание 1. Класс "Человек"
class Person1 {
  String name;
  int age;
  String gender;

  Person1(this.name, this.age, this.gender);

  void displayInfo() {
    print('Имя: $name, Возраст: $age, Пол: $gender');
  }

  void increaseAge() {
    age++;
  }

  void changeName(String newName) {
    name = newName;
  }
}

// Задание 2. Наследование: Класс "Работник" и "Менеджер"
class Worker1 extends Person1 {
  double salary;

  Worker1(String name, int age, String gender, this.salary) : super(name, age, gender);
}

class Manager1 extends Worker1 {
  List<Worker1> subordinates;

  Manager1(String name, int age, String gender, double salary, this.subordinates) : super(name, age, gender, salary);
}

// Задание 3. Полиморфизм: Животные
abstract class Animal1 {
  void makeSound();
}

class Dog1 implements Animal1 {
  void makeSound() {
    print('Гав-гав');
  }

  void move() {
    print('Собака бегает');
  }
}

class Cat1 implements Animal1 {
  void makeSound() {
    print('Мяу-мяу');
  }
}

class Cow1 implements Animal1 {
  void makeSound() {
    print('Му-му');
  }
}

// Задание 4. Абстрактный класс "Транспорт"
abstract class Transport1 {
  void move();
}

class Car1 extends Transport1 {
  void move() {
    print('Машина едет');
  }
}

class Bike1 extends Transport1 {
  void move() {
    print('Велосипед едет');
  }
}

// Задание 5. Класс "Книга" и "Библиотека"
class Book1 {
  String title;
  String author;
  int year;

  Book1(this.title, this.author, this.year);
}

class Library1 {
  List<Book1> books = [];

  void addBook(Book1 book) {
    books.add(book);
  }

  List<Book1> findByAuthor(String author) {
    return books.where((book) => book.author == author).toList();
  }

  List<Book1> findByYear(int year) {
    return books.where((book) => book.year == year).toList();
  }
}

// Задание 6. Инкапсуляция: Банк
class BankAccount1 {
  String _accountNumber;
  double _balance;

  BankAccount1(this._accountNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print('Недостаточно средств');
    }
  }

  double getBalance() {
    return _balance;
  }
}

// Задание 7. Счетчик объектов
class Counter1 {
  static int count = 0;

  Counter1() {
    count++;
  }

  static int getCount() {
    return count;
  }
}

// Задание 8. Площадь фигур
abstract class Shape1 {
  double getArea();
}

class Circle1 extends Shape1 {
  double radius;

  Circle1(this.radius);

  double getArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle1 extends Shape1 {
  double width;
  double height;

  Rectangle1(this.width, this.height);

  double getArea() {
    return width * height;
  }
}

// Задание 9. Наследование: Животные и их движения
class Animal2 {
  void move() {
    print('Животное двигается');
  }
}

class Fish1 extends Animal2 {
  void move() {
    print('Рыба плавает');
  }
}

class Bird1 extends Animal2 {
  void move() {
    print('Птица летает');
  }
}

class Dog2 extends Animal2 {
  void move() {
    print('Собака бегает');
  }
}

// Задание 10. Работа с коллекциями: Университет
class Student1 {
  String name;
  String group;
  double grade;

  Student1(this.name, this.group, this.grade);
}

class University1 {
  List<Student1> students = [];

  void addStudent(Student1 student) {
    students.add(student);
  }

  void sortByName() {
    students.sort((a, b) => a.name.compareTo(b.name));
  }

  List<Student1> filterByGrade(double minGrade) {
    return students.where((student) => student.grade >= minGrade).toList();
  }
}

// Задание 11. Класс "Магазин"
class Product1 {
  String name;
  double price;
  int quantity;

  Product1(this.name, this.price, this.quantity);
}

class Store1 {
  List<Product1> products = [];

  void addProduct(Product1 product) {
    products.add(product);
  }

  void removeProduct(String name) {
    products.removeWhere((product) => product.name == name);
  }

  Product1? findProduct(String name) {
    return products.firstWhere((product) => product.name == name);
  }
}

// Задание 12. Интерфейс "Платежная система"
abstract class PaymentSystem1 {
  void pay(double amount);
  void refund(double amount);
}

class CreditCard1 implements PaymentSystem1 {
  void pay(double amount) {
    print('Оплата $amount по кредитной карте');
  }

  void refund(double amount) {
    print('Возврат $amount на кредитную карту');
  }
}

class PayPal1 implements PaymentSystem1 {
  void pay(double amount) {
    print('Оплата $amount через PayPal');
  }

  void refund(double amount) {
    print('Возврат $amount через PayPal');
  }
}

// Задание 13. Генерация уникальных идентификаторов
class UniqueID1 {
  static int _counter = 0;

  UniqueID1() {
    _counter++;
  }

  static int getUniqueID() {
    return _counter;
  }
}

// Задание 14. Класс "Точка" и "Прямоугольник"
class Point1 {
  double x;
  double y;

  Point1(this.x, this.y);
}

class Rectangle2 {
  Point1 topLeft;
  Point1 bottomRight;

  Rectangle2(this.topLeft, this.bottomRight);

  double getArea() {
    return (bottomRight.x - topLeft.x) * (topLeft.y - bottomRight.y);
  }
}

// Задание 15. Комплексные числа
class ComplexNumber1 {
  double real;
  double imaginary;

  ComplexNumber1(this.real, this.imaginary);

  ComplexNumber1 add(ComplexNumber1 other) {
    return ComplexNumber1(real + other.real, imaginary + other.imaginary);
  }

  ComplexNumber1 subtract(ComplexNumber1 other) {
    return ComplexNumber1(real - other.real, imaginary - other.imaginary);
  }

  ComplexNumber1 multiply(ComplexNumber1 other) {
    return ComplexNumber1(
      real * other.real - imaginary * other.imaginary,
      real * other.imaginary + imaginary * other.real,
    );
  }

  ComplexNumber1 divide(ComplexNumber1 other) {
    double denominator = other.real * other.real + other.imaginary * other.imaginary;
    return ComplexNumber1(
      (real * other.real + imaginary * other.imaginary) / denominator,
      (imaginary * other.real - real * other.imaginary) / denominator,
    );
  }
}

// Задание 16. Перегрузка операторов: Матрица
class Matrix1 {
  List<List<int>> data;

  Matrix1(this.data);

  Matrix1 add(Matrix1 other) {
    List<List<int>> result = [];
    for (int i = 0; i < data.length; i++) {
      List<int> row = [];
      for (int j = 0; j < data[i].length; j++) {
        row.add(data[i][j] + other.data[i][j]);
      }
      result.add(row);
    }
    return Matrix1(result);
  }

  Matrix1 multiply(Matrix1 other) {
    List<List<int>> result = [];
    for (int i = 0; i < data.length; i++) {
      List<int> row = [];
      for (int j = 0; j < other.data[0].length; j++) {
        int sum = 0;
        for (int k = 0; k < data[i].length; k++) {
          sum += data[i][k] * other.data[k][j];
        }
        row.add(sum);
      }
      result.add(row);
    }
    return Matrix1(result);
  }
}

// Задание 17. Создание игры с использованием ООП
class Player1 {
  String name;
  int health;

  Player1(this.name, this.health);

  void attack(Enemy1 enemy) {
    enemy.takeDamage(10);
  }
}

class Enemy1 {
  String name;
  int health;

  Enemy1(this.name, this.health);

  void takeDamage(int damage) {
    health -= damage;
    if (health <= 0) {
      print('$name повержен!');
    } else {
      print('$name получил $damage урона. Осталось здоровья: $health');
    }
  }
}

class Weapon1 {
  String name;
  int damage;

  Weapon1(this.name, this.damage);

  void use(Enemy1 enemy) {
    enemy.takeDamage(damage);
  }
}

// Задание 18. Автоматизированная система заказов
class Product2 {
  String name;
  double price;

  Product2(this.name, this.price);
}

class Customer1 {
  String name;

  Customer1(this.name);
}

class Order1 {
  Customer1 customer;
  List<Product2> products = [];

  Order1(this.customer);

  void addProduct(Product2 product) {
    products.add(product);
  }

  double getTotal() {
    return products.fold(0, (sum, product) => sum + product.price);
  }
}

// Задание 19. Наследование: Электроника
class Device1 {
  String brand;

  Device1(this.brand);

  void turnOn() {
    print('$brand включен');
  }

  void turnOff() {
    print('$brand выключен');
  }
}

class Smartphone1 extends Device1 {
  Smartphone1(String brand) : super(brand);

  void takePhoto() {
    print('$brand сделал фото');
  }
}

class Laptop1 extends Device1 {
  Laptop1(String brand) : super(brand);

  void code() {
    print('$brand кодирует');
  }
}

// Задание 20. Игра "Крестики-нолики"
class Player2 {
  String name;
  String symbol;

  Player2(this.name, this.symbol);
}

class Game1 {
  List<List<String>> board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
  ];
  Player2 currentPlayer;

  Game1(this.currentPlayer);

  void makeMove(int row, int col) {
    if (board[row][col] == ' ') {
      board[row][col] = currentPlayer.symbol;
      if (checkWin()) {
        print('$currentPlayer.name победил!');
      } else {
        switchPlayer();
      }
    } else {
      print('Клетка занята');
    }
  }

  void switchPlayer() {
    currentPlayer = currentPlayer.symbol == 'X' ? Player2('Игрок 2', 'O') : Player2('Игрок 1', 'X');
  }

  bool checkWin() {
    for (int i = 0; i < 3; i++) {
      if (board[i][0] == currentPlayer.symbol && board[i][1] == currentPlayer.symbol && board[i][2] == currentPlayer.symbol) {
        return true;
      }
      if (board[0][i] == currentPlayer.symbol && board[1][i] == currentPlayer.symbol && board[2][i] == currentPlayer.symbol) {
        return true;
      }
    }
    if (board[0][0] == currentPlayer.symbol && board[1][1] == currentPlayer.symbol && board[2][2] == currentPlayer.symbol) {
      return true;
    }
    if (board[0][2] == currentPlayer.symbol && board[1][1] == currentPlayer.symbol && board[2][0] == currentPlayer.symbol) {
      return true;
    }
    return false;
  }

  void printBoard() {
    for (var row in board) {
      print(row.join(' | '));
    }
  }
}

