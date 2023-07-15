@extends('layouts.default')
<?php
    // dd($customer->family);
?>

<form method="POST" action="{{ route('customers.update', $customer->id) }}">
    @csrf
    @method('put')
    <div class="form-group">
        <label for="customerId">ID</label>
        <input type="text" class="form-control" id="customerId" value="{{$customer->id}}" name="id" disabled>
    </div>
    <div class="form-group">
        <label for="customerCountry">Country</label>
        <select class="form-control" id="customerCountry" name="country">
            <option value="{{old('country_id', $customer->country->id)}}">{{$customer->country->name}}</option>
            @foreach ($countries as $country)
                <option value="{{$country->id}}">{{$country->name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label for="customerName">Name</label>
        <input type="text" class="form-control" id="customerName" value="{{old('name', $customer->name)}}" name="name">
    </div>
    <div class="form-group">
        <label for="customerDob">Date of Birth</label>
        <input type="text" class="form-control" id="customerDob" value="{{old('dob', $customer->dob)}}" name="dob">
    </div>
    <div class="form-group">
        <label for="customerPhone">Phone</label>
        <input type="text" class="form-control" id="customerPhone" value="{{old('phone', $customer->phone)}}" name="phone">
    </div>
    <div class="form-group">
        <label for="customerEmail">Email</label>
        <input type="text" class="form-control" id="customerEmail" value="{{old('email', $customer->email)}}" name="email">
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
                @foreach ($customer->family as $key => $family)
                    <tr class="family" id="{{$key}}">
                        <td><input type="text" class="form-control" value="{{$family->relation}}" name="family[{{$key}}][relation]"></td>
                        <td><input type="text" class="form-control" value="{{$family->name}}" name="family[{{$key}}][name]"></td>
                        <td><input type="text" class="form-control" value="{{$family->dob}}" name="family[{{$key}}][dob]"></td>
                        <td><button type="button" class="btn btn-danger delete" value="{{$key}}" onClick="removeRow({{$key}})">DELETE</button></td>
                    </tr>
                @endforeach
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