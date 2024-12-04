@extends('master')
@section('title', '| Purchase Invoice')
@section('admin')
    @php
        $branch = App\Models\Branch::findOrFail($purchase->branch_id);
        $supplier = App\Models\Supplier::findOrFail($purchase->supplier_id);
        $products = App\Models\PurchaseItem::where('purchase_id', $purchase->id)->get();
    @endphp
    <div class="row">
        <div class="col-md-12">
            <div class="card border-0 shadow-none">
                <div class="card-body ">
                    <div class="container-fluid d-flex justify-content-between">
                        <div class="col-lg-3 ps-0">
                            <a href="#" class="noble-ui-logo logo-light d-block mt-3">EIL<span>POS</span></a>
                            <p class="mt-1 mb-1 show_branch_name"><b>{{ $branch->name ?? '' }}</b></p>
                            <p class="show_branch_address">{{ $branch->address ?? 'accordion ' }}</p>
                            <p class="show_branch_email">{{ $branch->email ?? '' }}</p>
                            <p class="show_branch_phone">{{ $branch->phone ?? '' }}</p>


                        </div>
                        <div class="col-lg-3 pe-0 text-end">
                            <p class="mt-1 mb-1 show_supplier_name"><b>{{ $supplier->name ?? '' }}</b></p>
                            <p class="show_supplier_address">{{ $supplier->address ?? '' }}</p>
                            <p class="show_supplier_email">{{ $supplier->email ?? '' }}</p>
                            <p class="show_supplier_phone">{{ $supplier->phone ?? '' }}</p>
                            <p class="text-end mb-1 mt-5">Total </p>
                            <h4 class="text-end fw-normal">৳
                                {{ number_format($purchase->grand_total + ($purchase->carrying_cost > 0 ? $purchase->carrying_cost : 0), 2, '.', ',') }}
                            </h4>
                            <h6 class="mb-0 mt-2 text-end fw-normal"><span class="text-muted show_purchase_date">Invoice
                                    Date :</span> {{ $purchase->purchse_date ?? '' }}</h6>
                        </div>
                    </div>
                    <div class="container-fluid mt-5 d-flex justify-content-center w-100">
                        <div class="table-responsive w-100">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Description</th>
                                        <th class="text-end">Quantity</th>
                                        <th class="text-end">Unit cost</th>
                                        <th class="text-end">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($products->count() > 0)
                                        @foreach ($products as $index => $product)
                                            <tr class="text-end">
                                                <td class="text-start">{{ $index + 1 }}</td>
                                                <td class="text-start">{{ $product->product->name }}</td>
                                                <td>{{ $product->quantity }}</td>
                                                <td>{{ number_format($product->unit_price, 2) }}</td>
                                                <td>{{ number_format($product->total_price, 2) }}</td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="5">
                                                No Data Found
                                            </td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="container-fluid mt-5 w-100">
                        <div class="row">
                            <div class="col-md-6 ms-auto">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>Sub Total</td>
                                                <td class="text-end">৳ {{ number_format($purchase->total_amount, 2) }}</td>
                                            </tr>
                                            <tr>
                                                <td>Previous Due</td>
                                                <td class="text-end">৳
                                                    {{ number_format(max(0, $purchase->grand_total - $purchase->total_amount), 2) }}
                                                </td>
                                            </tr>

                                            @if ($purchase->carrying_cost > 0)
                                                <tr>
                                                    <td>Carrying Cost</td>
                                                    <td class="text-end">৳ {{ number_format($purchase->carrying_cost, 2) }}
                                                    </td>
                                                </tr>
                                            @endif

                                            <tr>
                                                <td class="text-bold-800">Grand Total</td>
                                                <td class="text-bold-800 text-end">৳
                                                    {{ number_format($purchase->grand_total + $purchase->carrying_cost, 2) }}
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>Payment Made</td>
                                                <td
                                                    class="text-end {{ $purchase->grand_total <= $purchase->paid ? 'text-success' : 'text-danger' }}">
                                                    {{ $purchase->grand_total <= $purchase->paid ? '৳' : '(-) ৳' }}
                                                    {{ number_format($purchase->paid + ($purchase->carrying_cost > 0 ? $purchase->carrying_cost : 0), 2) }}
                                                </td>
                                            </tr>

                                            @if ($purchase->due != 0)
                                                <tr class="bg-dark">
                                                    <td class="text-bold-800">Balance Due</td>
                                                    <td class="text-bold-800 text-end">৳
                                                        {{ number_format($purchase->due, 2) }}</td>
                                                </tr>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid w-100 btn_group">
                        {{-- <a href="javascript:;" class="btn btn-primary float-end mt-4 ms-2"><i data-feather="send"
                                class="me-3 icon-md"></i>Send Invoice</a> --}}
                        <a href="javascript:;" class="btn btn-outline-primary float-end mt-4" onclick="window.print();"><i
                                data-feather="printer" class="me-2 icon-md"></i>Print</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="w-100 mx-auto btn_group">
                <a href="{{ route('purchase.view') }}" class="btn btn-primary  mt-4 ms-2"><i
                        class="fa-solid fa-arrow-rotate-left me-2"></i>Manage Purchase</a>
                <a href="{{ route('purchase') }}" class="btn btn-outline-primary mt-4"><i data-feather="plus-circle"
                        class="me-2 icon-md"></i>Add Purchase</a>
            </div>
        </div>
    </div>

    <style>
        @media print {

            nav,
            .footer {
                display: none !important;
            }

            .page-content {
                margin-top: 0 !important;
                padding-top: 0 !important;
            }

            .btn_group {
                display: none !important;
            }
        }
    </style>
@endsection
