Table Untirta {
  id int [pk]
  fakultas varchar
  jurusan varchar
  dosen varchar
  tendik varchar
  mahasiswa varchar
 }
 
 Table fakultas {
  kode int [pk]
  jumlah_fakultas int
  nama_fakultas varchar
 
 }

Ref: "fakultas"."kode" < "Untirta"."fakultas"
 Table jurusan {
  kode int [pk]
  jumlah_jurusan int
  nama_jurusan varchar
 
 }

Ref: "jurusan"."kode" < "Untirta"."jurusan"

 Table dosen {
  kode int [pk]
  nama varchar
  NIP varchar
  tempat_lahir varchar
  tanggal_lahir varchar
  alamat text
  email text
 
 }

Ref: "dosen"."kode" < "Untirta"."dosen"

 Table tendik {
  kode int [pk]
  nama varchar
  NIP varchar
  tempat_lahir varchar
  tanggal_lahir varchar
  alamat text
  email text
 
 }

Ref: "tendik"."kode" < "Untirta"."tendik"

 Table mahasiswa {
  kode int [pk]
  id_datakuliah int
  nama varchar
  NIM varchar
  fakultas varchar
  jurusan varchar
  tempat_lahir varchar
  tanggal_lahir date
  alamat text
  email text
 
 }

Ref: "mahasiswa"."kode" < "Untirta"."mahasiswa"

Table id_datakuliah {
  kode int [pk]
  KRS varchar
  KHS varchar
  dosbing varchar
 
 }

Ref: "mahasiswa"."id_datakuliah" < "id_datakuliah"."kode"

Table KRS {
  kode int [pk]
  semester_1 varchar
 semester_2 varchar
  semester_3 varchar
   semester_4 varchar
    semester_5 varchar
     semester_6 varchar
      semester_7 varchar
       semester_8 varchar
   
 
 }

Ref: "KRS"."kode" < "id_datakuliah"."KRS"

Ref: "KRS"."kode" < "id_datakuliah"."KHS"

Table KHS {
  kode int [pk]
  IPK varchar
  IPS varchar
 
 }

Ref: "KHS"."kode" < "id_datakuliah"."KHS"

Table alamat {
  kode int [pk]
  provinsi varchar
  kabupaten varchar
  kota varchar
 
 }

Ref: "alamat"."kode" < "mahasiswa"."alamat"

Ref: "alamat"."kode" < "dosen"."email"

Ref: "alamat"."kode" < "tendik"."alamat"