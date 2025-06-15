@extends('layouts.app')

@push('css')
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
@endpush
@section('title')
TAMBAH service
@endsection
@section('content')
<br />
<div class="row">
    <div class="col-12">
        <form method="post" action="/service/create" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">Data service</h3>
                            <div class="card-tools">
                                <a href="/service" type="button" class="btn bg-gradient-blue btn-sm">
                                    <i class="fa fa-arrow-left"></i> Kembali</a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">tanggal</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" name="tanggal" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Kode service</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="kode" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Pelanggan</label>
                                <div class="col-sm-10">
                                    <select name="pelanggan_id" class="form-control" required>
                                        <option value="">-pilih-</option>
                                        @foreach (pelanggan() as $item)
                                        <option value="{{$item->id}}">{{$item->nama}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">barang</label>
                                <div class="col-sm-10">
                                    <select name="barang_id" class="form-control" required>
                                        <option value="">-pilih-</option>
                                        @foreach (barang() as $item)
                                        <option value="{{$item->id}}">{{$item->nama}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Teknisi</label>
                                <div class="col-sm-10">
                                    <select name="teknisi_id" class="form-control" required>
                                        <option value="">-pilih-</option>
                                        @foreach (teknisi() as $item)
                                        <option value="{{$item->id}}">{{$item->nama}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">sparepart</label>
                                <div class="col-sm-10">
                                    <select name="sparepart_id" class="form-control" required>
                                        <option value="">-pilih-</option>
                                        @foreach (sparepart() as $item)
                                        <option value="{{$item->id}}">{{$item->nama}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">kerusakan</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="kerusakan" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">tgl selesai</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" name="tgl_selesai" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">biaya</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="biaya" required
                                        onkeypress="return hanyaAngka(event)">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                    <button type="submit"
                                        class="btn btn-block btn-primary"><strong>SIMPAN</strong></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection

@push('js')

<script>
    function hanyaAngka(evt) {
      var charCode = (evt.which) ? evt.which : event.keyCode
       if (charCode > 31 && (charCode < 48 || charCode > 57))

        return false;
      return true;
    }
</script>
@endpush