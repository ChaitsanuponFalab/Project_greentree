import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GreenTreeFirebaseUser {
  GreenTreeFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

GreenTreeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GreenTreeFirebaseUser> greenTreeFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<GreenTreeFirebaseUser>(
        (user) => currentUser = GreenTreeFirebaseUser(user));
