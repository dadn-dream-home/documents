= Thiết kế database

Nhóm thiết kế database với lược đồ ở @fig:database-schema.

#figure(
    image("../../diagrams/database.drawio.svg", width: 100%),
    caption: "Lược đồ schema của database"
) <fig:database-schema>

Lược đồ này gồm có các bảng:

/ `feeds`: lưu các cảm biến và thiết bị được người dùng thêm vào nhà thông
  minh. `type` ở đây sẽ là `TEMPERATURE` hoặc `HUMIDITY` tương ứng với cảm biến
  nhiệt độ và độ ẩm, hoặc `LIGHT` cho thiết bị đèn.

/ `feed_values`: lưu các giá trị mà cảm biến hoặc thiết bị ghi nhận được thông
  qua MQTT.

/ `sensor_configs`: lưu các cấu hình cho cảm biến, bao gồm cấu hình thông báo,
  ngưỡng và kích hoạt thiết bị khác.

/ `actuator_configs`: lưu các cấu hình cho thiết bị, bao gồm cấu hình kích hoạt
  tự động và lịch trình kích hoạt ở định dạng cron.

/ `notifications`: lưu các thông báo được gửi đến người dùng.