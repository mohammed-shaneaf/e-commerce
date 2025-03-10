// Represnt Data Of The User Regardless Of What Api You Are Use (Services)

class UserEntity {
  final String name;
  final String email;
  final String uId;

  UserEntity({required this.name, required this.email, required this.uId});

  toMap() => {
        'name': name,
        'email': email,
        'uId': uId,
      };
}
