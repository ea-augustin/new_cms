
<x-admin-master>
    @section('content')
        <h1>Permissions</h1>
        
       <div class="row">
            <div class="col-sm-3">
                <form action="" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="name">Permission</label>
                        <input type="text" class="form-control">
                    </div>
                </form>
            </div>

              
            <div class="col-sm-9">

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Posermissions</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Slug</th>
                                        <th>Detach</th>
                                        <th>Attach</th>
            
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Slug</th>
                                        <th>Detach</th>
                                        <th>Attach</th>
                                        
                                    </tr>
                                </tfoot>
                                <tbody>
                                   
                                    <tr>
                                    
                                       
                                    </tr>
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                                            
            
            </div>






        </div>{{-- end of row --}}
    

       
    
    @endsection
    
</x-admin-master>
