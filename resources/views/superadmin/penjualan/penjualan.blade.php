@extends('layouts.app')
@push('css')
<!-- DataTables -->
<link rel="stylesheet" href="/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
@endpush
@section('content')
<br />
<div class="row">
    <div class="col-12">
        <div class="card card-primary card-outline">
            <div class="card-header">
                <h3 class="card-title">Penjualan di {{$toko->nama}}</h3>
                <div class="card-tools">
                    <a href="/penjualan/toko/{{$toko->id}}/create" type="button" class="btn bg-gradient-blue btn-sm">
                        <i class="fa fa-plus"></i> Tambah Transaksi</a>
                    <a href="/penjualan" type="button" class="btn bg-gradient-blue btn-sm">
                        <i class="fa fa-arrow-left"></i> Kembali</a>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-2">
                <table id="example1" class="table table-bordered table-striped table-sm">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Tgl</th>
                            <th>Nota</th>
                            <th>Nama Pembeli</th>
                            <th>Detail</th>
                            <th>Total</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    @php
                    $no =1;
                    @endphp
                    <tbody>
                        @foreach ($data as $key => $item)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{\Carbon\Carbon::parse($item->tanggal)->format('d M Y')}}</td>
                            <td>{{$item->nota}}</td>
                            <td>{{$item->nama_pelanggan}}</td>
                            <td>
                                @foreach ($item->penjualandetail as $detail)
                                <li>{{$detail->barang->nama}}, Jumlah : {{$detail->jumlah}}</li>
                                @endforeach
                            </td>
                            <td>{{number_format($item->total)}}</td>
                            <td>

                                <a href="/penjualan/toko/{{$toko->id}}/print/{{$item->id}}" class="btn btn-xs btn-info"
                                    target="_blank"><i class="fa fa-print"></i> Print</a>
                                <a href="/penjualan/toko/{{$toko->id}}/delete/{{$item->id}}"
                                    onclick="return confirm('Stok barang akan dikembalikan?');"
                                    class="btn btn-xs btn-danger"><i class="fa fa-trash"></i> Hapus</a>

                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
    </div>
</div>

@endsection

@push('js')

<!-- DataTables  & Plugins -->
<script src="/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/admin/plugins/jszip/jszip.min.js"></script>
<script src="/admin/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/admin/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script>
    $(function () {
      $("#example1").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
      });
    });
</script>
@endpush