import 'dart:ffi';
import 'dart:io';

void main() {
  print('------------------- task 1 ------------------------');

  Dog sobaka = Dog(
    name: 'dog',
    food: 'bone',
    location: 'dog\'s house',
    noise: 'gav-gav',
    guarding: 'guards',
  );
  sobaka.sleeping();
  sobaka.eating();
  sobaka.living();
  sobaka.makeNoise();
  sobaka.func();

  Cat koshka = Cat(
    name: 'cat',
    food: 'fish',
    location: 'house',
    noise: 'meow-meow',
    catching: 'catches',
  );
  koshka.sleeping();
  koshka.eating();
  koshka.living();
  koshka.makeNoise();
  koshka.func();

  Horse loshad = Horse(
    name: 'horse',
    food: 'grass',
    location: 'horse stable',
    noise: 'igo-go',
    running: 'runs fast and helps the farmer',
  );
  loshad.sleeping();
  loshad.eating();
  loshad.living();
  loshad.makeNoise();
  loshad.func();

  print('------------------- task 2 ------------------------');

  Student student = Student(
    'Ivan',
    'Ivanov',
    'RRT-1-04',
    4,
  );
  print('Student scholarship: ${student.getScholarship()} som');

  Aspirant aspirant = Aspirant('Petr', 'Petrov', 'SSK-1-04', 4, 'Genetics Research');
  print('Aspirant scholarship: ${aspirant.getScholarship()} som');
}

/* Task #1.
1) Создать класс Animal и расширяющие его классы Dog, Cat, Horse. 
Класс Animal содержит переменные food, location и методы makeNoise, eat, sleep. 
Метод sleep например, может выводить на консоль "Такое то животное спит". 
Dog, Cat, Horse переопределяют методы makeNoise, eat.
Добавьте переменные в классы Dog, Cat, Horse, характеризующие только этих 
животных.
*/

class Animal {
  String name;
  String food;
  String location;
  String noise;

  Animal({
    required this.name,
    required this.food,
    required this.location,
    required this.noise,
  });

  void sleeping() {
    print('the $name is sleeping now.');
  }

  void makeNoise() {
    print('the $name says $noise.');
  }

  void eating() {
    print('the $name eats $food.');
  }

  void living() {
    print('the $name lives in $location.');
  }
}

class Dog extends Animal {
  String guarding;

  Dog({
    required super.name,
    required super.food,
    required super.location,
    required super.noise,
    required this.guarding,
  });

  void func() {
    print('the $name $guarding the house.');
  }
}

class Cat extends Animal {
  String catching;

  Cat({
    required super.name,
    required super.food,
    required super.location,
    required super.noise,
    required this.catching,
  });

  void func() {
    print('the $name $catching mice.');
  }
}

class Horse extends Animal {
  String running;

  Horse({
    required super.name,
    required super.food,
    required super.location,
    required super.noise,
    required this.running,
  });

  void func() {
    print('the $name $running with the farm work.');
  }
}

/* Task #2.
2) Создайте пример наследования, реализуйте класс Student (родительский класс)
и класс Aspirant, аспирант отличается от студента наличием некой научной работы.
а) Класс Student содержит переменные: String firstName, lastName, group. 
А также, double averageMark, содержащую среднюю оценку.
б) Создать класс Aspirant, который наследуется от Student.
в) Создать метод getScholarship() для класса Student, который возвращает сумму 
стипендии. Если средняя оценка студента равна 5, то сумма 20000 сом, иначе 0. 
Переопределить этот метод в классе Aspirant.  Если средняя оценка аспиранта 
равна 5, то сумма 40000 сом, иначе 18000.
*/

class Student {
  String firstName;
  String lastName;
  String group;
  int averageMark;

  Student(
    this.firstName,
    this.lastName,
    this.group,
    this.averageMark,
  );

  int getScholarship() {
    if (averageMark == 5) {
      return 20000;
    } else {
      return 0;
    }
  }
}

class Aspirant extends Student {
  String scientificWork;

  Aspirant(
    String firstName,
    String lastName,
    String group,
    int averageMark,
    this.scientificWork,
  ) : super(
          firstName,
          lastName,
          group,
          averageMark,
        );

  @override
  int getScholarship() {
    if (averageMark == 5) {
      return 40000;
    } else {
      return 18000;
    }
  }
}
