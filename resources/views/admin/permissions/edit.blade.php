<x-admin-master>
    @section('content')

   <div class="row">
    @if(session()->has('permission-updated'))
    <div class="alert alert-success">
        {{session('permission-updated')}}
    </div>
    @endif
</div>
  

<div class="row">
    <div class="col-sm-6">
        <h1>Edit Permission: {{$permission->name}}</h1>
        <form action="{{route('permissions.update',$permission->id)}}" method='post' enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" class="form-control" id="name" aria-describedby="" placeholder="Enter Name" value="{{$permission->name}}">

            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>



    @endsection
</x-admin-master>