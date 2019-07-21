<div class="row">
    <div class="col-md-2">
        <a onclick="printorder()" type="submit" class="btn btn-danger" target="_blank"><i class="fa fa-print"></i> বিল প্রিন্ট করুন </a>
    </div>
    <div class="col-md-2">

    </div>
    <div class="col-md-2">
        <form action="{{route('save.sales')}}" method="post">
            {{csrf_field()}}
            @php($i = 0)
            @foreach($salescart as $sc)
                <input type="hidden" name="product_id[{{$i}}]" value="{{$sc->product_id}}">
                <input type="hidden" name="shopname[{{$i}}]" value="{{$sc->shopname}}">
                <input type="hidden" name="quantity[{{$i}}]" value="{{$sc->quantity}}">
                <input type="hidden" name="price[{{$i}}]" value="{{$sc->price}}">
                <input type="hidden" name="sales_status[{{$i}}]" value="{{$sc->sales_status}}">
                @php($i++)
            @endforeach
            <input type="hidden" name="total_product" value="{{$i}}">
            <button type="submit"  class="btn btn-danger" target="_blank" onclick="return confirm('নিশ্চিত করুন: বিক্রয় সফল হয়েছে কি ?  ?')"> বিক্রয় সম্পন্ন করুন </button>
        </form>
    </div>
</div>