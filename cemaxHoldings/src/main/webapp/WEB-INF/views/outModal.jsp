<html>
<link rel='stylesheet'
	href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
<body>




	<div class="row">
		<div class="col-md-5">
			<label>Customer Name</label> <input type="text" name="cusname"
				class="form-control input-sm" id="cusname" />
		</div>
		<div class="col-md-2"></div>
		<div>
			<div class="col-md-5">
				<label>Total Outstanding</label> <input type="text" name="cusname"
					class="form-control input-sm" id="cusname" />
			</div>
		</div>
	</div>

	<hr>

	<table class="table table-bordered">
		<tr>

			<th>Invoice Number</th>
			<th>Value</th>
			<th>Remaining Days</th>
		</tr>
		<tr>
			<td>IN1150</td>
			<td>80000</td>
			<td>4</td>

		</tr>
		<tr>
			<td>IN2050</td>
			<td>20000</td>
			<td>12</td>

		</tr>

	</table>

	<div class="row">
		<div class="col-md-4">
			<span> <label>Debited Amount</label>
			</span>
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-5 pull-right ">
			<span> <input type="text" name="cusname"
				class="form-control input-sm" id="cusname" />
			</span>
		</div>

	</div>

	<br>
	<div class="row">
		<div class="col-md-4">
			<span> <label>Date of payment</label>
			</span>
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-5 pull-right ">
			<span> <input type="date" name="cusname"
				class="form-control input-sm" id="cusname" />
			</span>
		</div>

	</div>
	<br>

	<div class="row">
		<div class="col-md-5 col-md-push-7">
			<button type="button" id="btndelnote"
				class="btn btn-success btn-block">Save</button>
		</div>
	</div>

</body>
<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>