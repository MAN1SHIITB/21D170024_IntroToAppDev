import 'package:firebase_auth/firebase_auth.dart';
import 'package:learnerspace_bugetapp/model/user.dart';


class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  CurrentUser? _userFromFirebaseUser(User firebaseUser){
    return firebaseUser != null ? CurrentUser(uid: firebaseUser.uid) : null;
  }
  CurrentUser? _userFromFirebase(User user){
    return user != null ? CurrentUser (uid: user.uid) : null;
  }
  // sign: email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;
      return firebaseUser;
    } catch (errorr) {
      print(errorr.toString());
      return null;
    }
  }
  // register: email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;

      // create a new document for the user with the uid
      return _userFromFirebaseUser(firebaseUser!);
    } catch (errorr) {
      print(errorr.toString());
      return null;
    }
  }
//signout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}