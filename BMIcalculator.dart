import 'dart:io';

void main() {
  // INPUT BERAT DAN TINGGI
  print('\n=== BMI Calculator ===');
  // Menampilkan judul program
  print('Masukkan Berat badan muwh');
  double berat = double.parse(stdin.readLineSync()!);

  print('Jangan lupa tinggi badan nyh:');
  double tinggiCm = double.parse(stdin.readLineSync()!);

  // Konversi tinggi badan ke meter
  double tinggiMeter = tinggiCm / 100;

  // NGITUNG BMI
  double bmi = menghitungBMI(berat, tinggiMeter);

  // MENENTUKAN KATEGORI BMI
  String kategori = inputKategoriBMI(bmi);

  // OUTPUT BMI
  print('BMI-mu adalah: ${bmi.toStringAsFixed(2)}');
  print('Kategori BMI: $kategori');
}

double menghitungBMI(double berat, double tinggi) {
  return berat / (tinggi * tinggi);
}

String inputKategoriBMI(double bmi) {
  if (bmi < 18.5) {
    return 'Kamu Kurus banget sihh.... 😭';
  } else if (bmi >= 18.5 && bmi < 24.9) {
    return 'Fisiknya tolong di jaga yah 😘';
  } else if (bmi >= 25 && bmi < 29.9) {
    return 'Jangan berat-berat atuwh 😅';
  } else {
    return 'Bakpao 🥰';
  }
}
