@extends('layouts.default')
    <div class="form-group">
        <label for="customerId">ID</label>
        <input type="text" class="form-control" id="customerId" value="{{$customer->id}}" name="id" disabled>
    </div>
    <div class="form-group">
        <label for="customerCountry">Country</label>
        <select class="form-control" id="customerCountry" name="country" disabled>
            <option value="{{$customer->country->id}}">{{$customer->country->name}}</option>
        </select>
    </div>
    <div class="form-group">
        <label for="customerName">Name</label>
        <input type="text" class="form-control" id="customerName" value="{{$customer->name}}" name="name" disabled>
    </div>
    <div class="form-group">
        <label for="customerDob">Date of Birth</label>
        <input type="text" class="form-control" id="customerDob" value="{{$customer->dob}}" name="dob" disabled>
    </div>
    <div class="form-group">
        <label for="customerPhone">Phone</label>
        <input type="text" class="form-control" id="customerPhone" value="{{$customer->phone}}" name="phone" disabled>
    </div>
    <div class="form-group">
        <label for="customerEmail">Email</label>
        <input type="text" class="form-control" id="customerEmail" value="{{$customer->email}}" name="email" disabled>
    </div>
    <div class="form-group">
        <hr class="hr"/>
        <label>Families</label>
    </div>
    
<!-- //////////////////////FAMILIES//////////////////////// -->
    <div class="form-group">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Relation</th>
                    <th scope="col">Name</th>
                    <th scope="col">DOB</th>
                </tr>
            </thead>
            <tbody class="family-table">
                @foreach ($customer->family as $key => $family)
                    <tr class="family" id="{{$key}}">
                        <td><input type="text" class="form-control" value="{{$family->relation}}" name="family[{{$key}}][relation]" disabled></td>
                        <td><input type="text" class="form-control" value="{{$family->name}}" name="family[{{$key}}][name]" disabled></td>
                        <td><input type="text" class="form-control" value="{{$family->dob}}" name="family[{{$key}}][dob]" disabled></td>
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