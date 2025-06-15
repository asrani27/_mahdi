@extends('layouts.app')

@push('css')
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
@endpush
@section('title')
EDIT maintenance
@endsection
@section('content')
<br />
<div class="row">
    <div class="col-12">
        <form method="post" action="/maintenance/edit/{{$data->id}}" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">Data maintenance</h3>
                            <div class="card-tools">
                                <a href="/maintenance" type="button" class="btn bg-gradient-blue btn-sm">
                                    <i class="fa fa-arrow-left"></i> Kembali</a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Kode maintenance</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="kode" value="{{$data->kode}}"
                                        required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Nama maintenance</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="nama" value="{{$data->nama}}"
                                        required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">jenis maintenance</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="jenis" value="{{$data->jenis}}"
                                        required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">kode penjualan</label>
                                <div class="col-sm-10">
                                    <select name="penjualan_id" class="form-control" required>
                                        <option value="">-pilih-</option>
                                        @foreach (penjualan() as $item)
                                        <option value="{{$item->id}}" {{$data->penjualan_id == $item->id ?
                                            'selected':''}}>{{$item->nota}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">teknisi</label>
                                <div class="col-sm-10">
                                    <select name="teknisi_id" class="form-control" required>
                                        <option value="">-pilih-</option>
                                        @foreach (teknisi() as $item)
                                        <option value="{{$item->id}}" {{$data->teknisi_id == $item->id ?
                                            'selected':''}}>{{$item->nama}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">jadwal </label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" name="jadwal" value="{{$data->jadwal}}"
                                        required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">garansi </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="garansi" value="{{$data->garansi}}"
                                        required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">keterangan</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="keterangan"
                                        value="{{$data->keterangan}}" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                    <button type="submit"
                                        class="btn btn-block btn-primary"><strong>UPDATE</strong></button>
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