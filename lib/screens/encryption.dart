import 'package:cryptography/cryptography.dart';

Future<void> encrypt() async {
  final message = <int>[1, 2, 3];

  final algorithm = AesGcm.with256bits();
  final secretKey = await algorithm.newSecretKey();
  final nonce = algorithm.newNonce();
  String msg = "saiphanees";
  // Encrypt
  final secretBox = await algorithm.encrypt(
    message,
    secretKey: secretKey,
    nonce: nonce,
  );
  print('Nonce: ${secretBox.nonce}');
  print('Ciphertext: ${secretBox.cipherText}');
  print('MAC: ${secretBox.mac.bytes}');

  // Decrypt
  final clearText = await algorithm.encrypt(
    message,
    secretKey: secretKey,
  );
  print('Cleartext: $clearText');
}
