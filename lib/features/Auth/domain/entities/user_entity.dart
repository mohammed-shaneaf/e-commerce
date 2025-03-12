// Represnt Data Of The User Regardless Of What Api You Are Use (Services)

class UserEntity {
  final String name;
  final String email;
  final String uId;

  UserEntity({required this.name, required this.email, required this.uId});

//* Convert object to map to send it to the server , database

  toMap() => {
        'name': name,
        'email': email,
        'uId': uId,
      };


//* convert map in to userEntity object when you accepting data from database 
//* // تحويل Map إلى كائن UserModel عند جلب البيانات من قاعدة البيانات
  factory UserEntity.fromMap(Map<String, dynamic> map) => UserEntity(
        name: map['name'],
        email: map['email'],
        uId: map['uId'],
      );
}
