<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Raja Pancing</title>
    <style type="text/css" media="print">
        @page 
        {
            size: auto;   /* auto is the initial value */
            margin: 5mm;  /* this affects the margin in the printer settings */
        }
    </style>
</head>
<body>
    <table width="100%">
        <tr>
            <td style="font-size:34px;font-weight:bold">Raja Pancing Banjarmasin</td>
            <td style="font-size:34px;font-weight:bold;text-align:right">INVOICE</td>
        </tr>
        <br/>
        <tr>
            <td style="border:2px solid black; padding:10px;font-family:Arial, Helvetica, sans-serif;font-size:20px" width="60%">
                Toko Raja Pancing Banjarmasin<br/>
                Alamat : 
                Jl. Lingkar Dalam Selatan No.1,Rt 29 Rw 02, samping AL Madani Ruko 2 lantai
                <br/>
                Telp : 085387000596
            </td>
            <td style="border:2px solid black; vertical-align:top; padding:10px;font-family:Arial, Helvetica, sans-serif;font-size:20px">
                No Invoice : {{$pj->nota}}<br/>
                Tanggal : {{\Carbon\Carbon::parse($pj->tanggal)->format('d-M-Y')}}<br/>
                Pelanggan : {{$pj->pelanggan}}
            </td>
        </tr>
    </table>
    <br/>
    <table width="100%" cellpadding="5" cellspacing="0">
        <tr style="font-family:Arial, Helvetica, sans-serif;font-size:20px ">
            <th style="border:2px solid black">PRODUK</th>
            <th style="border:2px solid black">HARGA</th>
            <th style="border:2px solid black">JUMLAH</th>
            <th style="border:2px solid black">DISKON</th>
            <th style="border:2px solid black">HARGA FINAL</th>
            <th style="border:2px solid black">TOTAL</th>
        </tr>

        @foreach ($pj->penjualandetail as $key=> $item)
            
        <tr style="font-family:Arial, Helvetica, sans-serif;font-size:20px ">
            <td style="border:2px solid black">{{$item->barang->nama}}</td>
            <td style="border:2px solid black;text-align:right">{{number_format($item->harga)}}</td>
            <td style="border:2px solid black;text-align:center">{{number_format($item->jumlah)}}</td>
            <td style="border:2px solid black;text-align:center">{{round($item->diskon,2)}} %</td>
            <td style="border:2px solid black;text-align:center">{{number_format($item->harga_jual)}}</td>
            <td style="border:2px solid black;text-align:right">{{number_format($item->total)}}</td>
        </tr>
        @endforeach
        <tr style="font-family:Arial, Helvetica, sans-serif; font-size:20px">
            <td style="border:2px solid black" colspan="5">TOTAL</td>
            <td style="border:2px solid black;text-align:right">{{number_format($pj->penjualandetail->sum('total'))}}</td>
        </tr>
    </table>
    <br/>
    <div style="text-align:center;font-family:Arial, Helvetica, sans-serif;font-size:16px">
        <strong>T E R I M A  &nbsp;&nbsp; K A S I H  &nbsp;&nbsp; T E L A H  &nbsp;&nbsp; B E R B E L A N J A </strong>
    </div>

    <script>
        window.addEventListener("load", window.print());
    </script>
</body>
</html>