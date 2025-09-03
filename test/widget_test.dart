import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:nama_layout_flutter/main.dart'; // tanpa spasi!

void main() {
  testWidgets('Halaman Stadion menampilkan judul, rating, tombol, dan deskripsi',
      (WidgetTester tester) async {
    // Build widget MyApp
    await tester.pumpWidget(const MyApp());

    // ✅ Verifikasi judul stadion
    expect(find.text('Old Trafford'), findsOneWidget);

    // ✅ Verifikasi lokasi
    expect(find.text('Manchester, Inggris'), findsOneWidget);

    // ✅ Verifikasi rating
    expect(find.text('4.7'), findsOneWidget);

    // ✅ Verifikasi tombol
    expect(find.text('CALL'), findsOneWidget);
    expect(find.text('ROUTE'), findsOneWidget);
    expect(find.text('SHARE'), findsOneWidget);

    // ✅ Verifikasi deskripsi stadion
    expect(
      find.textContaining('Old Trafford adalah stadion sepak bola'),
      findsOneWidget,
    );
  });
}
