<%@ page pageEncoding="utf-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="bg-login">
  <div class="login-form">
    <h3>Đăng nhập</h3>

    <form action="/login" method="POST" style="margin-top: 30px;">
      <div class="mt-3">
        <label for="username" class="mb-1">Tên tài khoản</label>
        <input name="username" type="text" class="form-control" />
      </div>
      <div class="mt-4">
        <label for="password" class="mb-1">Mật khẩu</label>
        <input name="password" type="password" class="form-control" />
      </div>
      <div class="mt-3">
        <span id="error" style="color:red">${message}</span>
      </div>
      <div style="margin-top: 35px;">
        <button type="submit" class="btn btn-primary" style="width: 100%;">Đăng nhập</button>
      </div>
    </form>
    <p class="text-center mt-4"><a href="#/">Đăng ký tài khoản</a></p>
  </div>
</div>

<style>
  .bg-login {
    position: relative;
    width: 100%;
    min-height: auto;
    background-position: right 0px top 0px;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    background-size: cover;
    -o-background-size: cover;
  }

  .login-form {
    border: 1px solid #DDD;
    max-width: 400px;
    padding: 20px;
    margin-top: 100px;
    margin-left: auto;
    margin-right: auto;
  }
</style>