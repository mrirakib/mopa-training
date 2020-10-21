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
	<p style="margin: 0px 0px 0px 250px; font-size: 16px;">গণপ্রজাতন্ত্রী বাংলাদেশ সরকার</p>
	<p style="margin: 0px 0px 0px 276px;">জনপ্রশাসন মন্ত্রণালয়</p>
	<p style="margin: 0px 0px 0px 260px;">অভ্যন্তরীণ প্রশিক্ষণ-১ শাখা</p>
	<p style="margin: 0px 0px 0px 250px;">www.mopa.gov.bd</p>
	<div style="/*border: 1px solid black;*/ float: left; width: 420px; height: 50px;">
		<p style="margin-bottom: 0px;">স্মারক নং-০৫.০০.০০০০.২০০.২৫.০২১.১৯.১৪১</p>
	</div>
	<div style="/*border: 1px solid black;*/ float: right; width: 200px; height: 50px; padding-left: 50px">
		<p style="margin: 10px 0px -15px 80px; padding-bottom: -10px;">০২ কার্তিক ১৪২৭</p>
		<p style="margin: 0px; margin-left: 40px;">তারিখ:------------------------</p>
		<p style="margin: -9px 0px 0px 80px;">১৮ অক্টোবর ২০২০</p>
	</div>
	<!-- <p style="float: right; margin: 0px 0px -7px 30px;">০২ কার্তিক ১৪২৭</p>
	<p style="float: right; margin: 0px;">তারিখ: --------------------------</p>
	<p style="float: right; margin: -7px 0px 0px 0px; width: 100px;">১৮ অক্টোবর ২০২০</p> -->
	<p style="margin: 0px;"></p>
	@php
	$bn = new BanglaDate(time(), 0);
$bdt = $bn->get_date();
 
$text = sprintf( 'আজ %s', implode( ' ',  $bdt ) );
echo $text;
@endphp
	<!-- <p><strong>বিষয়ঃ</strong>{{$training->title}}</p> -->
	<table style="width: 100%;">
		<tbody>
			<tr>
				<td style="border: none;"><strong>বিষয়ঃ</strong></td>
				<td style="border: none;">{{$training->title}}</td>
			</tr>
		</tbody>
	</table>
	<p style="margin: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{$training->title}}{{$training->title}}:</p>
	
	<table style="width: 100%;">
		<thead>
			<tr>
				<th>ক্র. নং</th>
				<th>নাম ও পরিচিতি নং</th>
				<th>পদবী ও বর্তমান কর্রস্থল</th>
				<th>মোবাইল</th>
				<th>ই-মেইল</th>
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
			@foreach($nominations as $key => $rowdata)
			<tr>
				<td>@php echo en2bnNumber(++$key); @endphp.</td>
				<td>{{$rowdata->name_bangla}} (@php echo en2bnNumber($rowdata->id_no); @endphp)</td>
				<td>{{$rowdata->designation_bangla}} {{$rowdata->working_place}}</td>
				<td>@php echo en2bnNumber($rowdata->contact_no); @endphp</td>
				<td>{{$rowdata->email}}</td>
			</tr>
			@endforeach
			@foreach($nominations as $key => $rowdata)
			<tr>
				<td>@php echo en2bnNumber(++$key); @endphp.</td>
				<td>{{$rowdata->name_bangla}} (@php echo en2bnNumber($rowdata->id_no); @endphp)</td>
				<td>{{$rowdata->designation_bangla}} {{$rowdata->working_place}}</td>
				<td>@php echo en2bnNumber($rowdata->contact_no); @endphp</td>
				<td>{{$rowdata->email}}</td>
			</tr>
			@endforeach
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

	<table style="width: 100%;">
		<tbody>
			@for($i=1; $i<=6; $i++)
			<tr>
				<td style="border: none;">@php echo en2bnNumber($i); @endphp ।</td>
				<td style="border: none;">{{$training->title}}</td>
			</tr>
			@endfor
		</tbody>
	</table>
	<div style="width: 300px; float: right; border: 1px solid black; height: 80px; padding-top: 60px;" >
		<p style="margin: 0px; text-align: center;">(মোঃ আবদুর রউফ মিয়া)</p>
		<p style="margin: 0px; text-align: center;">উপসচিব</p>
		<p style="margin: 0px; text-align: center;">ফোনঃ =৮৮ ০২ ৯৫১৫৫২৫</p>
		<p style="margin: 0px; text-align: center;">ই-মেইলঃ it1@mopa.gov.bd</p>
	</div>
	<p style="margin: 0px; clear: both;"></p>
	<p style="margin: 0px;">রেক্টর</p>
	<p style="margin: 0px;">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</p>
	<p style="margin: 0px;">সাভার, ঢাকা।</p>

	<div style="/*border: 1px solid black;*/ float: left; width: 420px; height: 50px;">
		<p style="margin-bottom: 0px;">স্মারক নং-০৫.০০.০০০০.২০০.২৫.০২১.১৯.১৪১</p>
	</div>
	<div style="/*border: 1px solid black;*/ float: right; width: 200px; height: 50px; padding-left: 50px">
		<p style="margin: 10px 0px -15px 80px; padding-bottom: -10px;">০২ কার্তিক ১৪২৭</p>
		<p style="margin: 0px; margin-left: 40px;">তারিখ:------------------------</p>
		<p style="margin: -9px 0px 0px 80px;">১৮ অক্টোবর ২০২০</p>
	</div>
	<table style="width: 100%;">
		<tbody>
			<tr>
				<td style="border: none;"></td>
				<td style="border: none;">অনুলিপিঃ সদয় অবগতির জন্য (জ্যেষ্ঠতার ভিত্তিতে নয়)</td>
			</tr>
			@for($i=1; $i<=10; $i++)
			<tr>
				<td style="border: none;">@php echo en2bnNumber($i); @endphp ।</td>
				<td style="border: none;">{{$training->title}}</td>
			</tr>
			@endfor
		</tbody>
	</table>
	<div style="width: 300px; float: right; border: 1px solid black; height: 40px; padding-top: 60px;" >
		<p style="margin: 0px; text-align: center;">(মোঃ আবদুর রউফ মিয়া)</p>
		<p style="margin: 0px; text-align: center;">উপসচিব</p>
	</div>
</body>
</html>