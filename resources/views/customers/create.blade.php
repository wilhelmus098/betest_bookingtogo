@extends('layouts.default')
<form method="POST" action="{{ route('customers.store') }}">
    @csrf
    <div class="form-group">
        <label for="customerCountry">Country</label>
        <select class="form-control" id="customerCountry" name="country_id">
            @foreach ($countries as $country)
                <option value="{{$country->id}}">{{$country->name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label for="customerName">Name</label>
        <input type="text" class="form-control" id="customerName" value="" name="name">
    </div>
    <div class="form-group">
        <label for="customerDob">Date of Birth</label>
        <input type="text" class="form-control" id="customerDob" value="" name="dob">
    </div>
    <div class="form-group">
        <label for="customerPhone">Phone</label>
        <input type="text" class="form-control" id="customerPhone" value="" name="phone">
    </div>
    <div class="form-group">
        <label for="customerEmail">Email</label>
        <input type="text" class="form-control" id="customerEmail" value="" name="email">
    </div>
    <div class="form-group">
        <hr class="hr"/>
        <label>Families</label>
        <button type="button" class="btn btn-primary add">Add Family</button>
    </div>
    
<!-- //////////////////////FAMILIES//////////////////////// -->
    <div class="form-group">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Relation</th>
                    <th scope="col">Name</th>
                    <th scope="col">DOB</th>
                    <th scope="col">Delete</th>
                </tr>
            </thead>
            <tbody class="family-table">
            </tbody>
        </table>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
<!-- //////////////////////FAMILIES//////////////////////// -->


    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script type="text/javascript">
    
    function removeRow(id) {
        console.log(id);
        var row = "#"+id;
        $(row).remove();
    }

    $('.add').click(function() {
        var rows = $('.family');
        var ids = [];
        var newId = 0;

        $.each(rows, function( index, value ) {
            ids.push(value.id);
        });
        
        
        if(ids.length>0){
            newId = Math.max.apply(Math, ids)+1;
        }
        
        console.log(newId);
        var newElement = 
            '<tr class="family" id="'+newId+'">'+
                '<td><input type="text" class="form-control" value="" name="family['+newId+'][relation]"></td>'+
                '<td><input type="text" class="form-control" value="" name="family['+newId+'][name]"></td>'+
                '<td><input type="text" class="form-control" value="" name="family['+newId+'][dob]"></td>'+
                '<td><button type="button" class="btn btn-danger delete" value="'+newId+'" onClick="removeRow('+newId+')">DELETE</button></td>'+
            '</tr>';
        $('.family-table').append(newElement);
    });
</script>