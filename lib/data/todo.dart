class Todo {
  // !
  final String title;
  final String subtitle;
  bool isDone;

  Todo({this.title = '', this.subtitle = '', this.isDone = false});

  Todo copyWith({String? title, String? subtitle, bool? isDone}) {
    return Todo(
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        isDone: isDone ?? this.isDone);
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
        title: json['title'] as String? ?? '',
        subtitle: json['subtitle'] as String? ?? '',
        isDone: json['isDone'] as bool? ?? false);
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'subtitle': subtitle, 'isDone': isDone};
  }

  @override
  String toString() {
    return '''Todo: {
      'title': $title\n 
      'subtitle': $subtitle\n 
      'isDone': $isDone\n
    }''';
  }
}














// Поле позначене ключовим словом final, що означає, що його значення можна призначити тільки один раз.

/*
Конструктор Todo:
  Він використовує ініціалізацію через параметри конструктора в фігурних дужках ({}). Це називається "named parameters".

Метод copyWith:
  Це метод, який дозволяє створити копію поточного об'єкта Todo, при цьому можна змінити деякі поля, залишивши інші незмінними.

Параметри copyWith є необов'язковими (тип String? і bool? означає, що параметри можуть бути або певного типу, або null).

Використовується оператор ?? для кожного параметра. Якщо передане значення не null, використовується воно, інакше береться поточне значення відповідного поля об'єкта.


Підсумок
Клас Todo представляє завдання з трьома полями: title, subtitle та isDone. Конструктор дозволяє створювати об'єкти з заданими або значеннями за замовчуванням. Метод copyWith дозволяє створювати нові об'єкти Todo з оновленими значеннями деяких полів, зберігаючи інші поля без змін.

============================================================================================================================================================================
Фабричний конструктор fromJson:

Оголошується за допомогою ключового слова factory.
Приймає на вхід Map<String, dynamic>, який представляє JSON-дані.
Використовує ці дані для створення нового об'єкта Todo.
Використовуються оператори приведення типів (as String? та as bool?), щоб безпечно перетворити значення з JSON.
Якщо якесь значення відсутнє в JSON, використовується значення за замовчуванням (порожній рядок або false).
 */