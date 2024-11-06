import 'dart:io';

String? saved_username = "";
String? saved_password = "";

void main() {
  register();
  login();
}

void register() {
  print("register");

  stdout.write("Masukkan username: ");
  String? username = stdin.readLineSync();

  stdout.write("Masukkan password: ");
  String? password = stdin.readLineSync();

  saved_username = username.toString();
  saved_password = password.toString();
  
  print("Registrasi berhasil!");
}

void login() {
  stdout.write("Masukkan username: ");
  String? inputUsername = stdin.readLineSync();

  stdout.write("Masukkan password: ");
  String? inputPassword = stdin.readLineSync();

  if (inputUsername == saved_username && inputPassword == saved_password) {
    print("Login berhasil");
  } else {
    print("Login gagal");
  }
}
