= Lược đồ deployment

Nhóm đề xuất lược đồ deployment ở @fig:deployment.

#figure(
    image("deployment.drawio.svg", width: 100%),
    caption: "Lược đồ deployment",
) <fig:deployment>

Lược đồ này gồm các thành phần chính:

/ Sensor: là các cảm biến, được lập trình bởi Yolo:Bit để gửi các giá trị cảm
  biến đo được về cho máy chủ.

/ Actuator: là các thiết bị, tương tự như cảm biến.

/ Backend Server: là máy chủ, chịu trách nhiệm nhận dữ liệu và cung cấp API cho
  ứng dụng di động. Dữ liệu được nhận từ các cảm biến, thiết bị thông qua API
  MQTT, cung cấp bởi phần mềm `mosquitto`#footnote[https://mosquitto.org].
  Các API được cung cấp bởi thư viện `gRPC`#footnote[https://grpc.io]. Các API này được sử dụng bởi ứng
  dụng di động để hiển thị dữ liệu. \

/ Mobile Phone: là thiết bị của người dùng. Ứng dụng di động sử dụng các API để
  hiển thị dữ liệu cũng như điều khiển thiết bị.

Nhóm dự kiến nếu đưa vào hoạt động, Backend Server sẽ được chạy trên một máy
tính Raspberry Pi, song không có thời gian để thử nghiệm. Ngoài ra, trong đồ
án này, để đảm bảo tính ổn định, các cảm biến và thiết bị sẽ gửi dữ liệu
thông qua một gateway khác trước khi đến được máy chủ.
