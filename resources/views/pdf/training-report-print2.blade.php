<!DOCTYPE html>
<html>
<head>
	<title></title>
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
	<p style="margin: 0px 0px 0px 0px; font-size: 16px;text-align: center;">গণপ্রজাতন্ত্রী বাংলাদেশ সরকার</p>
	<p style="margin: 0px 0px 0px 0px;text-align: center;">জনপ্রশাসন মন্ত্রণালয়</p>
	<p style="margin: 0px 0px 0px 0px; text-align: center;">www.mopa.gov.bd</p>
	<p><b>Search Key</b></p>
	<p><b>Training Type</b> : {{$training_type}}&nbsp;&nbsp; @if($go_info_id != null)<b>Training GO Title</b> : {{$go_info->subject}}&nbsp;&nbsp; @endif @if($report_type != null)<b>Report Type</b> : {{$report_type}}&nbsp;&nbsp; @endif</p>
	
	<table style="width: 100%;">
		<thead>
			<tr>
				<th style="text-align: center;">ক্র. নং</th>
				<th style="text-align: center; width: 40%;">ট্রেনিয়ের নাম</th>
				<th style="text-align: center;">অফিস</th>
				<th style="text-align: center;">নাম ও পরিচিতি নং</th>
				<th style="text-align: center;">পদবী ও বর্তমান কর্রস্থল</th>
				<th style="text-align: center;">মোবাইল</th>
				<th style="text-align: center;">ই-মেইল</th>
			</tr>
		</thead>
		<tbody>
			@foreach($results as $key => $rowdata)
			<tr>
				<td>@php echo en2bnNumber(++$key); @endphp</td>
				<td>{{$rowdata->getTrainingInfo->title}}</td>
				<td>{{$rowdata->getUserInfo->name}}</td>
				<td>{{$rowdata->name_bangla}}(@php echo en2bnNumber($rowdata->id_no); @endphp)</td>
				<td>{{$rowdata->designation_bangla}} ({{$rowdata->working_place_bangla}})</td>
				<td>@php echo en2bnNumber($rowdata->contact_no); @endphp</td>
				<td>{{$rowdata->email}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</body>
</html>