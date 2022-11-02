// void main() {
//   //tipe data dan variable
//   //var
//   var mahasiswa = "Jejen";
//   var umur = "20";

//   print(mahasiswa + "Umur = " + umur);

//   //string
//   String mahasiswaString = "aan";

//   print(mahasiswaString);

//   //int
//   int semester = 3;

//   print(semester);

//   //double
//   double ipk;
//   ipk = 3.8;

//   print(ipk);

//   //boolean
//   bool benar = true;
//   bool salah = false;
//   bool tidakbenar = true;
//   bool tidaksalah = false;

//   //List
//   List<String> jurusan = [
//     "Teknik Informatika",
//     "Sistem Informasi",
//     "DKV",
//     semester.toString(),
//     ipk.toString()
//   ];

//   print(jurusan);

//   //Map
//   Map kelas = {"nama": "beben", "kelas": "TI 2"};

//   print(kelas);

//   //OPERATOR
//   int a, b;
//   a = 9;
//   b = 7;
//   print("a = " + a.toString());
//   print("b = " + b.toString());

//   print(a + b);
//   print(a - b);
//   print(a / b);
//   print(a * b);
//   print(a > b);

//   //conditional
//   print("conditional");
//   var nilai;
//   nilai = 80;

//   if (nilai >= 80) {
//     print("A");
//   } else if (nilai <= 80 && nilai >= 50) {
//     print("B");
//   } else {
//     print("tidak lulus");
//   }

//   print("-------");
//   nilai >= 80 ? print("A") : print("Tidak A");

//   //funtion
//   print("function");

//   hitungNilai();
//   hitungNilai1(75, 90);
//   var p = hitungNilai1(50, 2);
//   print(p);
//   var n = hitungNilai2(mapel1: 50, mapel2: 2);
//   print(n);
//   var o = hitungNilai3(79, 100);

//   //final keyword => inutable / tidak bisa dirubah
//   //const final
//   //const
//   // const String mahasiswa = "beben";
//   //final
//   final String mahasiswafk;

//   mahasiswafk = "beben";

//   print(mahasiswafk);

//   //null safety
//   // ? ! late
//   // ? digunakan dia boleh null
//   // String? jurusan;
//   // untuk diisi nanti
//   late String jurusan;

//   jurusanns = "Teknik Informatika";
//   //jurusan = "TI";
//   // memaksa untuk dijalankan / yakin ada datanya
//   print(jurusanns.length);

//   //perulangan looping
//   // for plus
//   for (int no = 1; no <= 5; no++) {
//     print(no);
//   }
//   // for minus
//   for (int no = 5; no >= 1; no--) {
//     print(no);
//   }
//   //while
//   int no1 = 1;
//   int no2 = 5;
//   while (no1 <= no2) {
//     print(no1);
//     no1++;
//   }
//   // do while
//   int no3 = 1;
//   int no4 = 5;
//   do {
//     print(no3);
//     no3++;
//   } while (no3 <= no4);
// }

// //function
// hitungNilai() {
//   print("hitung nilai");
// }

// //positional argument
// hitungNilai1(mapel1, mapel2, {mapel3}) {
//   var nilaiAkhir;
//   if (mapel3 != null) {
//     nilaiAkhir = mapel1 / mapel2 + mapel3;
//   } else {
//     nilaiAkhir = mapel1 / mapel2;
//   }
//   return nilaiAkhir;
// }

// //name argument
// hitungNilai2({mapel1, mapel2}) {
//   var nilaiAkhir;
//   if (mapel2 != null) {
//     nilaiAkhir = mapel1 / mapel2;
//   } else {
//     nilaiAkhir = mapel1;
//   }
//   return nilaiAkhir;
// }

// //void
// void hitungNilai3(mapel1, mapel2) {
//   var nilaiAkhir = mapel1 + mapel2;
//   print(nilaiAkhir);
// }

//oop
//class

class Kendaraan {
  String? merk;
  String? nama;
  int? kecepatan;

  //construktor
  Kendaraan({this.merk, this.nama, this.kecepatan});

  //method
  maju(int tambahKecepatan) {
    kecepatan = kecepatan! + tambahKecepatan;
    // print(kecepatan + tambahKecepatan);
  }
}

//inheritance / pewarisan
class Sedan extends Kendaraan {
  int? jumlahPintu;
  int? kecepatanMaksimal;

  Sedan({String? merk, this.jumlahPintu, this.kecepatanMaksimal})
      : super(merk: merk);
}

void main() {
  //instansiasi
  var k1 = Kendaraan(merk: "bmw", nama: "civic", kecepatan: 20);

  k1.merk = "Toyota";
  // print(k1.maju(40));
  print(k1.merk);
  print(k1.nama);
  print(k1.kecepatan);

  var k2 = Kendaraan(merk: "mitsubishi", nama: "colt", kecepatan: 40);
  k2.maju(80);
  // print(kecepatan);
  print(k2.merk);
  print(k2.nama);
  print(k2.kecepatan);

  var s1 = Sedan(jumlahPintu: 4, kecepatanMaksimal: 120, merk: "Honda");
  print('------');
  print(s1.jumlahPintu);
  print(s1.kecepatanMaksimal);
  print(s1.merk);
}
