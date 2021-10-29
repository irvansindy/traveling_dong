import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  // inisialisasi tipe data user
  final String id;
  final String name;
  final String email;
  final String hobby;
  final int balance;

  // definisikan konstruk data yang diperlukan
  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.hobby = '',
    this.balance = 0,
  });

  // representasi data menjadi list dengan isi data bertipe objek
  @override
  List<Object?> get props => [
        id,
        name,
        email,
        hobby,
        balance,
      ];
}
