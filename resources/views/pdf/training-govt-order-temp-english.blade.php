<!DOCTYPE html>
<html>
<head>
	<title>Ministry of Public Administration</title>
	<style type="text/css">
		
		table thead th, table tbody td{
			border: 1px solid black;
			padding: 2px 5px;
		}
		table{
			border-collapse: collapse;
		}
		table thead th, table tbody td {
		  	vertical-align: top;
		  	text-align: left;
		}
	</style>
</head>
<body>
	<p style="margin: 0px 0px 0px 0px; font-size: 16px;text-align: center;">Government of the People's Republic of Bangladesh</p>
	<p style="margin: 0px 0px 0px 0px;text-align: center;">Ministry of public Administration</p>
	<p style="margin: 0px 0px 0px 0px;text-align: center;">{{$profile->department}}</p>
	<p style="margin: 0px 0px 0px 0px; text-align: center;">www.mopa.gov.bd</p>
	<div style="/*border: 1px solid black;*/ float: left; width: 420px; height: 50px;">
		<p style="margin-bottom: 0px;">No-@php echo $goInformation->go_number @endphp</p>
	</div>
	<div style="/*border: 1px solid black;*/ float: right; width: 200px; height: 50px; padding-left: 50px">
		<p style="margin: 0px; margin-left: 40px;">Date:@php echo date_format(new DateTime($goInformation->publish_date), 'd-m-Y'); @endphp</p>
	</div>
	<p style="margin: 5px;"></p>
	<table style="width: 100%;">
		<tbody>
			<tr>
				<td style="border: none; padding: 0px;"><strong>Subject : </strong></td>
				<td style="border: none; padding: 0px;">@php echo $goInformation->subject @endphp</td>
			</tr>
		</tbody>
	</table>
	<div>@php echo $goInformation->details @endphp</div>
	
	<table style="width: 100%;">
		<thead>
			<tr>
				<th style="text-align: center;">Sl. No.</th>
				<th style="text-align: center;">Name and ID no</th>
				<th style="text-align: center;">Designation and working place</th>
				<th style="text-align: center;">Mobile</th>
				<th style="text-align: center;">Email</th>
			</tr>
		</thead>
		<tbody>
			@foreach($nominations as $key => $rowdata)
			<tr>
				<td>{{++$key}}</td>
				<td>{{$rowdata->name}} ({{$rowdata->id_no}})</td>
				<td>{{$rowdata->designation}} {{$rowdata->working_place}}</td>
				<td>{{$rowdata->contact_no}}</td>
				<td>{{$rowdata->email}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>

	<div style="line-height: 0.1;">@php echo $goInformation->rules_regulations @endphp</div>
	<div style="width: 300px; float: right; /*border: 1px solid black;*/ height: 80px; padding-top: 60px;" >
		<p style="margin: 0px; text-align: center;">(@php echo $profile->name @endphp)</p>
		<p style="margin: 0px; text-align: center;">@php echo $profile->designation @endphp</p>
		<p style="margin: 0px; text-align: center;">Contact : @php echo $profile->contact_no; @endphp</p>
		<p style="margin: 0px; text-align: center;">Email : @php echo $profile->email @endphp</p>
	</div>
	<div style="clear: both; line-height: 0.1;">@php echo $goInformation->before_kind_information @endphp</div>

	<div style="/*border: 1px solid black;*/ float: left; width: 420px; height: 50px;">
		<p style="margin-bottom: 0px;">No-@php echo $goInformation->go_number @endphp</p>
	</div>
	<div style="/*border: 1px solid black;*/ float: right; width: 200px; height: 50px; padding-left: 50px">
		<p style="margin: 0px; margin-left: 40px;">Date:@php echo date_format(new DateTime($rowdata->publish_date), 'd-m-Y'); @endphp</p>
	</div>
	<p style="margin-bottom: 0px;">Copy for kind information and Necessary action(Not according to seniority)</p>
	<div style="line-height: 0.1;">@php echo $goInformation->kind_information @endphp</div>
	<div style="width: 300px; float: right; /*border: 1px solid black;*/ height: 40px; padding-top: 60px;" >
		<p style="margin: 0px; text-align: center;">(@php echo $profile->name @endphp)</p>
		<p style="margin: 0px; text-align: center;">@php echo $profile->designation @endphp</p>
	</div>
</body>
</html>