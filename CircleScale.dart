import 'dart:io';
import 'dart:math';

void main() {
  // Fungsi anonim untuk menghitung luas lingkaran
  var hitungLuasLingkaran = (double jariJari) {
    return pi * pow(jariJari, 2);
  };

  double jariJari;

  while (true) {
    // Input jari-jari lingkaran
    print("Masukkan jari-jari lingkaran:");
    var input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("=========================");
      print("     The page says    ");
      print("=========================");
      print(" ");
      print("masukkan angka terlebih dulu.");
      print(" ");
      continue;
    }

    try {
      jariJari = double.parse(input);
      break; // Exit the loop if input is valid
    } catch (e) {
      print("=========================");
      print("     The page says    ");
      print("=========================");
      print(" ");
      print("tidak bisa input huruf.");
      print(" ");
    }
  }

  // Hitung luas lingkaran menggunakan fungsi anonim
  var luas = hitungLuasLingkaran(jariJari);

  // Tampilkan hasil
  print("Luas lingkaran dengan jari-jari $jariJari adalah: $luas");
}
