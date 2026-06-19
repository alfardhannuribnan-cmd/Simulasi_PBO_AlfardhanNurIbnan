<?php

require_once "Pendaftaran.php";

class PendaftaranPrestasi extends Pendaftaran
{
    protected $jenisPrestasi;
    protected $tingkatPrestasi;

    public function __construct(
        $id_pendaftaran,
        $nama_calon,
        $asal_sekolah,
        $nilai_ujian,
        $biayaPendaftaranDasar,
        $jenisPrestasi,
        $tingkatPrestasi
    ) {

        parent::__construct(
            $id_pendaftaran,
            $nama_calon,
            $asal_sekolah,
            $nilai_ujian,
            $biayaPendaftaranDasar
        );

        $this->jenisPrestasi = $jenisPrestasi;
        $this->tingkatPrestasi = $tingkatPrestasi;
    }

    // POLYMORPHISM
    public function hitungTotalBiaya()
    {
        return $this->biayaPendaftaranDasar - 50000;
    }

    public function tampilkanInfoJalur()
    {
        return "
        Jalur : Prestasi <br>
        Prestasi : {$this->jenisPrestasi} <br>
        Tingkat : {$this->tingkatPrestasi}
        ";
    }

    public function getDaftarPrestasi($db)
    {
        $sql = "
        SELECT *
        FROM tabel_pendaftaran
        WHERE jalur_pendaftaran='Prestasi'
        ";

        $query = $db->prepare($sql);
        $query->execute();

        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}

?>