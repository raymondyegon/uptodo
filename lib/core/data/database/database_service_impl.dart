// Package imports:
import 'package:hive/hive.dart';

// Project imports:
import 'database_service.dart';
import 'ut_boxes.dart';

class HiveDatabaseService implements DatabaseService {
  @override
  Future<void> create(
      {required dynamic collection, String? key, dynamic value}) async {
    if (collection is UtBoxes) {
      final box = await _openBox<Map>(collection);

      final mappedValue = {"data": value};
      await box.put(key, mappedValue);
    } else {
      throw Exception("`collection` must be of type UtBoxes");
    }
  }

  @override
  Future<Map<String, dynamic>> retrieve({
    required dynamic collection,
    String? key,
    required dynamic notFoundDefault,
  }) async {
    if (collection is UtBoxes) {
      final box = await _openBox<Map>(collection);
      final boxContent = box.get(key);

      return boxContent?.cast<String, dynamic>() ?? {'data': notFoundDefault};
    } else {
      throw Exception("`collection` must be of type UtBoxes");
    }
  }

  @override
  Future<void> update(
          {required dynamic collection, String? key, dynamic value}) async =>
      create(collection: collection, key: key, value: value);

  @override
  Future<void> delete({required dynamic collection, String? key}) async {
    if (collection is UtBoxes) {
      final box = await _openBox<Map>(collection);
      await box.delete(key);
    } else {
      throw Exception("`collection` must be of type OpBoxes");
    }
  }

  @override
  Future<void> clearData() async {
    await _clearBox<Map>(UtBoxes.user);
    await _clearBox<Map>(UtBoxes.settings);
  }

  /*
   *
   * Methods below are helpers that handle the actual DB implementation 
   * details of opening and reading to and from the DB.
   * These details would be different (of course) depending on what
   * underlying DB is used as backing. These are all private methods
   * because they should ideally be hidden from the outside world.
   */

  String _getBoxId(UtBoxes box) => box.index.toStringAsExponential();

  // ignore: unused_element
  Future<Box<T>> _openBox<T>(UtBoxes box, {bool encrypted = false}) async {
    Box<T> box0;
    final boxId = _getBoxId(box);

    if (Hive.isBoxOpen(boxId)) {
      box0 = Hive.box<T>(boxId);
    } else {
      try {
        box0 = await Hive.openBox<T>(boxId);
      } catch (_) {
        await Hive.deleteBoxFromDisk(boxId);
        box0 = await Hive.openBox<T>(boxId);
      }
    }

    return box0;
  }

  Future<void> _clearBox<T>(UtBoxes box) async {
    try {
      final Box<T> box0 = await _openBox<T>(box);
      await box0.clear();
    } catch (_) {}
  }

  // final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  // var containsEncryptionKey = await secureStorage.containsKey(key: 'key');
  // if (!containsEncryptionKey) {
  //   var key = Hive.generateSecureKey();
  //   await secureStorage.write(key: 'key', value: base64UrlEncode(key));
  // }

  // print(await secureStorage.readAll());

  // var encryptionKey = base64Url.decode(await secureStorage.read(key: 'key'));
  // print('Encryption key: $encryptionKey');

  // var encryptedBox = await Hive.openBox('secure_box',
  //     encryptionCipher: HiveAesCipher(encryptionKey));
  // encryptedBox.put(key, secret);

  // print(Hive.box('secure_box').values);     // Should this not be encrypted text?
  // print(encryptedBox.get(key));
}
