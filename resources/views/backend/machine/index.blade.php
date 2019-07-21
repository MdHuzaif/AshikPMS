<div class="col-sm-6">


        @if($machine)


            <table class="table">
                <thead>
                <tr>
                    <th>Shop Name</th>
                    <th>Total</th>
                    <th>Running</th>
                    <th>Damage</th>
                    <th>Update</th>

                </tr>
                </thead>
                <tbody>

                @foreach($machine as $m)

                    <tr>
                        <td>{{$m->shopname}}</td>
                        <td>{{$m->total}}</td>
                        <td>{{$m->run}}</td>
                        <td>{{$m->damage}}</td>
                        
                        <td>{{$m->updated_at ? $m->updated_at->diffForHumans() : 'no date'}}</td>
                    </tr>
                @endforeach

                </tbody>
            </table>

        @endif



    </div>