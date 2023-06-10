== Mô hình MVC ở Backend

Lược đồ các class ở backend được biểu diễn ở @fig:backend-architecture.

#figure(
    image("backend-architecture.drawio.svg", width: 100%),
    caption: "Lược đồ các class ở backend"
) <fig:backend-architecture>

Các class này tạo thành mô hình MVC thành phần:

/ `VerbNounHandler`: là các class chứa các method tiếp nhận các request từ client.
  Các method này được sinh tự động từ các file `*.proto` do `gRPC`. Các class
  đóng vai trò là view. Các class này sẽ gọi các controller khác để xử lý và
  trả về kết quả cho client.

/ `Server`: là class chứa các method để khởi tạo server và điều phối các
  controller. Class này đóng vai trò là view. \
  Class này sử dụng design pattern *Mediator*, là đầu mối để tất cả các
  handler và controller giao tiếp với nhau.

/ `Repository`: là class có nhiệm vụ truy xuất dữ liệu từ database. Class này đóng
  vai trò là model.

/ `Feed`, `Config`, `Activity`, `Notification`: là các class model, được tạo bởi file
  `*.proto` do `gRPC` sinh ra.

/ `DatabaseHooker`: là class controller, có nhiệm vụ lắng nghe các thay đổi
  ngay từ database và cập nhật cho những class cần. \
  Class này sử dụng design pattern *Observer*, để gửi các cập nhật cho các
  class cần thiết khác.

/ `AutomaticScheduler`: là class controller, có nhiệm vụ chạy các task định kỳ
  là bật tắt thiết bị theo lịch.

/ `FeedValueLogger`#footnote([Tên class _đáng lẽ_ nên là `*Notifier`, tên class hiện
  tại mang tính tàn tích lịch sử.]): là class controller, có nhiệm vụ lắng nghe các giá trị
  cảm biến để sinh ra thông báo.

/ `MQTTSubscriber`: là class controller, có nhiệm vụ lắng nghe các giá trị từ
  MQTT và lưu vào database, cũng như nhận các yêu cầu publish MQTT. \
  Class này sử dụng design pattern *Adaptor*, cung cấp API dễ sử dụng hơn class
  `mqtt.Client` do thư viện cung cấp.