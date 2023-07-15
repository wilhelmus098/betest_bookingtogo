@extends('layouts.default')
@if (\Session::has('message'))
    <div class="alert alert-success">
        <ul>
            <li>{!! \Session::get('message') !!}</li>
        </ul>
    </div>
@endif
<table class="table table-striped">
    <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Country</th>
            <th scope="col">Name</th>
            <th scope="col">DOB</th>
            <th scope="col">Phone</th>
            <th scope="col">Email</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </tr>
    </thead>
    <tbody>
        <?php
            // dd($customers);
            // foreach ($customers as $customer){
            //     dd($customer->country->name);
            // }
        ?>
        @foreach ($customers as $customer)
            <tr>
                <td>{{$customer->id}}</td>
                <td>{{$customer->country->name}}</td>
                <td>{{$customer->name}}</td>
                <td>{{$customer->dob}}</td>
                <td>{{$customer->phone}}</td>
                <td>{{$customer->email}}</td>
                <td><a href="{{ route('customers.edit', $customer->id) }}">Edit</a></td>
                <td>
                    <form action="{{ route('customers.destroy', $customer->id) }}" method="POST"
                        onsubmit="return confirm('{{ trans('are You Sure ? ') }}');"
                        style="display: inline-block;">
                        <input type="hidden" name="_method" value="DELETE">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>