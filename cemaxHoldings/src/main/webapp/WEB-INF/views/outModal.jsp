



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
			<button type="button" id="btndelnote" class="btn btn-success btn-block" data-toggle="modal" href="#authModal">Save</button>
		</div>
	</div>

	
	
 <!-- Modal -->
	<div id="authModal" class="modal fade" role="dialog" >
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<%@include file="debitauth.jsp"%>
				</div>
			</div>
		</div>
	</div>
	<!-- <End modal> --> 