import 'package:uuid/uuid.dart';

class Wallet {
  String id;
  String name;

  Wallet({String? id, required this.name}) : id = id ?? const Uuid().v1();

  Wallet.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  @override
  String toString() => 'Wallet{id: $id, name: $name}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Wallet && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
