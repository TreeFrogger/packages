// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:tree_frog_logger/tree_frog_logger.dart';

void main() {
  group('TreeFrogLogger', () {
    test('can be instantiated', () {
      expect(Logger(), isNotNull);
    });
  });
}
