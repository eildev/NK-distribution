@extends('master')
@section('title', '| Return View')
@section('admin')
    <div class="row ">
        <div class="col-md-12 ">
            <div class="card border-0 shadow-none invoice_bg">
                <div class="card-body ">
                    <div class="container-fluid d-flex justify-content-between">
                        <div class="col-lg-3 ps-0">
                            @if (!empty($invoice_logo_type))
                                @if ($invoice_logo_type == 'Name')
                                    <a href="#" class="noble-ui-logo logo-light d-block mt-3">{{ $siteTitle }}</a>
                                @elseif($invoice_logo_type == 'Logo')
                                    @if (!empty($logo))
                                        <img class="margin_left_m_14" height="100" width="200" src="{{ url($logo) }}"
                                            alt="logo">
                                    @else
                                        <p class="mt-1 mb-1 show_branch_name"><b>{{ $siteTitle }}</b></p>
                                    @endif
                                @elseif($invoice_logo_type == 'Both')
                                    @if (!empty($logo))
                                        <img class="margin_left_m_14" height="90" width="150"
                                            src="{{ url($logo) }}" alt="logo">
                                    @endif
                                    <p class="mt-1 mb-1 show_branch_name"><b>{{ $siteTitle }}</b></p>
                                @endif
                            @else
                                <a href="#" class="noble-ui-logo logo-light d-block mt-3">EIL<span>POS</span></a>
                            @endif
                            <p class="show_branch_address">{{ $branch->address ?? 'accordion ' }}</p>
                            <p class="show_branch_email">{{ $branch->email ?? '' }}</p>
                            <p class="show_branch_phone">{{ $branch->phone ?? '' }}</p>
                            <!--<hr>-->


                            <p class="mt-4">Customer Information</p>
                            <p class=" mb-1 show_supplier_name"><b>{{ $customer->name ?? '' }}</b></p>
                            <p class="show_supplier_phone">{{ $customer->phone ?? '' }}</p>

                        </div>
                        <div class="col-lg-3 pe-0 text-end">
                            <h4 class="fw-bolder text-uppercase text-end mt-4 mb-2">invoice</h4>
                            <h6 class="text-end mb-5 pb-4">#RETURN-{{ $return->return_invoice_number ?? 0 }}</h6>

                            <p class="text-end mb-1 mt-5">Return</p>
                            <h4 class="text-end fw-normal">৳ {{ $return->refund_amount ?? 00.0 }}</h4>
                            <h6 class="mb-0 mt-2 text-end fw-normal"><span class="text-muted show_purchase_date">Invoice
                                    Date :</span> {{ $return->created_at ?? '' }}</h6>
                        </div>
                    </div>
                    <div class="container-fluid mt-2 d-flex justify-content-center w-100">
                        <div class="w-100">
                            <table class="table table-bordered invoice_table_bg">
                                <thead>
                                    <tr class="invoice_table_th_bg">
                                        <th>#</th>
                                        <th>Product Name</th>
                                        <th>Return Reason</th>
                                        <th class="text-end">Unit cost</th>
                                        <th class="text-end">Quantity</th>
                                        <th class="text-end">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($return_items->count() > 0)
                                        @php $lastIndex = 0; @endphp
                                        @foreach ($return_items as $index => $item)
                                            <tr class="text-end">
                                                <td class="text-start">{{ $index + 1 }}</td>
                                                <td class="text-start">
                                                    <a
                                                        href="{{ route('product.ledger', $item->product->id) }}">{{ $item->product->name ?? '' }}</a>
                                                </td>
                                                <td class="text-start">{{ $item->return_reason ?? '' }}</td>
                                                <td>{{ $item->return_price ?? 0 }}</td>
                                                <td>{{ $item->quantity ?? 0 }}</td>
                                                <td>{{ $item->product_total ?? 0 }}</td>
                                            </tr>
                                            @php $lastIndex = $index + 1; @endphp
                                        @endforeach
                                        @for ($i = $lastIndex + 1; $i < 5; $i++)
                                            <tr class="text-end">
                                                <td class="text-start">{{ $i }}</td>
                                                <td class="text-start"></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        @endfor
                                        <tr class="text-end">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Total</td>
                                            <td>{{ $return->refund_amount ?? 00.0 }}</td>
                                        </tr>
                                    @else
                                        <tr class="text-center">
                                            <td>Data Not Found</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="container-fluid w-100 btn_group">
                        <!--Print Invoice--->
                        @if ($invoice_type == 'a4')
                            <a href="#" class="btn btn-outline-primary float-end mt-4 me-3"
                                onclick="window.print();"><i data-feather="printer" class="me-2 icon-md"></i>Print
                                Invoice</a>
                        @elseif($invoice_type == 'a5')
                            <a href="#" class="btn btn-outline-primary float-end mt-4" onclick="window.print();"><i
                                    data-feather="printer" class="me-2 icon-md"></i>Print Invoice</a>
                        @else
                            <a target="" href="#" class="btn btn-outline-primary float-end mt-4 "
                                onclick="window.print();"><i data-feather="printer" class="me-2 icon-md"></i>Print
                                Invoice</a>
                        @endif
                    </div>
                    <div class="mt-5">
                        <h5 class="fw-normal text-success m-0 p-0"><b>Invoice by</b></h5>
                        <p class=""> {{ $authName ?? '' }}</p>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="w-100 mx-auto btn_group">
                <a href="{{ route('return.products.list') }}" class="btn btn-primary  mt-4 ms-2"><i
                        class="fa-solid fa-arrow-rotate-left me-2"></i>Manage Return</a>
                <a href="{{ route('sale') }}" class="btn btn-outline-primary mt-4"><i data-feather="plus-circle"
                        class="me-2 icon-md"></i>Sale</a>
            </div>
        </div>
        <div class="footer_invoice text-center">
            <p>© 2024 <a href="https://eclipseintellitech.com/" target="_blank">Eclipse Intellitech
                    Limited.</a> All rights
                reserved. Powered by Eclipse Intellitech <a href="https://electro-pos.eclipseintellitech.com/login"
                    target="_blank">EIL
                    Electro</a> Software</p>
        </div>
    </div>



    <script>
        function setPaperSize('$invoice_type') {
            let styleElement = document.getElementById('print-style');

            if (!styleElement) {
                styleElement = document.createElement('style');
                styleElement.id = 'print-style';
                document.head.appendChild(styleElement);
            }

            let sizeCss;

            switch (size) {
                case 'a4':
                    sizeCss = '@page { size: A4; }';
                    break;
                case 'a5':
                    sizeCss = '@page { size: A5; }';
                    break;
                case 'letter':
                    sizeCss = '@page { size: letter; }';
                    break;
                case 'custom':
                    sizeCss = '@page { size: 210mm 297mm; }'; // Example for A4 size in custom dimensions
                    break;
                default:
                    sizeCss = '@page { size: auto; }'; // Default
            }

            styleElement.innerHTML = `
                @media print {
                    ${sizeCss}
                }
            `;
        }
    </script>

    <style>
        .table> :not(caption)>*>* {
            padding: 0px 10px !important;
        }

        .footer_invoice {
            display: none !important;

        }

        @media print {
            .table> :not(caption)>*>* {
                padding: 0px 10px !important;
            }

            .margin_left_m_14 {
                margin-left: -14px;
            }

            .w_40 {
                width: 250px !important;
                text-wrap: wrap;
            }

            nav,
            .footer {
                display: none !important;
            }

            .page-content {
                margin-top: 0 !important;
                padding-top: 0 !important;
                min-height: 740px !important;
                /* background-color: #eec6a1 !important; */
                /* background-color: #cce9fa !important; */
                background-color: #ffffff !important;
                /* border: 1px solid #29ADF9; */
            }

            .btn_group {
                display: none !important;
            }

            .total_calculation {
                float: right !important;
                /* margin-right: -40px; */
                width: 50%;
                color: #000
            }

            .card-body {
                padding: 0px !important;
                margin-left: 0px !important;
            }

            .card {
                /* padding: 0px !important; */
                /* margin: 0px !important; */
            }

            .main-wrapper .page-wrapper .page-content {
                /* margin-left: -10px !important; */
                padding: 0px;

            }

            .margin_left_m_14 {
                margin-left: -14px;
            }

            .w_40 {
                width: 240px !important;
            }

            /*.table> :not(caption)>*>* {*/
            /*    padding: 0px 10px !important;*/
            /*}*/

            .invoice_bg {
                background-color: #ffffff !important;
                /* background-color: #cce9fa !important; */
                /* background-color: #eec6a1 !important; */
                color: #000 !important;
                height: 740px;
            }

            .invoice_table_bg {
                /* background-color: rgb(241, 204, 204) !important; */
                color: #000000 !important;
                border-color: #29ADF9;
            }

            .invoice_table_th_bg {
                background-color: #29ADF9 !important;
                color: #000000 !important;
            }

            .invoice_table_th_bg th {

                color: #000000 !important;
            }

            .total_calculation_bg {
                color: #000 !important;
            }

            .print_bg_white {
                background-color: transparent !important;
            }

            .table> :not(caption)>*>* {
                padding: 0px 10px !important;
            }

            .footer_invoice {
                display: block !important;
                position: absolute !important;
                bottom: 0 !important;
                left: 50% !important;
                transform: translateX(-50%);
            }

            .footer_invoice p {
                font-size: 12px !important;
                color: #000;
            }
        }
    </style>
@endsection