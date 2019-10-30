<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Supr
.
22
</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- <form action="tc.jsp" method='post'>
		un: <input type='text' name='txtun' value='' placeholder='nhap un'>
		pw: <input type='password' name='txtpass' value='' placeholder='password'> <hr>
		<input type='radio' name='abc'> Nam <hr>
		<input type='checkbox' name='abc'> Nu <hr>
		<input type='file' name='file'> <hr>
		<input type='button' name=''> 
		<input type='date' name=''> 
		<input type='reset' name=''> 
		<input type='submit' name='but1' value='Dang nhap'>
		<select name=''>
			<option>1</option>
			<option selected>2</option>
			
		</select>
	</form>
 -->
 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Large Modal</button>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
        <!--  code here -->
        
       <form>
	<table>
		<tr>
		<td><label>UserName</label></td>
		<td>
			<input type='text' name='txtun' value='' placeholder='nhap un' size='40'></td>
		<td> <input type='text' name='txtun' value='' placeholder='nhap ho va ten' size='40'></td>
		</tr>
		
		<tr>
			<td><label>Mật khẩu</label> </td>
			<td><input type='password' name='txtpass' value='' placeholder='nhap mat khau' size='40'></td>
			<td> 
				<select>
					<option value='none'>Gioi tinh</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td><label>Nhập lại mật khẩu</label> </td>
			<td><input type='password' name='txtnlpass' value='' placeholder='nhap lai mat khau' size='40'></td>
			<td> 
				<select>
					<option value='none'>Ngày</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
		
				<select>
					<option value='none'>Tháng</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
			
				<select>
					<option value='none'>Năm</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td><label>Email</label> </td>
			<td><input type='email' name='txtpass' value='' placeholder='nhap email' size='40'></td>
			<td> 
				<select>
					<option value='none'>Tỉnh/TP</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label>Nhập lại email</label> </td>
			<td><input type='email' name='txtpass' value='' placeholder='nhap lai email' size='40'></td>
			<td> 
				<input type='text' name='txtpass' value='' placeholder='ma xac nhan' size='15'>
			</td>
		</tr>
		
		<tr>
			<td><input type='button' name='txtpass' value='Đăng ký' size='40'></td>
			<td> 
				<input type='checkbox' name='txtpass' value='' placeholder='ma xac nhan' size='15'>Tôi đồng ý ..............
			</td>
		</tr>



	</table>
</form>
          
          
          <!--  end here -->
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
<form>
	<table>
		<tr>
		<td><label>UserName</label></td>
		<td>
			<input type='text' name='txtun' value='' placeholder='nhap un' size='40'></td>
		<td> <input type='text' name='txtun' value='' placeholder='nhap ho va ten' size='40'></td>
		</tr>
		
		<tr>
			<td><label>Mật khẩu</label> </td>
			<td><input type='password' name='txtpass' value='' placeholder='nhap mat khau' size='40'></td>
			<td> 
				<select>
					<option value='none'>Gioi tinh</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td><label>Nhập lại mật khẩu</label> </td>
			<td><input type='password' name='txtnlpass' value='' placeholder='nhap lai mat khau' size='40'></td>
			<td> 
				<select>
					<option value='none'>Ngày</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
		
				<select>
					<option value='none'>Tháng</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
			
				<select>
					<option value='none'>Năm</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td><label>Email</label> </td>
			<td><input type='email' name='txtpass' value='' placeholder='nhap email' size='40'></td>
			<td> 
				<select>
					<option value='none'>Tỉnh/TP</option>
					<option value='nam'>Nam</option>
					<option value='nu'>nu</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label>Nhập lại email</label> </td>
			<td><input type='email' name='txtpass' value='' placeholder='nhap lai email' size='40'></td>
			<td> 
				<input type='text' name='txtpass' value='' placeholder='ma xac nhan' size='15'>
			</td>
		</tr>
		
		<tr>
			<td><input type='button' name='txtpass' value='Đăng ký' size='40'></td>
			<td> 
				<input type='checkbox' name='txtpass' value='' placeholder='ma xac nhan' size='15'>Tôi đồng ý ..............
			</td>
		</tr>



	</table>
</form>
</body>
</html>