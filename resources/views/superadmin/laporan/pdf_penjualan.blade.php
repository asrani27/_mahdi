<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan</title>
</head>

<body>

    <table width="100%">
        <tr>
            <td width="15%">
                {{-- <img
                    src="data:image/jpeg;base64,{{ base64_encode(file_get_contents(public_path('admin/logo2.png'))) }}"
                    width="100px"> --}}
            </td>
            <td style="text-align: center;" width="60%">

                <font size="24px"><b>PT. Cahaya Kaltim Banjarmasin <br />
                    </b></font>
                Jl. Veteran Sungai Bilu No.331, Melayu, Kec. Banjarmasin
                Timur, Kota Banjarmasin, Kalimantan Selatan
            </td>
            <td width="15%">
            </td>
        </tr>
    </table>
    <hr>
    <h3 style="text-align: center">LAPORAN DATA PENJUALAN
    </h3>
    <br />
    <table width="100%" border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>No</th>
            <th>Tanggal</th>
            <th>Kode Transaksi</th>
            <th>Nama Pelanggan</th>
            <th>Detail Barang</th>
            <th>Total</th>
        </tr>
        @php
        $no =1;
        @endphp

        @foreach ($data as $key => $item)
        <tr>
            <td>{{$key + 1}}</td>
            <td>{{$item->tanggal}}</td>
            <td>{{$item->nota}}</td>
            <td>{{$item->pelanggan == null ? '' : $item->pelanggan->nama}}</td>
            <td>
                <table cellpadding="5s" cellspacing="0">
                    <tr>
                        <td>Barang</td>
                        <td>Jumlah</td>
                        <td>Harga</td>
                        <td>Total</td>
                    </tr>
                    @foreach ($item->penjualandetail as $item2)
                    <tr>
                        <td>{{$item2->barang->nama}}</td>
                        <td>{{$item2->jumlah}}</td>
                        <td>{{number_format($item2->harga)}}</td>
                        <td>{{number_format($item2->total)}}</td>
                    </tr>
                    @endforeach
                </table>

            </td>
            <td>{{number_format($item->total)}}</td>
        </tr>
        @endforeach
    </table>

    <table width="100%">
        <tr>
            <td width="60%"></td>
            <td></td>
            <td><br />{{\Carbon\Carbon::now()->translatedFormat('d F Y')}}<br />
                Mengetahui,<br />Pimpinan<br /><br /><br />

                <u>-</u><br />

            </td>
        </tr>
    </table>
</body>

<script>
    window.print();
</script>

</html>