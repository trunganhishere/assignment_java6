<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<table class="table">
    <thead>
        <tr>
            <th>Sản phẩm</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="item" items="${cart.items}">
            <form action="/update-cart/${item.product.id}" method="post">
                <input type="hidden" name="id" value="${item.product.id}">
                <tr>
                    <td>${item.product.name}</td>
                    <td>${item.price}</td>
                    <td>
                        <input type="number" class="form-control"
                            min="1"
                            name="quantity"
                            value="${item.quantity}"
                            onchange="this.form.submit()"
                            style="width:50px;">
                    </td>
                    <td>${item.price * item.quantity}</td>
                    <td>
                        <a class="btn btn-sm btn-danger" href="/remove-cart/${item.product.id}">Xóa</a>
                    </td>
                </tr>
            </form>
        </c:forEach>
    </tbody>
</table>
<div class="my-2">Tổng số tiền: ${cart.amount}</div>
<a class="btn btn-secondary" href="/">Tiếp tục mua hàng</a>
<a class="btn btn-primary" href="/checkout">Thanh toán</a>
