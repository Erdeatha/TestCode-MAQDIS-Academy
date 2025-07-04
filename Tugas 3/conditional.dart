import 'dart:io';

void main() {
  stdout.write('Masukkan nama: ');
  String? nama = stdin.readLineSync();

  stdout.write('Masukkan peran: ');
  String? peran = stdin.readLineSync();

  if (nama == null || nama.trim().isEmpty) {
    print('Nama harus diisi!');
  } else if (peran == null || peran.trim().isEmpty) {
    print('Halo ${nama.trim()}, Pilih peranmu untuk memulai game!');
  } else {
    String namaBersih = nama.trim();
    String peranBersih = peran.trim();

    print('Selamat datang di Dunia Werewolf, $namaBersih');

    if (peranBersih.toLowerCase() == 'penyihir') {
      print(
        'Halo Penyihir $namaBersih, kamu dapat melihat siapa yang menjadi werewolf!',
      );
    } else if (peranBersih.toLowerCase() == 'guard') {
      print(
        'Halo Guard $namaBersih, kamu akan membantu melindungi temanmu dari serangan werewolf.',
      );
    } else if (peranBersih.toLowerCase() == 'werewolf') {
      print(
        'Halo Werewolf $namaBersih, Kamu akan memakan mangsa setiap malam!',
      );
    } else {
      print('Peran belum tersedia.');
    }
  }
}
