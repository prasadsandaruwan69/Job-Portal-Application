<x-mail::message>
# Introduction

Congratulations! You Are Not A Premium User

<x-mail::button :url="''">
<p>Your purches details</p>
<p>Plan:{{$plan}}</p>
<p>Your Plane ends on:{{$billingEnds}}</p>
</x-mail::button>

Thanks,<br>
{{ config('app.name') }}
</x-mail::message>
