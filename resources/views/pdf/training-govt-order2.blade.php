<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		body {
	        height: 842px;
	        width: 595px;
	        /* to centre page on screen*/
	        margin-left: auto;
	        margin-right: auto;
	        border: 1px solid black;
	    }
		table thead th, table tbody td{
			border: 1px solid black;
			padding: 5px;
		}
		table{
			border-collapse: collapse;
		}
	</style>
</head>
<body>
	<p style="margin: 0px 0px 0px 250px; font-size: 16px;">গণপ্রজাতন্ত্রী বাংলাদেশ সরকার</p>
	<p style="margin: 0px 0px 0px 276px;">জনপ্রশাসন মন্ত্রণালয়</p>
	<p style="margin: 0px 0px 0px 260px;">অভ্যন্তরীণ প্রশিক্ষণ-১ শাখা</p>
	<p style="margin: 0px 0px 0px 250px;">www.mopa.gov.bd</p>
	<div style="border: 1px solid black; float: left; width: 420px; height: 100px;">
		<p>স্মারক নং-০৫.০০.০০০০.২০০.২৫.০২১.১৯.১৪১</p>
	</div>
	<div style="border: 1px solid black; float: right; width: 200px; height: 100px; padding-left: 50px">
		<p style="float: right; margin: 0px 0px -7px 30px;">০২ কার্তিক ১৪২৭</p>
	<p style="float: right; margin: 0px;">তারিখ: --------------------------</p>
	<p style="float: right; margin: -7px 0px 0px 40px;">১৮ অক্টোবর ২০২০</p>
	</div>
	<!-- <p style="float: right; margin: 0px 0px -7px 30px;">০২ কার্তিক ১৪২৭</p>
	<p style="float: right; margin: 0px;">তারিখ: --------------------------</p>
	<p style="float: right; margin: -7px 0px 0px 0px; width: 100px;">১৮ অক্টোবর ২০২০</p> -->
	<p>asdfasd</p>
	<p>asdfasd</p>
	<p>asdfasd</p>
	<p>asdfasd</p>
	
	<table>
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
				<td>@php echo en2bnNumber(++$key); @endphp</td>
				<td>{{$rowdata->name_bangla}} (@php echo en2bnNumber($rowdata->id_no); @endphp)</td>
				<td>{{$rowdata->designation_bangla}} {{$rowdata->working_place}}</td>
				<td>@php echo en2bnNumber($rowdata->contact_no); @endphp</td>
				<td>{{$rowdata->email}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</body>
</html>