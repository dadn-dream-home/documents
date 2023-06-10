= Đặc tả cảm biến, thiết bị

Cảm biến, thiết bị ở đây được sử dụng do OhStem cung cấp. Dưới đây là bảng các
các thiết bị được nhóm sử dụng.

#align(horizon, table(
    columns: (auto, auto, 1fr),
    inset: 1em,
    image("yolobit.jpg", width: 3cm), [*Bộ kit#linebreak()Yolo:Bit*], [
        - 25 đèn LED đa màu, được sắp xếp theo ma trận vuông 5 #sym.times 5.
        - 2 nút nhấn A, B để tương tác.
        - Cảm biến ánh sáng.
        - Cảm biến nhiệt độ và độ ẩm.
        - Cảm biến gia tốc để đo góc nghiêng và hướng chuyển động.
        - Loa phát nhạc.
    ],

    image("dht20.png", width: 3cm), [*DHT20*], [
        - Điện áp đầu vào: $3.3 "V"$
        - Đo phạm vi độ ẩm: $0 tilde.op 100%$ RH
        - Dải nhiệt độ đo: $-40 tilde.op +80 degree C$
        - Độ chính xác độ ẩm: $plus.minus 3% "RH" (25 degree C)$
        - Độ chính xác nhiệt độ: $plus.minus 0,5 degree C$
        - Tín hiệu đầu ra: Tín hiệu I2C
    ],

    image("den.png", width: 3cm), [*4 LED RGB*], [
        - Điện áp hoạt động: $3.3 "V"$
        - Số lượng LED: 4 #sym.times RGB LED
        - Dòng điện tối đa: $60 "mA"$ / (1 LED), $240 "mA"$ / (4 LED)
        - Loại LED: WS2812-4
        - Độ sáng: $0 tilde 255$
        - Điều khiển: Sử dụng 1 chân tín hiệu điều khiển
        - Góc khả vi: $> 140 degree$
        - Kích thước: $48 times 24 times 18 "mm"$ (D #sym.times R #sym.times C)
    ],

    image("quat.png", width: 3cm), [*Quạt mini*], [
        - Điện áp hoạt động: $3.3 "V"$
        - Tín hiệu điều khiển: 2 pins
        - Kích thước của mạch: 24mm #sym.times 48mm #sym.times 16mm
    ]
))