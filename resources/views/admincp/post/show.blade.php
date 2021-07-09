@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Cập nhật bài viết') }}</div>

                <div class="card-body">

                    @if (Session::has('success'))
                        <div class="alert alert-success">
                            {{ Session::get('success') }}
                            @php
                                Session::forget('success');
                            @endphp
                        </div>
                    @endif

                    @if (Session::has('fail'))
                        <div class="alert alert-danger">
                            {{ Session::get('fail') }}
                            @php
                                Session::forget('fail');
                            @endphp
                        </div>
                    @endif

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form autocomplete="off" method="POST" action="{{ route('post.update', [$post->id_post]) }}" enctype="multipart/form-data">
                        @method('PUT')
                        @csrf
                        <div class="form-group">
                          <label for="exampleInputEmail1">Tiêu đề bài viết</label>
                          <input type="text" class="form-control" name="title" value="{{ $post->title_post }}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Hình ảnh đại diện của bài viết</label>
                            <input type="file" class="form-control" name="image" > <br>
                            <p><img src="{{ asset('public/uploads/'.$post->image_post) }}" width="200px"></p>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tóm tắt</label> <br>
                            <textarea name="summary" id="ckeditor_summary" cols="50" rows="10" >{{ $post->summary_post }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nội dung</label> <br>
                            <textarea name="content" id="ckeditor_content" cols="50" rows="10" >{{ $post->content_post }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Danh mục</label>
                            <select class="form-control" name="id_category">
                                @foreach ($category as $key=>$cate )

                                <option {{ $post->id_category == $cate->id_category ? 'selected' : '' }} value="{{ $cate->id_category }}">{{ $cate->title }}</option>
                                @endforeach

                            </select>
                          </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Kích hoạt</label>
                            <select class="form-control" name="status">
                                @if ($post->status_post == 1)
                                    <option selected value="1">Kích hoạt</option>
                                    <option value="0">Không</option>
                                @else
                                    <option value="1">Kích hoạt</option>
                                    <option selected value="0">Không</option>
                                @endif

                            </select>
                          </div>
                        <button type="submit" class="btn btn-primary">Cập nhật bài viết</button>
                      </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
