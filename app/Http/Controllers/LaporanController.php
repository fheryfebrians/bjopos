<?php

namespace App\Http\Controllers;

// use App\Models\Pembelian;
use App\Models\Produk;
use App\Models\Penjualan;
use Illuminate\Http\Request;
use PDF;
use App\Models\PenjualanDetail;
use DB;

class LaporanController extends Controller
{
    public function index(Request $request)
    {
        $tanggalAwal = date('Y-m-d', mktime(0, 0, 0, date('m'), 1, date('Y')));
        $tanggalAkhir = date('Y-m-d');

        if ($request->has('tanggal_awal') && $request->tanggal_awal != "" && $request->has('tanggal_akhir') && $request->tanggal_akhir) {
            $tanggalAwal = $request->tanggal_awal;
            $tanggalAkhir = $request->tanggal_akhir;
        }

        return view('laporan.index', compact('tanggalAwal', 'tanggalAkhir'));
    }

    public function getData($awal, $akhir)
    {
        $no = 1;
        $data = array();
        $pendapatan = 0;
        $total_pendapatan = 0;
        $total_laba_kotor = 0;

        while (strtotime($awal) <= strtotime($akhir)) {
            $tanggal = $awal;
            $awal = date('Y-m-d', strtotime("+1 day", strtotime($awal)));

            // $harga_beli = Produk::where('created_at', 'LIKE', "$tanggal")->get()->sum(function($row){
            //     return $row->total_harga;
            // });

            // new 
            // $harga_beli = Penjualan::where('created_at', 'LIKE', "%$tanggal%")->sum('modal_product');
            $harga_beli = DB::table('penjualan')
                                ->join('penjualan_detail', 'penjualan_detail.id_penjualan', '=', 'penjualan.id_penjualan')
                                ->join('goods_master', 'goods_master.id', '=', 'penjualan_detail.id_produk')
                                ->join('modal', 'modal.id', '=', 'goods_master.id_modal')
                                ->where('penjualan.created_at', 'LIKE', "%$tanggal%")
                                ->sum('modal.modal_product');
   
            $total_penjualan = Penjualan::where('created_at', 'LIKE', "%$tanggal%")->sum('bayar');

            
            $pendapatan = $total_penjualan; 
            $laba_kotor =  $pendapatan - $harga_beli;
            
            $total_pendapatan += $pendapatan;
            $total_laba_kotor += $laba_kotor;

            $row = array();
            $row['DT_RowIndex'] = $no++;
            $row['tanggal'] = tanggal_indonesia($tanggal, false);
            $row['penjualan'] = format_uang($total_penjualan);
            $row['harga_beli'] = format_uang($harga_beli);
            $row['pendapatan'] = format_uang($pendapatan);
            $row['laba_kotor'] = format_uang($laba_kotor);

            $data[] = $row;
        }

        $data[] = [
            'DT_RowIndex' => '',
            'tanggal' => 'Total',
            'harga_beli' => '',
            'penjualan' => '',
            'pendapatan' => format_uang($total_pendapatan),
            'laba_kotor' => format_uang($total_laba_kotor),

        ];

        return $data;
    }

    public function data($awal, $akhir)
    {
        $data = $this->getData($awal, $akhir);

        return datatables()
            ->of($data)
            ->make(true);
    }

    public function exportPDF($awal, $akhir)
    {
        $data = $this->getData($awal, $akhir);
        $pdf  = PDF::loadView('laporan.pdf', compact('awal', 'akhir', 'data'));
        $pdf->setPaper('a4', 'potrait');
        
        return $pdf->stream('Laporan-pendapatan-'. date('Y-m-d-his') .'.pdf');
    }
}
