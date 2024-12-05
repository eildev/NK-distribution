@extends('master')
@section('title', '| Barcode Page')
@section('admin')
    <div class="btn-print">
        <button class="btn btn-info text-center" onClick="window.print();">Print</button> </br></br>
    </div>

    <div class="bbcode">
        @if ($product->stockQuantity->count() > 0)
            @foreach ($product->stockQuantity as $stock)
                @for ($i = 0; $i < ($stock->stock_quantity ?? 0); $i++)
                    <div class="printable">
                        <div class="barcode-container">
                            <span class="dblock">
                                <img src="data:image/png;base64,{{ DNS1D::getBarcodePNG($product->barcode, 'C39', 1, 30) }}"
                                    alt="Barcode"> </br>
                                <span>{{ $product->barcode }}</span><br>
                                <span>{{ $product->name ?? '' }} </span><br>
                                <span class="bold">{{ $product->price ?? 0 }}TK</span>
                            </span>
                        </div>
                    </div>
                @endfor
            @endforeach
        @else
            <div>No stock available.</div>
        @endif
    </div>
@endsection


<style>
    .barcode-container {
        text-align: center;
        border: 1px solid #e9ecef;
        padding: 10px;
    }

    .printable {
        width: 33.3%
    }

    .bbcode {
        display: flex;
        flex-wrap: wrap
    }

    @media print {
        .header {
            display: none !important;
        }

        .printable {
            width: 33.3% !important;
            padding-top: 5px !important;
        }

        #printContent,
        #printContent * {
            visibility: visible;
        }

        #printContent {
            position: absolute;
            left: 0;
            top: 0;
        }

        .header,
        .nav,
        .sidebar,
        .navbar {
            display: none;
        }

        .navbar {
            margin-top: 0 !important;
            display: none !important;
        }

        #myfooter {
            display: none !important;
        }

        .page-content {
            margin-top: 0 !important;
        }

        .btn-print {
            display: none !important;
        }

        .printable {
            display: block !important;

        }

        /* Ensure the printable element takes the full width of the page */
        .printable {
            width: 100%;
        }

    }
</style>

<script>
    function printData() {
        window.print();
    }
    // Open print window when page loads
    window.onload = function() {
        window.print();
    };

    // Close the tab when print window is closed or cancelled
    window.onafterprint = function() {
        window.close();
    };
</script>
