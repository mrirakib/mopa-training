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
	<p style="margin: 0px 0px 0px 0px;text-align: center;">{{$profile->department_bangla}}</p>
	<p style="margin: 0px 0px 0px 0px; text-align: center;">www.mopa.gov.bd</p>
	<div style="/*border: 1px solid black;*/ float: left; width: 420px; height: 50px;">
		<p style="margin-bottom: 0px;">স্মারক নং-@php echo $goInformation->go_number @endphp</p>
	</div>
	<div style="/*border: 1px solid black;*/ float: right; width: 200px; height: 50px; padding-left: 50px">
		<p style="margin: 10px 0px -15px 80px; padding-bottom: -10px;">@php echo $goInformation->publish_date_bangla @endphp</p>
		<p style="margin: 0px; margin-left: 40px;">তারিখ:------------------------</p>
		<p style="margin: -9px 0px 0px 80px;">@php echo $goInformation->publish_date_english @endphp</p>
	</div>
	<!-- <p style="float: right; margin: 0px 0px -7px 30px;">০২ কার্তিক ১৪২৭</p>
	<p style="float: right; margin: 0px;">তারিখ: --------------------------</p>
	<p style="float: right; margin: -7px 0px 0px 0px; width: 100px;">১৮ অক্টোবর ২০২০</p> -->
	<p style="margin: 5px;"></p>
	<!-- @php
	$bn = new BanglaDate(time(), 0);
$bdt = $bn->get_date();
 
$text = sprintf( 'আজ %s', implode( ' ',  $bdt ) );
echo $text;
@endphp -->
	<!-- <p><strong>বিষয়ঃ</strong>{{$training->title}}</p> -->
	<table style="width: 100%;">
		<tbody>
			<tr>
				<td style="border: none; padding: 0px;"><strong>বিষয়ঃ</strong></td>
				<td style="border: none; padding: 0px;">@php echo $goInformation->subject @endphp</td>
			</tr>
		</tbody>
	</table>
	<div>@php echo $goInformation->details @endphp</div>
	
	<table style="width: 100%;">
		<thead>
			<tr>
				<th style="text-align: center;">ক্র. নং</th>
				<th style="text-align: center;">নাম ও পরিচিতি নং</th>
				<th style="text-align: center;">পদবী ও বর্তমান কর্রস্থল</th>
				<th style="text-align: center;">মোবাইল</th>
				<th style="text-align: center;">ই-মেইল</th>
			</tr>
		</thead>
		<tbody>
			@foreach($nominations as $key => $rowdata)
			<tr>
				<td>@php echo en2bnNumber(++$key); @endphp.</td>
				<td>{{$rowdata->name_bangla}} (@php echo en2bnNumber($rowdata->id_no); @endphp)</td>
				<td>{{$rowdata->designation_bangla}} {{$rowdata->working_place}}</td>
				<td>@php echo en2bnNumber($rowdata->contact_no); @endphp</td>
				<td>{{$rowdata->email}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>

	<div style="line-height: 0.1;">@php echo $goInformation->rules_regulations @endphp</div>
	<div style="width: 300px; float: right; /*border: 1px solid black;*/ height: 80px; padding-top: 60px;" >
		<p style="margin: 0px; text-align: center;">(@php echo $profile->name_bangla @endphp)</p>
		<p style="margin: 0px; text-align: center;">@php echo $profile->designation_bangla @endphp</p>
		<p style="margin: 0px; text-align: center;">ফোনঃ @php echo en2bnNumber($profile->contact_no) @endphp</p>
		<p style="margin: 0px; text-align: center;">ই-মেইলঃ @php echo $profile->email @endphp</p>
	</div>
	<div style="clear: both; line-height: 0.1;">@php echo $goInformation->before_kind_information @endphp</div>

	<div style="/*border: 1px solid black;*/ float: left; width: 420px; height: 50px;">
		<p style="margin-bottom: 0px;">স্মারক নং-@php echo $goInformation->go_number @endphp</p>
	</div>
	<div style="/*border: 1px solid black;*/ float: right; width: 200px; height: 50px; padding-left: 50px">
		<p style="margin: 10px 0px -15px 80px; padding-bottom: -10px;">@php echo $goInformation->publish_date_bangla @endphp</p>
		<p style="margin: 0px; margin-left: 40px;">তারিখ:------------------------</p>
		<p style="margin: -9px 0px 0px 80px;">@php echo $goInformation->publish_date_english @endphp</p>
	</div>
	<p style="margin-bottom: 0px;">অনুলিপিঃ সদয় অবগতির জন্য (জ্যেষ্ঠতার ভিত্তিতে নয়)</p>
	<div style="line-height: 0.1;">@php echo $goInformation->kind_information @endphp</div>
	<div style="width: 300px; float: right; /*border: 1px solid black;*/ height: 40px; padding-top: 60px;" >
		<p style="margin: 0px; text-align: center;">(@php echo $profile->name_bangla @endphp)</p>
		<p style="margin: 0px; text-align: center;">@php echo $profile->designation_bangla @endphp</p>
	</div>
</body>
</html>