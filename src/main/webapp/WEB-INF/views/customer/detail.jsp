<%@ page pageEncoding="utf-8"%>

<div class="my-4">
  <div class="row">
    <div class="col-6">
      <img alt="" class="product-detail-image" src="${product.image}" />
    </div>

    <div class="col-6 mt-5">
      <div class="product-detail-title">${product.name}</div>
      <br />
      <table class="table">
        <tbody>
          <tr>
            <td>Loại sản phẩm:</td>
            <td>${product.category.name}</td>
          </tr>
          <tr>
            <td>Giá bán:</td>
            <td><b>${product.price} ₫</b></td>
          </tr>
        </tbody>
      </table>
      <br />
      <a class="btn btn-secondary" href="/">Quay lại</a>
      <a class="btn btn-primary" href="/add-to-cart/${product.id}">Thêm vào giỏ hàng</a>
    </div>
  </div>
</div>