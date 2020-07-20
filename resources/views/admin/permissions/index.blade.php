<x-admin-master>
    @section('content')
    <h1>Permissions</h1>

    <div class="row">

        <div class="col-sm-4">
            <form action="{{route('permissions.store')}}" method="post">
                @csrf
                <div class="form-group">
                    <label for="name">Permissions</label>
                    <input type="text" class="form-control" @error('name')is-invalid @enderror name="name">
                    <div>
                        @error('name')
                        <span><strong>{{$message}}</strong></span>
                        @enderror
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Create</button>
            </form>
        </div>
    



   
        <div class="col-sm-9">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Permissions</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Slug</th>
                                    <th>Created_at</th>
                                    <th>Updated_at</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Slug</th>
                                    <th>Created_at</th>
                                    <th>Updated_at</th>
                                    <th>Delete</th>
                                    
                                </tr>
                            </tfoot>
                            <tbody>
                            @foreach ($permissions as $permission)
                           
                                <tr>
                                <td>{{$permission->id}}</td>
                                <td><a href="{{route('permissions.edit', $permission->id)}}">{{$permission->name}}</a></td>
                                <td>{{$permission->slug}}</td>
                                <td>{{$permission->created_at->diffForHumans()}}</td>
                                <td>{{$permission->updated_at->diffForHumans()}}</td>
                                <td><form action="{{route('permissions.destroy',$permission->id)}}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </td>
                                </form>
                                </tr>
                                @endforeach
                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
                                        
        
        </div>
    </div>




    </div>{{-- end of row --}}




    @endsection

</x-admin-master>
