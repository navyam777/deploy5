

// This file is: test/widget_test.dart

//import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:camera/camera.dart';
import 'package:attempt6/main.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  testWidgets('SignBridge app loads', (WidgetTester tester) async {
    // Create a mock camera list
    final mockCameras = <CameraDescription>[
      CameraDescription(
        name: '0',
        lensDirection: CameraLensDirection.front,
        sensorOrientation: 0,
      ),
    ];

    // Build the app with mock cameras
    await tester.pumpWidget(MyApp(cameras: mockCameras));

    // Verify the app title appears
    expect(find.text('SignBridge'), findsWidgets);

    // Verify the loading completes
    await tester.pumpAndSettle();

    // Verify main UI elements exist
    expect(find.text('Current Sign'), findsOneWidget);
    expect(find.text('Accuracy'), findsOneWidget);
    expect(find.text('Feedback'), findsOneWidget);
  });
}
