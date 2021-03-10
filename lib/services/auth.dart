import 'package:firebase_auth/firebase_auth.dart';
import 'package:weight_tracker/models/user.dart';

class ServiceAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // creating user object

  MainUser _userFromFirebaseUser(User user) {
    return user != null ? MainUser(uid: user.uid) : null;
  }

  // tracking the user through stream

  Stream<MainUser> get user {
    return _auth
        .authStateChanges()
        .map((User user) => _userFromFirebaseUser(user));
  }

  // login anonymously
  Future loginAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (err) {
      print('Error: ' + err);
      return null;
    }
  }

  // logging out

  Future logout() async {
    try {
      return await _auth.signOut();
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}
