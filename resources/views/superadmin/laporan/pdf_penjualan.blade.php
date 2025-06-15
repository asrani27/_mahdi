<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta content="en-us" http-equiv="Content-Language" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>RAJA PANCING</title>
    {{-- <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-small;
        }
    </style> --}}
    <style>
        @page {
            margin-top: 80px;
            margin-left: 50px;
        }

        header {
            position: fixed;
            top: -60px;
            left: 0px;
            right: 0px;
            height: 0px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            /** Extra personal styles **/
            /* background-color: #03a9f4;
            color: white;
            text-align: center; 
            line-height: 35px;*/
        }

        tr,
        th,
            {
            border: 2px solid #000;
            font-size: 10px;
            font-family: Arial, Helvetica, sans-serif;
        }

        td {
            font-weight: bold;
            border: 2px solid #000;
            font-size: 10px;
        }

        footer {
            position: fixed;
            bottom: -60px;
            left: 0px;
            right: 0px;
            height: 50px;
            font-size: 8px;
            font-family: Arial, Helvetica, sans-serif;
            /** Extra personal styles **/
            /* background-color: #03a9f4;
            color: white;
            text-align: center;
            line-height: 35px; */
        }
    </style>
</head>

<body>
    <header>
        <table border="0" width="100%">
            <tr>
                <td style="border: 0px;" valign="top" align="center" width="100%">
                    <span style="font-size: 18px;"><strong>RAJA PANCING</strong></span>
                </td>
            </tr>
        </table>
        <hr>
        <p><span class="auto-style1"><strong>LAPORAN DATA PENJUALAN {{strtoupper(convertBulan($bulan))}}
                    {{$tahun}}</strong></span>
        </p>
    </header>
    <footer>
        <hr>
        <p>Tanggal Cetak : {{\Carbon\Carbon::now()->format('d-m-Y H:i:s')}}
        </p>
    </footer>
    <br />
    <main>
        <table cellpadding="5" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Tanggal</th>
                    <th>Nota</th>
                    <th>Toko</th>
                    <th>Total Modal</th>
                    <th>Total Jual</th>
                    <th>Laba</th>
                </tr>
            </thead>
            <tbody>
                @php
                $no = 1;
                @endphp
                @foreach ($data as $item)
                <tr>
                    <td>{{$no++}}</td>
                    <td>{{\Carbon\Carbon::parse($item->tanggal)->format('d-m-Y')}}</td>
                    <td>{{$item->nota}}</td>
                    <td>{{$item->toko->nama}}</td>
                    <td>
                        @foreach ($item->barang as $barang)

                        {{$barang == null ? '-' : $barang->barang->nama}} : 
                        {{$barang == null ? '-' : number_format($barang->harga_beli)}}
                        <br/>
                        @endforeach
                    Total :{{number_format($item->total_modal)}}</td>
                    <td>
                        
                        {{number_format($item->total)}}</td>
                    <td>{{number_format($item->laba)}}</td>
                </tr>
                @endforeach

            </tbody>
            <tfoot>
                <tr>
                    <td colspan="4">TOTAL</td>
                    <td>{{number_format($data->sum('total_modal'))}}</td>
                    <td>{{number_format($data->sum('total'))}}</td>
                    <td>{{number_format($data->sum('laba'))}}</td>
                </tr>
            </tfoot>
        </table>
        <br />
        <table width="100%" border="0">
            <tr style="border: 0px;">
                <td width="70%" style="border: 0px;"></td>
                <td width="30%" style="border: 0px;">


                </td>
            </tr>
        </table>

    </main>
</body>

</html>