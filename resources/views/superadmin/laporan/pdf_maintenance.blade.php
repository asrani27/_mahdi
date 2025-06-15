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
    <h3 style="text-align: center">LAPORAN DATA MAINTENANCE
    </h3>
    <br />
    <table width="100%" border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>No</th>
            <th>Kode maintenance</th>
            <th>Nama maintenance</th>
            <th>Jenis</th>
            <th>Kode Penjualan</th>
            <th>Teknisi</th>
            <th>Jadwal</th>
            <th>Garansi</th>
            <th>Total</th>
        </tr>
        @php
        $no =1;
        @endphp

        @foreach ($data as $key => $item)
        <tr>
            <td>{{$key + 1}}</td>
            <td>{{$item->kode}}</td>
            <td>{{$item->nama}}</td>
            <td>{{$item->jenis}}</td>
            <td>{{$item->penjualan == null ? '' : $item->penjualan->nota}}</td>
            <td>{{$item->teknisi == null ? '': $item->teknisi->nama}}</td>
            <td>{{$item->jadwal}}</td>
            <td>{{$item->garansi}}</td>
        </tr>
        @endforeach
    </table>

    <table width="100%">
        <tr>
            <td width="60%"></td>
            <td></td>
            <td><br />Banjarmasin, {{\Carbon\Carbon::now()->translatedFormat('d F Y')}}<br />
                Admin,<br /><br /><br /><br />

                <u>(...................)</u><br />

            </td>
        </tr>
    </table>
</body>

<script>
    window.print();
</script>

</html>