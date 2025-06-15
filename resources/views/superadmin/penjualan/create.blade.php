@extends('layouts.app')

@push('css')
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Select2 -->
<link rel="stylesheet" href="/admin/plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="/admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
@endpush
@section('title')

@endsection
@section('content')
<br />
<form method="post" action="/penjualan/create">
    <div class="row">
        <div class="col-md-3">
            <div class="card card-primary card-outline">
                <div class="card-header">
                    <h3 class="card-title">Informasi Penjualan</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tanggal Transaksi</label>
                        <input type="date" class="form-control" name="tanggal"
                            value="{{\Carbon\Carbon::now()->format('Y-m-d')}}">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">No. Transaksi</label>
                        <input type="text" class="form-control" name="nota" value="{{$kode}}" readonly>
                    </div>
                    <div class="form-group">
                        <select id="id_select2_example" name="pelanggan_id" class="form-control select2">
                            <option value="">-</option>
                            @foreach (pelanggan() as $item)
                            <option value="{{$item->id}}">{{$item->nama}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="card card-primary card-outline">
                <div class="card-header">
                    <h3 class="card-title">Detail Barang</h3>
                </div>
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <select id="id_select2_example" name="barang_id" class="form-control select2">
                            <option value="">-Pilih Barang-</option>
                            @foreach ($barang as $item)
                            <option value="{{$item->id}}"><img src="/storage/compress/{{$item->file}}">{{$item->nama}},
                                Rp.
                                {{number_format($item->harga)}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" name="jumlah" value="1" class="form-control"
                            onkeypress="return hanyaAngka(event)">
                    </div>
                    <button type="submit" class="btn btn-block btn-primary" name="button" value="keranjang"><i
                            class="fa fa-shopping-cart"></i>
                        Tambah Ke Keranjang</button><br />
                </div>

                <div class="card-body table-responsive p-0">
                    <table id="example1" class="table table-bordered table-striped table-sm">
                        <thead>
                            <tr style="border-top: 1px solid #dee2e6;">
                                <th>No</th>
                                <th>Gambar</th>
                                <th>Kode</th>
                                <th>Nama Barang</th>
                                <th>Harga</th>
                                <th>Jumlah</th>
                                <th>Total</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($keranjang as $key => $item)
                            <tr>
                                <td>{{$key + 1}}</td>
                                <td><img src="/storage/compress/{{$item->barang->file}}" width="40px"></td>
                                <td>{{$item->barang == null ? '' :$item->barang->kode}}</td>
                                <td>{{$item->barang == null ? '' :$item->barang->nama}}</td>
                                <td>Rp. {{number_format($item->harga)}}</td>
                                <td>{{number_format($item->jumlah)}}</td>
                                <td>Rp. {{number_format($item->total)}}</td>
                                <td><a href="/keranjang/delete/{{$item->id}}"
                                        onclick="return confirm('Yakin ingin dihapus?');"><i
                                            class="fa fa-trash text-danger"></i></a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <th>Total</th>
                                <th>Rp. {{number_format($keranjang->sum('total'))}}</th>
                                <td>
                                    <input type="hidden" name="total" value="{{$keranjang->sum('total')}}">
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <div class="card-footer">

                    <button type="submit" class="btn btn-primary" name="button" value="checkout">Checkout</button>
                    <a href="/penjualan/batal" onclick="return confirm('Yakin ingin dibatalkan?');"
                        class="btn btn-danger">Batal</a>
                </div>
                <!-- /.card-body -->
            </div>
        </div>
    </div>
</form>

<div class="modal fade" id="modal-edit" style="display: none;" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post" action="/keranjang/editharga" enctype="multipart/form-data">
                @csrf
                <div class="modal-header bg-gradient-primary" style="padding:10px">
                    <h4 class="modal-title text-sm">EDIT HARGA FINAL</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <label>Nama Barang</label>
                        <input type="text" class="form-control" id="nama_barang" name="nama" readonly>
                        <input type="hidden" class="form-control" id="keranjang_id" name="keranjang_id">
                    </div>
                    <div class="form-group">
                        <label>Harga Final</label>
                        <input type="text" class="form-control" id="harga_jual" name="harga_jual"
                            onkeypress="return hanyaAngka(event)">
                    </div>
                </div>

                <div class="modal-footer justify-content-between">
                    <button type="submit" class="btn btn-block btn-primary"><i class="fas fa-paper-plane"></i>
                        Update</button>

                </div>
            </form>
        </div>
    </div>
</div>
@endsection
@push('js')

<script src="/admin/plugins/select2/js/select2.full.min.js">
</script>
<script>
    function formatState (state) {
  if (!state.id) {
    return state.text;
  }
  var baseUrl = "/user/pages/images/flags";
  var $state = $(
    '<span><img src="https://data.world/api/datadotworld-apps/dataset/python/file/raw/logo.png" class="img-flag" /> ' + state.text + '</span>'
  );
  return $state;
};

$("#id_select2_example").select2({
  templateResult: formatState
});
</script>
<script>
    $(document).on('click', '.edit-harga', function() {
   $('#keranjang_id').val($(this).data('id'));
   $('#nama_barang').val($(this).data('nama'));
   $('#harga_jual').val($(this).data('harga'));
   $("#modal-edit").modal();
});
</script>
<script>
    $(function () {
      //Initialize Select2 Elements
      $('.select2').select2()
  
      //Initialize Select2 Elements
      $('.select2bs4').select2({
        theme: 'bootstrap4'
      })
    });
</script>

<script>
    function hanyaAngka(evt) {
      var charCode = (evt.which) ? evt.which : event.keyCode
       if (charCode > 31 && (charCode < 48 || charCode > 57))

        return false;
      return true;
    }
</script>
@endpush