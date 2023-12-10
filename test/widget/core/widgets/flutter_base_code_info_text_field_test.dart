import 'package:alchemist/alchemist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_base_code/core/presentation/widgets/flutter_base_code_info_text_field.dart';

import '../../../utils/test_utils.dart';

void main() {
  group('FlutterBaseCodeInfoTextField Widget Tests', () {
    goldenTest(
      'renders correctly',
      fileName: 'flutter_base_code_info_text_field'.goldensVersion,
      builder: () => GoldenTestGroup(
        children: <Widget>[
          GoldenTestScenario(
            name: 'default(expanded)',
            constraints: const BoxConstraints(minWidth: 200),
            child: const FlutterBaseCodeInfoTextField(
              title: 'Title',
              description: 'Description',
            ),
          ),
          GoldenTestScenario(
            name: 'shrink',
            child: const FlutterBaseCodeInfoTextField(
              title: 'Title',
              description: 'Description',
              isExpanded: false,
            ),
          ),
        ],
      ),
    );
  });
}
