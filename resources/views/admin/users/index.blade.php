<x-admin-master>

    @section('content')
    <h1>All Users</h1>


    @if(session('user-deleted'))
  <div class="alert alert-danger">{{session('user-deleted')}}</div>
    @endif

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Users </h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Username</th>
                            <th>Avatar</th>
                            <th>Email</th>
                            <th>Registered</th>
                            <th>Updated</th>
                            <th>Delete</th>
                            <th>Edit</th>

                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Username</th>
                            <th>Avatar</th>
                            <th>Email</th>
                            <th>Registered</th>
                            <th>Updated</th>
                            <th>Delete</th>
                            <th>Edit</th>
                            
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach($users as $user)
                        <tr>
                            <td>{{$user->id}}</td>
                        <td><a href="{{route('users.edit',$user->id)}}">{{$user->name}}</a></td>
                            <td>{{$user->username}}</td>
                            {{-- <td><a href="{{route('post.edit',$user->id)}}">{{$user->title}}</a></td> --}}
                            <td>
                                <div><img height="50px" src="{{$user->avatar}}" alt=""></div>
                            </td>
                            <td>{{$user->email}}</td>
                            <td>{{$user->created_at->diffForHumans()}}</td>
                            <td>{{$user->updated_at->diffForHumans()}}</td>
                            <!--Delete button-->
                            <td>
                           
                                <form action="{{route('user.destroy',$user->id)}}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                               
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    {{-- For New pagination --}}
    <div class="d-flex">
    <div class="mx-auto">
   {{-- {{$users->links()}}   --}}
   </div>
   </div>
   
    @endsection

    @section('scripts')

    <!-- Page level plugins -->
    <script src="{{asset('vendor/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>
    <!-- Page level custom scripts /old pagination-->
   <script src="{{asset('js/tables/datatables-demo.js')}}"></script>
    @endsection
</x-admin-master>