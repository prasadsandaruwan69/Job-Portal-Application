@extends('layouts.admin.main')

@section('content')
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 mt-5">
                <h1>Post a Job</h1>
                <form action="{{ route('job.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="feature_image">Feature Image</label>
                        <input type="file" class="form-control" id="feature_image" name="feature_image">
                        @if ($errors->has('feature_image'))
                            <div class="error">{{ $errors->first('feature_image') }}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title">
                        @if ($errors->has('title'))
                            <div class="error">{{ $errors->first('title') }}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="description">Job Description</label>
                        <textarea class="form-control summernote" id="description" name="description"></textarea>
                        @if ($errors->has('description'))
                            <div class="error">{{ $errors->first('description') }}</div>
                        @endif
                    </div>

                    <div class="form-group">
                        <label for="description">Roles And Responsibility</label>
                        <textarea class="form-control summernote" id="description" name="roles"></textarea>
                        @if ($errors->has('roles'))
                            <div class="error">{{ $errors->first('roles') }}</div>
                        @endif

                    </div>
                    <div class="form-group">
                        <label>Job Type</label>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="job_type" id="Fulltime" value="Fulltime">
                            <label for="Fulltime" class="form-check-label">Full Time</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="job_type" id="Parttime" value="Parttime">
                            <label for="Parttime" class="form-check-label">Part Time</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="job_type" id="Casual" value="Casual">
                            <label for="Casual" class="form-check-label">Casual</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="job_type" id="Contract" value="Contract">
                            <label for="Contract" class="form-check-label">Contract</label>
                        </div>
                        @if ($errors->has('job_type'))
                            <div class="error">{{ $errors->first('job_type') }}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="salary">salary</label>
                        <input type="text" class="form-control" id="salary" name="salary">
                        @if ($errors->has('salary'))
                            <div class="error">{{ $errors->first('salary') }}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address">
                        @if ($errors->has('address'))
                            <div class="error">{{ $errors->first('address') }}</div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="date">Application Close Date</label>
                        <input type="text" class="form-control" id="datepicker" name="date">
                        @if ($errors->has('date'))
                            <div class="error">{{ $errors->first('date') }}</div>
                        @endif
                    </div>
                    <div class="form-group mt-4">
                        <button type="submit" class="btn btn-success">Post A Job</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <style>
        .note-insert {
            display: none !important;

        }

        .error {
            color: red;

        }
    </style>
@endsection
