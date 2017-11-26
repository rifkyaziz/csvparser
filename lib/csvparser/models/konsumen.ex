defmodule Ecto.Konsumen do
  use Ecto.model

  schema "data" do
	field :nomor_kontrak, :string
	field :legal_name, :string
	field :tgl_golive, :string
	field :nama_notaris, :string
	field :tgl_surat_kuasa, :string
	field :nama, :string
	field :ttl, :string
	field :tgl_berlaku_ktp, :string
	field :pekerjaan, :string
	field :kewarganegaraan, :string
	field :alamat, :string
	field :rt, :string
	field :rw, :string
	field :kelurahan, :string
	field :kecamatan, :string
	field :kota, :string
	field :kodepos, :string
	field :no_ktp, :string
	field :tgl_pk, :string
	field :hutang_pokok, :string
	field :tgl_mulai_angsuran, :string
	field :angsuran, :string
	field :tenor, :string
	field :nilai_penjaminan, :string
	field :merk, :string
	field :type, :string
	field :tahun, :string
	field :warna, :string
	field :no_mesin, :string
	field :no_rangka, :string
	field :bukti_objek, :string
	field :nilai_objek, :string
	field :nama_bpkb, :string
	field :bpkb_no, :string
	field :tgl_bpkb, :string
	field :tempat_lahir, :string
	field :tgl_lahir, :string
	field :pekerjaan_pf, :string
	field :alamat_pf, :string
	field :rt_pf, :string
	field :rw_pf, :string
	field :kelurahan_pf, :string
	field :kecamatan_pf, :string
	field :kota_pf, :string
	field :kodepos_pf, :string
	field :no_ktp_pf, :string
	field :ktp_berlaku_pf, :string
	field :gender, :string
	field :marital_status, :string
	field :tgl_akhir_angsuran, :string
	field :tgl_bukti, :string
	field :no_bukti', :string
  end
end

