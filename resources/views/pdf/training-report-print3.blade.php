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
	<p><b>Organization</b> : {{$organization}} &nbsp; &nbsp; &nbsp; <b>Report Type</b> : {{$report_type}}</p>
	@if($go_info_id != null)<p><b>Training GO Title</b> : @php echo $go_info->subject; @endphp </p> @endif
	<?php  $total = 0; ?>
	<table style="width: 100%;">
		<thead>
			<tr>
				<th style="text-align: center;">ক্র. নং</th>
				<th style="text-align: center;">ট্রেনিয়ের নাম</th>
				<th style="text-align: center;">মোট</th>
			</tr>
		</thead>
		<tbody>
			@foreach($results as $key => $rowdata)
			<tr>
				<td>@php echo en2bnNumber(++$key); @endphp</td>
				<td>@php echo $rowdata->getGOInfo($rowdata->training_id); @endphp</td>
				<td>@php echo en2bnNumber($rowdata->total); @endphp</td>
			</tr>
			@php $total += $rowdata->total; @endphp
			@endforeach
			<tr>
			   <td></td>
			   <td style="text-align: right;">মোটঃ</td>
			   <td>@php echo en2bnNumber($total); @endphp</td>
			</tr>
		</tbody>
	</table>
</body>
</html>