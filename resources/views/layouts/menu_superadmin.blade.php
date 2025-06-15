<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column text-sm" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
            <a href="/beranda" class="nav-link {{Request::is('beranda') ? 'active' : ''}}">
                <i class="nav-icon fas fa-home"></i>
                <p>
                    Beranda
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/user" class="nav-link {{Request::is('user*') ? 'active' : ''}}">
                <i class="nav-icon fa fa-list"></i>
                <p>
                    user
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/teknisi" class="nav-link {{Request::is('teknisi*') ? 'active' : ''}}">
                <i class="nav-icon fa fa-list"></i>
                <p>
                    teknisi
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/satuan" class="nav-link {{Request::is('satuan*') ? 'active' : ''}}">
                <i class="nav-icon fa fa-list"></i>
                <p>
                    Satuan
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/barang" class="nav-link {{Request::is('barang*') ? 'active' : ''}}">
                <i class="nav-icon fa fa-list"></i>
                <p>
                    Barang
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/sparepart" class="nav-link {{Request::is('sparepart*') ? 'active' : ''}}">
                <i class="nav-icon fa fa-list"></i>
                <p>
                    Sparepart
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/pelanggan" class="nav-link {{Request::is('pelanggan*') ? 'active' : ''}}">
                <i class="nav-icon fa fa-list"></i>
                <p>
                    Pelanggan
                </p>
            </a>
        </li>
        {{-- <li class="nav-item">
            <a href="/toko" class="nav-link {{Request::is('toko*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Toko
                </p>
            </a>
        </li> --}}
        <li class="nav-item">
            <a href="/penjualan" class="nav-link {{Request::is('penjualan*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Penjualan
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/maintenance" class="nav-link {{Request::is('maintenance*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Maintenance
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/service" class="nav-link {{Request::is('service*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Service
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/laporan" class="nav-link {{Request::is('laporan*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Laporan
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/logout" class="nav-link">
                <i class="nav-icon fas fa-sign-out-alt"></i>
                <p>
                    Logout
                </p>
            </a>
        </li>
    </ul>
</nav>