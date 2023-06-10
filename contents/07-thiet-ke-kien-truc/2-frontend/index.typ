== Mô hình MVC ở frontend

Do ở frontend có _quá nhiều_ class nên nhóm xin phép không thêm vào báo cáo. Thay
vào đó, nhóm xin phép trình bày sơ lược hướng tiếp cận.

Nhóm sử dụng *Dart / Flutter* để xây dựng ứng dụng di động. Trong đó, nhóm sử dụng
mô hình MVC để xây dựng ứng dụng, sử dụng hướng dẫn từ
#cite("andrea0", "andrea1", "andrea2").

- Các class *View* sẽ là các Widget từ Flutter, có trách nhiệm nhận dữ liệu và
  hiển thị, gọi các callback được truyền vào khi có tương tác người dùng.

- Các class *Controller* sẽ cung cấp các callback cho *View*, và gọi các hàm từ
  các controller khác để thực hiện các logic.

- Các class *Model* sẽ là các class đại diện cho các đối tượng trong ứng dụng,
  có thể là các đối tượng từ backend, hoặc các đối tượng được tạo ra để phục vụ
  cho việc hiển thị. Hầu hết các class này được tạo ra bởi `gRPC`.