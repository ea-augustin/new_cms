<x-admin-master>
    @section('content')
<h1>Edit Users :{{$user->name}}</h1>
     
    <form action="{{route('users.update',$user->id)}}" method='post' enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <div class="form-group">
            <div><img  height="150px" src="{{$user->avatar}}" alt=""></div>
            <label for="file">File</label>
            <input type="file" 
                   name="avatar" 
                   class="form-control-file" 
                   id="avatar">
        </div>

        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" 
                   name="name" 
                   class="form-control" 
                   id="name" 
                   aria-describedby="" 
                   placeholder="Enter Title" 
                   value="{{$user->name}}">
            
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" 
                   name="username" 
                   class="form-control" 
                   id="username" 
                   aria-describedby="" 
                   placeholder="Enter User" 
                   value="{{$user->username}}">
            
        </div>

        


        <div class="form-group">
            <label for="email">Email</label>
            <input type="text" 
                   name="email" 
                   class="form-control" 
                   id="email" 
                   aria-describedby="" 
                   placeholder="Enter Title" 
                   value="{{$user->email}}">
            
        </div>

       
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    @endsection
</x-admin-master>