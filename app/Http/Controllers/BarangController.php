<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Image;

class BarangController extends Controller
{

    public function barang()
    {
        $data = Barang::orderBy('id', 'DESC')->get();
        return view('superadmin.barang.index', compact('data'));
    }
    public function barangcreate()
    {
        return view('superadmin.barang.create');
    }
    public function barangstore(Request $req)
    {


        $check = Barang::where('kode', $req->kode)->first();
        if ($check == null) {

            $validator = Validator::make($req->all(), [
                'file'  => 'mimes:jpg,png,jpeg,bmp|max:10240',
            ]);

            if ($validator->fails()) {
                $req->flash();
                toastr()->error('File harus Gambar dan Maks 10MB');
                return back();
            }

            if ($req->file == null) {
                $filename = null;
            } else {
                $extension = $req->file->getClientOriginalExtension();
                $filename = uniqid() . '.' . $extension;

                $image = $req->file('file');

                $realPath = public_path('storage') . '/real';
                $compressPath = public_path('storage');

                $img = Image::make($image->path());
                $img->resize(1000, 1000, function ($const) {
                    $const->aspectRatio();
                })->save($compressPath . '/' . $filename);

                Storage::disk('public')->move($filename, '/compress/' . $filename);
                $image->move($realPath, $filename);
            }


            //dd($req->all());
            $attr = $req->all();
            $attr['file'] = $filename;

            Barang::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/barang');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function barangedit($id)
    {
        $data = Barang::find($id);
        return view('superadmin.barang.edit', compact('data'));
    }
    public function barangupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Barang::where('kode', $req->kode)->first();
        if ($check == null) {
            //simpan
            Barang::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/barang');
        } else {
            if ($id == $check->id) {

                $validator = Validator::make($req->all(), [
                    'file'  => 'mimes:jpg,png,jpeg,bmp|max:10240',
                ]);

                if ($validator->fails()) {
                    $req->flash();
                    toastr()->error('File harus Gambar dan Maks 10MB');
                    return back();
                }

                if ($req->file == null) {
                    $filename = Barang::find($id)->file;
                } else {
                    $extension = $req->file->getClientOriginalExtension();
                    $filename = uniqid() . '.' . $extension;

                    $image = $req->file('file');

                    $realPath = public_path('storage') . '/real';
                    $compressPath = public_path('storage');

                    $img = Image::make($image->path());
                    $img->resize(1000, 1000, function ($const) {
                        $const->aspectRatio();
                    })->save($compressPath . '/' . $filename);

                    Storage::disk('public')->move($filename, '/compress/' . $filename);
                    $image->move($realPath, $filename);
                }

                $attr['file'] = $filename;
                Barang::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/barang');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function barangdelete($id)
    {
        try {
            Barang::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
