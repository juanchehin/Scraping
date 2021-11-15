@extends('layouts.app')

@section('content')
<div class="container">
    <table class="table" id="table_id">
        <thead>
            <tr>
                <th>title</th>
                <th>location</th>
                <th>description</th>
                <th>url</th>
                <th>is_published</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($posts as $item)
                <tr>
                    <td scope="row">{{$item->title}}</td>
                    <td>{{$item->location}}</td>
                    <td>{{$item->description}}</td>
                    <td>
                        <a href="{{$item->url}}" target="_blank">Ver oferta en la pagina</a>
                    </td>
                    <td>
                        @if($item->is_published == false)
                            <span class="badge bg-danger">No publicado</span>
                        @else
                            <span class="badge bg-success">Publicado</span>
                        @endif
                    </td>
                    <td>{{$item->is_published}}</td>
                    <td>
                        <button type="button" class="btn btn-info">Publicar</button>
                        <button type="button" class="btn btn-primary">Editar</button>
                        <button type="button" class="btn btn-danger">Eliminar</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

@push('javascripts')
    <script>
        $(document).ready( function () {
            $('#table_id').DataTable();
        } );
    </script>
@endpush
