USE [WebDB5]
GO
/******
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES('',N'', ,N'',N'', N'', ,  N'Đen', 5, 1, 1)
******/


---1
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 1DX', N'Độ lớn màn hình LCD(inch): 3.2 inch , Loại máy ảnh (Body type): Large SLR ,Kích thước cảm biến (Sensor size): Full frame (36 x 24 mm),Megapixel (Số điểm ảnh hiệu dụng): 18.1 Megapixel,Độ phân giải ảnh lớn nhất: 5184 x 3456 , Tính năng: Timelapse recording, Face detection, GPS (Optional), Quay phim Full HD', 30000000, 'img\products\canon\1dx\1.png', 'img\products\canon\1dx\2.png', 'img\products\canon\1dx\3.png', 28500000,  N'Đen', 5, 1, 1)
---2
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 1DX mark II', N'Cảm biến hình ảnh full-frame 20.2MP CMOS  ,Bộ xử lý hình ảnh DIGIC kép 6 +,ISO 100-51.200 với sự mở rộng xuống đến 50 và lên tới 409.600,Có khả năng quay video 4K 60 fps ở 800 Mbps, quay HD 1080p đầy đủ tại 120 fps, 360 Mbps,Khả năng chụp liên tục 14 fps ', 130000000,N'img\products\canon\1dx2\1.png',N'img\products\canon\1dx2\2.png', 'img\products\canon\1dx2\3.png', 123500000,  N'Đen', 5, 1, 1)
---3
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 1DX mark III', N'Cảm biến 20.1MP CMOS Sensor + DIGIC X image processor , Lên đến 191-điểm cảm biến AF độ phân giải cao (Viewfinder AF),Quay phim chế độ RAW không crop với 5.5K 50p/60p,kết nối Wi-Fi/Bluetooth tiết kiệm năng lượng,Canon Log (YCbCr 4:2:2, 10-bit)', 190000000,N'img\products\canon\1dx3\1.png',N'img\products\canon\1dx3\2.png', 'img\products\canon\1dx3\3.png', 180500000,  N'Đen', 5, 1, 1)
---4
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 5D mark II', N'Có thiết kế cải tiến hơn so với EOS 5D bằng cách tăng độ phân giải khoảng 40% lên 21.1 MP. Máy ảnh trang bị màn hình LCD 3.0" với 920.000 điểm ảnh cho phép người dùng xem hình ảnh sắc nét và rõ ràng. Dù được thiết kế với độ bền cao nhưng Canon EOS 5D Mark II vẫn toát lên được sự tinh tế và trang nhã để bạn có thể sử dụng và thao tác dễ dàng.', 8000000,N'img\products\canon\5d2\1.png',N'img\products\canon\5d2\2.png', 'img\products\canon\5d2\3.png', 7600000,  N'Đen', 5, 1, 1)
---5
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 5D mark III', N'Là máy ảnh DSLR có hiệu suất hoạt động cao với cảm biến Full-Frame 22.3MP. Kết hợp với bộ xử lý hình ảnh DIGIC 5+ tạo ra ảnh có độ phân giải cao và video Full HD 1080p có tốc độ 30fps. Bên cạnh đó, Canon EOS 5D Mark III còn có màn hình LCD 3.2 inch, tự động lấy nét nhproducts và hệ thống lấy nét tự động lên đến 61 điểm.', 21000000,N'img\products\canon\5d3\1.png',N'img\products\canon\5d3\2.png', 'img\products\canon\5d3\3.png', 19950000,  N'Đen', 5, 1, 1)
---6
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 5D mark IV', N'Chip xử lý hình ảnh: DIGIC 6+ , Dual Pixel RAW,Khả năng quay video: 4K,Chế độ khử flicker,Tích hợp: kết nối Wi-Fi và NFC,Thẻ nhớ: SD/ SDHC/ SDXC, CompactFlash Type II,Cổng kết nối: USB 3.0, HDMI,Khối lượng: 890g', 55000000,N'img\products\canon\5d4\1.png',N'img\products\canon\5d4\2.png', 'img\products\canon\5d4\3.png', 52250000,  N'Đen', 5, 1, 1)
---7
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 5Ds', N'Độ phân giải: 50.6 Megapixels, Cảm biến hình ảnh: CMOS (sensor 36 x 24mm ), Chụp liên tục: 5 ảnh/giây,Màn hình LCD: 3.2 inch,Tốc độ ISO: ISO 25.600 ( mở rộng đến 51.200),Trọng lượng: 845g', 34000000,N'img\products\canon\5ds\1.png',N'img\products\canon\5ds\2.png', 'img\products\canon\5ds\3.png', 32300000,  N'Đen', 5, 1, 1)
---8
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 6D mark II', N'Là mẫu máy ảnh thuộc phân khúc cận cao cấp hướng đến người dùng chuyên nghiệp mà Canon hướng tới. Với mức giá 1200USD và hội tụ rất nhiều yếu tố công nghệ, mẫu máy này thực sự là một mẫu máy ảnh khá toàn diện trong phân khúc mà máy hướng tới.', 30000000,N'img\products\canon\6d2\1.png',N'img\products\canon\6d2\2.png', 'img\products\canon\6d2\3.png', 28500000,  N'Đen', 5, 1, 1)
---9
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 6D',N'Cảm biến CMOS fullframe 20.2 megapixel.Bộ xử lý hình ảnh DIGIC 5+,ISO 100-25600 ( mở rộng 102400) ,Màn hình LCD 3.0inch,Tốc độ chụp liên tục tối đa 4.5 hình/giây,Tích hợp Wi-Fi,GPS,Trọng lượng  675g', 13000000,N'img\products\canon\6d\1.png',N'img\products\canon\6d\2.png', 'img\products\canon\6d\3.png', 12350000,  N'Đen', 5, 1, 1)
---10
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 7D', N'Là dòng máy DSLR cảm biến APS-C 18MP sở hữu bộ vi xử lý kép Dual DIGIC 4 cho tốc độ chụp liên tiếp tới 8fps, cùng một loạt các tính năng nâng cấp khác mang tới khả năng cạnh trproducts cao, nổi bật giữa hàng loạt những đối thủ lớn trên thị trường máy ảnh.', 6500000,N'img\products\canon\7d\1.png',N'img\products\canon\7d\2.png', 'img\products\canon\7d\3.png', 6150000,  N'Đen', 5, 1, 1)
---11
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 7D mark II', N'Cảm biến CMOS APS-C 20.2 MP , Chíp xử lý hình ảnh DIGIC 6 x 2,Màn hình LCD 3.0" 1.040.000 điểm ảnh ,Quay phim Full HD 1080p tại 60 hình/giây ,Chụp liên tục 10 hình/giây,65 điểm lấy nét tự động dạng chữ thập,ISO 16000, được mở rộng đến ISO 51200', 15000000,N'img\products\canon\7d2\1.png',N'img\products\canon\7d2\4.png', 'img\products\canon\7d2\3.png', 14250000,  N'Đen', 5, 1, 1)
---12
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 60D', N'Độ lớn màn hình LCD(inch): 3.0 inch ,Loại máy ảnh: Mid-size SLR,Kích thước cảm biến: APS-C (22.3 x 14.9 mm),Megapixel (Số điểm ảnh hiệu dụng): 18 Megapixel,Tính năng: Timelapse recording, Face detection, In-camera raw conversion, EyeFi, Quay phim Full HD', 7000000,N'img\products\canon\60d\1.png',N'img\products\canon\60d\2.png', 'img\products\canon\60d\3.png', 6650000,  N'Đen', 5, 1, 1)
---13
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 77D', N'Cảm biến APS-C CMOS độ phân giải 24.2MP ,Chíp xử lý hình ảnh Canon Digic 7,Màn hình LCD 3inch 1040K ,Quay phim Full-HD 60 hình/s,Hệ thống AF 45 điểm Cross type theo pha,ISO lên tới 51200 ', 15000000,N'img\products\canon\77d\1.png',N'img\products\canon\77d\2.png', 'img\products\canon\77d\3.png', 14250000,  N'Đen', 5, 1, 1)
---14
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 80D', N'Cảm biến CMOS 24.2 megapixel., Bộ xử lý hình ảnh DIGIC 6,ISO 100-16000 ( mở rộng 25600),Tốc độ chụp liên tục tối đa 7.0 hình/giây,Tốc độ chụp liên tục tối đa 7.0 hình/giây,Tích hợp Wifi và NFC,Thẻ nhớ tương thích : SD/ SDHC/SDXC', 4000000,N'img\products\canon\80d\1.png',N'img\products\canon\80d\2.png', 'img\products\canon\80d\3.png', 3800000,  N'Đen', 5, 1, 1)
---15
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 90D', N'Máy ảnh DSLR tầm trung dành cho những người muốn nâng cao khả năng chụp ảnh. Máy ảnh có kích thước 140.7 x 104.8 x 76.8 mm và trọng lượng 701g được thiết kế với màn hình lật 3.1 inch. Máy ảnh có khả năng chống bụi, chống ẩm thích hợp sử dụng khi chụp ảnh trong nhiều điều kiện thời tiết khác nhau. ', 29000000,N'img\products\canon\90d\1.png',N'img\products\canon\90d\2.png', 'img\products\canon\90d\3.png', 27050000,  N'Đen', 7, 1, 1)
---16
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 750D', N'Cảm biến CMOS 24.2 megapixel.Bộ xử lý hình ảnh DIGIC 6,Màn hình LCD 3.0inch cảm ứng,Quay phim Full HD,Thẻ nhớ tương thích: SD/ SDHC/SDXC,Hệ thống lấy nét lai (Hybrid CMOS AF III)', 9000000,N'img\products\canon\750d\1.png',N'img\products\canon\750d\2.png', 'img\products\canon\750d\3.png', 8550000,  N'Đen', 5, 1, 1)
---17
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon 1300D', N'Độ phân giải: 18 MP , Màn hình: TFT 3.0 inch,ISO 100 đến ISO 6400,Bộ cảm biến: CMOS,Quay phim: Full HD', 5000000,N'img\products\canon\1300d\1.png',N'img\products\canon\1300d\2.png', 'img\products\canon\1300d\3.png', 4750000,  N'Đen', 5, 1, 1)
---18
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon M50', N'Cảm biến: APS-C , Độ phân giải: 24.1MP ,Tích hợp WiFi, Bluetooth, NFC chia sẻ qua điện thoại dễ dàngi,Dải ISO: 100 - 25600 (mở rộng 100 - 51200)', 13000000,N'img\products\canon\m50\1.jpg',N'img\products\canon\m50\2.jpg', 'img\products\canon\m50\3.jpg', 12350000,  N'Đen', 5, 1, 1)
---19
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon R', N'Cảm biến CMOS full-frame 30,3MP,Video 4KHD UHD; C-Log & 10-bit HDMI Out,Màn hình cảm ứng LCD xoay 3.15 "2.1m-Dot,ISO 50-102400,Wi-Fi và Bluetooth, Khe cắm thẻ SD UHS-II,N', 35000000,N'img\products\canon\R\1.jpg',N'img\products\canon\R\2.jpg', 'img\products\canon\R\3.jpg', 33250000,  N'Đen', 5, 1, 1)
---20
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Canon R5', N'Cảm biến CMOS full-frame 45MP,Ổn định hình ảnh 5 trục (IBIS),Chụp liên tiếp 12 fps với màn trập cơ, 20 fps với màn trập điện tử ,Quay video 8K 30 fps, 4K 120 fps, 4K 60 fps', 85990000,N'img\products\canon\R5\1.png',N'img\products\canon\R5\2.png', 'img\products\canon\R5\3.png', 81690000,  N'Đen', 5, 1, 1)
---21
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7', N'Cảm biến Full-Frame Exmor™ CMOS 24.3MP,Độ phân giải ảnh tối đa: 6000 x 4000,Chụp lấy nét liên tiếp: 4 hình/giây,ISO: 50 - 25.600,Quay phim Full HD: AVCHD 1920 x 1080,Kết nối: Wi-Fi, NFC', 25000000,N'img\products\sony\A7\1.png',N'img\products\sony\A7\2.png', 'img\products\sony\A7\3.png', 23250000,  N'Đen', 7, 2, 1)
---22
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7C', N'Cảm biến Full-frame 24.2MP,Chụp liên tiếp 10 khung hình/giây ,Hệ thống lấy nét 693 điểm,Màn hình khớp nối,Quay video UHD 4K30p với HLG & S-Log3', 40000000,N'img\products\sony\A7C\1.png',N'img\products\sony\A7C\1\2.png', 'img\products\sony\A7C\3.png', 38000000,  N'Đen', 5, 2, 1)
---23
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7R', N'Cảm biến Full Frame 35mm Exmor™ CMOS 36.4MP,Thiết kế hiện đại, hệ thống điều khiển tiện lợi,Thiết kế hiện đại, hệ thống điều khiển tiện lợi,Quay phim Full HD với những chức năng âm thproducts tiên tiến', 40000000,N'img\products\sony\A7R\1.png',N'img\products\sony\A7R\2.png', 'img\products\sony\A7R\3.png', 38000000,  N'Đen', 5, 2, 1)
---24
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7R mark II', N'Cảm biến: Full-Frame, Độ phân giải: 42.4MP,Dải ISO: 100 - 25600 (mở rộng: 50 - 102400),Kết nối không dây: WiFi', 40000000,N'img\products\sony\A7R2\1.png',N'img\products\sony\A7R2\2.png', 'img\products\sony\A7R2\3.png', 38000000,  N'Đen', 5, 2, 1)
---25
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7R mark III', N'Cảm biến: Full-Frame,Dải ISO: 100 - 3200 (mở rộng: 50 - 102400),Độ phân giải: 42.4MP,Kết nối không dây: WiFi, Bluetooth,Màn hình LCD cảm ứng nghiêng 3.0,Quay video: 4k/30p,Tốc độ chụp liên tiếp: 10 fps/s', 54000000,N'img\products\sony\A7R3\1.png',N'img\products\sony\A7R3\2.png', 'img\products\sony\A7R3\3.png', 51300000,  N'Đen', 5, 2, 1)
---26
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A9', N'Bộ xử lý hình ảnh BIONZ X & LSI Front-End,Chụp liên tiếp 20 khung hình/giây,Màn hình OLED EVF Quad-VGA 3.7 triệu điểm ảnh,Cảm biến Full-Frame Stacked CMOS 24,2MP,Hệ thống AF 693 điểm ,Quay video 4K/30p', 82000000,N'img\products\sony\A9\1.png',N'img\products\sony\A9\2.png', 'img\products\sony\A9\3.png', 77900000,  N'Đen', 5, 2, 1)
---27
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7 mark II', N'Cảm biến: Full-Frame ,Độ phân giải: 42.4MP,Màn hình LCD 3.0,Tốc độ chụp liên tiếp: 5 fps/s,Dải ISO: 100 - 25600 (mở rộng: 50 - 102400),Kết nối không dây: WiFi ,Quay video: 4k/30p', 36000000,N'img\products\sony\A72\1.png',N'img\products\sony\A72\2.png', 'img\products\sony\A72\3.png', 34200000,  N'Đen', 5, 2, 1)
---28
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7 mark III', N'Cảm biến: Full-Frame , Độ phân giải: 24.2MP,Màn hình LCD cảm ứng 3.0,Tốc độ chụp liên tiếp: 10 fps/s , Độ phân giải: 24.2MP,Kết nối không dây: WiFi, bluetooth,Quay video: 4k/30p,Trọng lượng: 650g (Body)', 45000000,N'img\products\sony\A73\1.png',N'img\products\sony\A73\2.png', 'img\products\sony\A73\3.png', 42750000,  N'Đen', 5, 2, 1)
---29
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7S mark III', N'Cảm biến CMOS Exmor R BSI Full-Frame 12MP,Quay phim UHD 4k 120p, 10-bit 4:2:2 Internal,Độ nhạy sáng iso 40 - 409,600. ,Tích hợp hệ thống chống rung 5 trục steadyshot ,  Màn hình xoay lật.', 80000000,N'img\products\sony\A7S3\1.png',N'img\products\sony\A7S3\2.png', 'img\products\sony\A7S3\3.png', 76000000,  N'Đen', 5, 2, 1)
---30
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A9 mark II', N'Cảm biến CMOS Exmor RS Full-Frame 24.2MP ,Bộ xử lý hình ảnh BIONZ X & LSI Front-End,ISO: 100-51200 (Mở rộng 50-204800),ISO: 100-51200 (Mở rộng 50-204800),Kết nối không dây: Bluetooth, Wi-Fi ,Kết nối không dây: Bluetooth, Wi-Fi', 94000000,N'img\products\sony\A92\1.png',N'img\products\sony\A92\2.png', 'img\products\sony\A92\3.png', 89300000,  N'Đen', 5, 2, 1)
---31
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A5000',N'Máy ảnh Sony có cảm biến ảnh APS-C CMOS 20.1MP ,ISO tới 16.000, hệ thống lấy nét tự động 25 điểm, Chụp liên tiếp 3.5 fps, tích hợp các hiệu ứng sáng tạo,Khả năng quay phim Full-HD 1080 60i & 24p,Kết nối Wi-Fi NFC với các thiết bị di động thông minh', 10000000,N'img\products\sony\A5000\1.png',N'img\products\sony\A5000\2.png', 'img\products\sony\A5000\3.png', 9500000,  N'Đen', 5, 2, 1)
---32
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A5100', N'Bộ xử lý hình ảnh BIONZ X ,Chụp liên tiếp 6 khung hình / giây,ISO 25600,Màn hình cảm ứng LCD 3.0 inch 921.600 điểm ảnh ,Cảm biến CMOS APS-C Exmor HD 24.3MP,Hệ thống Fast Hybrid AF,Kết nối Wi-Fi tích hợp với NFC, ảnhQuay video Full HD 1080p', 6200000,N'img\products\sony\A5100\1.png',N'img\products\sony\A5100\2.png', 'img\products\sony\A5100\3.png', 5890000,  N'Đen', 5, 2, 1)
---33
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A6000', N'Cảm biến: APS-C,Độ phân giải: 24.3MP,Màn hình LCD 3.0, Tốc độ chụp liên tiếp: 11 fps/s ,Dải ISO: 100 - 25600,Kết nối không dây: WiFi,Quay video: Full/60p,Trọng lượng: 344g (Body+pin+thẻ nhớ)', 11000000,N'img\products\sony\A6000\1.png',N'img\products\sony\A6000\2.png', 'img\products\sony\A6000\3.png', 10450000,  N'Đen', 5, 2, 1)
---34
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A6100',N'425 Điểm lấy nét ,Cảm biến APS-C Exmor CMOS 24.2MP,Cảm biến APS-C Exmor CMOS 24.2MP,Cảm biến APS-C Exmor CMOS 24.2MP', 16000000,N'img\products\sony\A6100\1.png',N'img\products\sony\A6100\2.png', 'img\products\sony\A6100\3.png', 15200000,  N'Đen', 5, 2, 1)
---35
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A6300', N'Cảm biến cải tiến mới APS-C HD CMOS 24.2 MegaPixels,Độ nhạy sáng cao ISO 100 - 25600,Hệ thống đo sáng thông minh DRO,Quay phim chuẩn 4K,Tích hợp wifi và NFC ', 20000000,N'img\products\sony\A6300\1.png',N'img\products\sony\A6300\2.png', 'img\products\sony\A6300\3.png', 19000000,  N'Đen', 5, 2, 1)
---36
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A6400', N'Cảm biến: APS-C ,Độ phân giải: 24.2MP,Màn hình LCD lật 180 độ,cảm ứng 3.0,Tốc độ chụp liên tiếp: 11 fps/s,Dải ISO: 100 - 32000 (mở rộng 100 - 104200),Kết nối không dây: WiFi, bluetooth,Quay video: 4k/30p,Trọng lượng: 403g (Body+pin+thẻ nhớ)', 21000000,N'img\products\sony\A6400\1.png',N'img\products\sony\A6400\2.png', 'img\products\sony\A6400\3.png', 18950000,  N'Đen', 10, 2, 1)
---37
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A6500', N'Cảm biến: APS-C,Độ phân giải: 24.2MP,Màn hình LCD cảm ứng 3.0,Tốc độ chụp liên tiếp: 11 fps/s,Dải ISO: 100 - 25600 (mở rộng 100 - 51200),Kết nối không dây: WiFi,Quay video: 4k/30p,Trọng lượng: 453g (Body+pin+thẻ nhớ)', 25000000,N'img\products\sony\A6500\1.png',N'img\products\sony\A6500\1\2.png', 'img\products\sony\A6500\3.png', 23250000,  N'Đen', 7, 2, 1)
---38
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A6600', N'Cảm biến: APS-C,Độ phân giải: 24.2MP,Màn hình LCD lật 180 độ,cảm ứng 3.0,Tốc độ chụp liên tiếp: 11 fps/s,Dải ISO: 100 - 32000 (mở rộng 100 - 104200),Kết nối không dây: WiFi, bluetooth,Quay video: 4k/30p,Trọng lượng: 503g (Body+pin+thẻ nhớ)', 31000000,N'img\products\sony\A6600\1.png',N'img\products\sony\A6600\2.png', 'img\products\sony\A6600\3.png', 30450000,  N'Đen', 2, 2, 1)
---39
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony ZV1', N'Cảm biến: BSI CMOS 1 inch,Độ phân giải: 20MP,Khẩu độ: F/1.8-2.8,Ống kính tương đương 24-70mm,Tốc độ chụp liên tiếp: 24 fps/s,Dải ISO: 100 đến 12800 (Mở rộng: 64 đến 25600),Kết nối không dây: WiFi, bluetooth,Màn hình LCD lật 180 độ,cảm ứng 3.0,Quay video: 4k/30p', 18000000,N'img\products\sony\ZV1\1.jpg',N'img\products\sony\ZV1\2.jpg', 'img\products\sony\ZV1\3.jpg', 17100000,  N'Đen', 5, 2, 1)
---40
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Sony A7R mark IV', N'Cảm biến: Full-Frame,Độ phân giải: 61MP,Độ phân giải: 61MP,Độ phân giải: 61MP,Kết nối không dây: WiFi, Bluetooth,Quay video: 4k/30p,Quay video: 4k/30p', 80000000,N'img\products\sony\A7R4\1.png',N'img\products\sony\A7R4\2.png', 'img\products\sony\A7R4\3.png', 76000000,  N'Đen', 5, 1, 1)
---41
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D5', N'Cảm biến hình ảnh mới EXPEED 5 với độ phân giải 20.8MP,Dãi ISO  ISO 100 đến 102.400 ,Có khả năng quay video 4K Ultra High Definition (UHD), Khả năng chụp liên tục 12 fps , 14 fps,Hệ thống lấy nét với 153 điểm lấy nét', 130000000,N'img\products\nikon\D5\1.png',N'img\products\nikon\D5\2.png', 'img\products\nikon\D5\3.png', 123000000,  N'Đen', 5, 3, 1)
---42
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D6',N'02 Slot thẻ nhớ: CFexpress Type B / XQD ,Dải ISO: Auto, 100 - 102400 (Mở rộng: 50 to 3280000),Kết nối không dây: WiFi, bluetooth,Tốc độ chụp liên tiếp: 14 fps/s,Cảm biến: Full-Frame ngàm Nikon F,Độ phân giải: 20.8 MP,Quay video: 4K/30p,Trọng lượng: 1270g (Body)', 150000000,N'img\products\nikon\D6\1.png',N'img\products\nikon\D6\2.png', 'img\products\nikon\D6\3.png', 142500000,  N'Đen', 5, 3, 1)
---43
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D90', N'Cảm biến CMOS độ phân giải 12.3 Megapixels,Chip xử lý ảnh thế hệ mới EXPEED,Quay phim HD 1280x720 chất lượng cao,Độ nhạy sáng ISO lớn nhất lên tới 6400,Tốc độ chụp liên tục 4.5 hình/giây,Hệ thống lấy nét tự động Multi-CAM 11 điểm', 3500000,N'img\products\nikon\D90\1.png',N'img\products\nikon\D90\1\2.png', 'img\products\nikon\D90\3.png', 3325000,  N'Đen', 5, 3, 1)
---44
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D500',N' Cảm biến hình ảnh mới EXPEED 5 với độ phân giải 20.9MP, Quay Video4K UHD ở 30 fps, ISO 51200, ISO mở rộng tới 1.640.000,10 fps chụp cho đến 200 Frames,Kết nối Wi-Fi, Bluetooth và NFC', 35000000,N'img\products\nikon\D500\1.png',N'img\products\nikon\D500\2.png', 'img\products\nikon\D500\3.png', 33250000,  N'Đen', 5, 3, 1)
---45
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D600', N'Máy ảnh ống kính rời Full-Frame của Nikon,Máy ảnh ống kính rời Full-Frame của Nikon,39 điểm Auto Focus ,Độ nhạy sáng ISO 100-6.400 (mở rộng tới 25.600),Quay video Full HD 1080*1920', 8000000,N'img\products\nikon\D600\1.png',N'img\products\nikon\D600\2.png', 'img\products\nikon\D600\3.png', 7600000,  N'Đen', 5, 3, 1)
---46
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D610', N'Bộ xử lý hình ảnh EXPEED 3 ,Màn hình 3.2inch (921K điểm ảnh),ISO100 – 6400  (mở rộng 25600),Tốc độ chụp 6 ảnh/ giây, Quay phim Full HD 1080/30p ', 18000000,N'img\products\nikon\D610\1.png',N'img\products\nikon\D610\2.png', 'img\products\nikon\D610\3.png', 17100000,  N'Đen', 5, 3, 1)
---47
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES(N'Máy ảnh Nikon D750', N'Bộ cảm biến CMOS Full frame 24.3 megapixel,Cảm biến lấy nét tự động Multi-CAM 3500FX,Màn hình 3.2inch (1.229k điểm ảnh,ISO100 – 12800 (mở rộng 51200),Tốc độ chụp 6.5 ảnh/ giây,Quay phim Full HD 1080/60p', 31000000,N'img\products\nikon\D750\1.png',N'img\products\nikon\D750\2.png', 'img\products\nikon\D750\3.png', 30450000,  N'Đen', 2, 3, 2)
---48
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D780',N' Cảm biến: Full-frame,Độ phân giải: 24.5MP,Màn hình LCD cảm ứng 3.2,Tốc độ chụp liên tiếp: 12 fps/s,Dải ISO: 100 - 51200 (mở rộng 50 - 204800),Kết nối không dây: WiFi, bluetooth,Quay video: 4k/30p,Trọng lượng: 840g (Body)', 39000000,N'img\products\nikon\D780\1.png',N'img\products\nikon\D780\2.png', 'img\products\nikon\D780\3.png', 37050000,  N'Đen', 5, 3, 1)
---49
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D810', N'Bộ cảm biến CMOS Full frame  36.3 megapixel,Cảm biến lấy nét tự động Multi-CAM 3500FX,Màn hình 3.2inch (1.229k điểm ảnh),ISO64 – 12800  (mở rộng 51200), Tốc độ chụp 7 ảnh/ giây, Quay phim Full HD 1080/60p', 22000000,N'img\products\nikon\D810\1.png',N'img\products\nikon\D810\2.png', 'img\products\nikon\D810\3.png', 20900000,  N'Đen', 5, 3, 1)
---50
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D850',N' Cảm biến: Full-frame độ phân giải: 45.7MP,Kết nối không dây: WiFi, bluetooth,Quay video: 4k/30p,Trọng lượng: 915g (Body),Dải ISO: 64 - 25600 (mở rộng 32 - 102400),Màn hình LCD cảm ứng 3.2,Tốc độ chụp liên tiếp: 7 fps/s', 50000000,N'img\products\nikon\D850\1.png',N'img\products\nikon\D850\2.png', 'img\products\nikon\D850\3.png', 47500000,  N'Đen', 5, 3, 2)
---51
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D3300', N'Bộ vi xử lý hình ảnh EXPEED 4,Độ phân giải 24.2 megapixe,Tốc độ chụp 5 ảnh/giây,Tốc độ chụp 5 ảnh/giây,Quay phim Full HD', 8400000,N'img\products\nikon\D3300\1.png',N'img\products\nikon\D3300\2.png', 'img\products\nikon\D3300\3.png', 7980000,  N'Đen', 5, 3, 1)
---52
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D3400',N' Cảm biến CMOS 24.2MP DX,ISO: 100-25600,Tốc độ chụp liên tục 5fps,Màn hình LCD 3" 921K-Dot,Quay phim Full HD 1080p tại 60fps,Hỗ trợ kết nối Bluetooth 4.1 LE', 7600000,N'img\products\nikon\D3400\1.png',N'img\products\nikon\D3400\2.png', 'img\products\nikon\D3400\3.png', 7220000,  N'Đen', 5, 3, 1)
---53
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D3500', N'Độ phân giải tối đa 24mpx, 6000 x 4000,ISO 100 – 25600,Màn hình LCD 3 inch, không cảm ứng, tỉ lệ 4:3,Khả năng quay video: FHD 60p, HD 60p,Kết nối không dây Bluetooth,Khối lượng 365g', 9000000,N'img\products\nikon\D3500\1.png',N'img\products\nikon\D3500\2.png', 'img\products\nikon\D3500\3.png', 8550000,  N'Đen', 5, 1, 1)
---54
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D5200', N'Độ phân giải: 24 MP,Màn hình: TFT LCD 3.0 inch,ISO 100 đến ISO 6400,ISO 100 đến ISO 6400,Quay phim: Full HD', 7500000,N'img\products\nikon\D5200\1.png',N'img\products\nikon\D5200\2.png', 'img\products\nikon\D5200\3.png', 7125000,  N'Đen', 5, 1, 1)
---55
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D5300', N'Bộ cảm biến CMOS  24.2 megapixel,Bộ cảm biến CMOS  24.2 megapixel,ISO100 -12800,Tốc độ chụp 5 ảnh/ giây,Quay phim Full HD,Tích hợp Wi-Fi, GPS', 10000000,N'img\products\nikon\D5300\1.png',N'img\products\nikon\D5300\2.png', 'img\products\nikon\D5300\3.png', 9500000,  N'Đen', 5, 3, 2)
---56
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D5500', N'Độ phân giải: 24.2 MP,Màn hình: TFT LCD 3.2 inch,ISO 100 đến ISO 25600,Bộ cảm biến: CMOS,Quay phim: Full HD', 15000000,N'img\products\nikon\D5500\1.png',N'img\products\nikon\D5500\2.png', 'img\products\nikon\D5500\3.png', 14250000,  N'Đen', 5, 3, 1)
---57
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D5600', N'Cảm biến: CMOS APS-C 25 MP, hiệu dụng: 24 MP,Chip xử lý ảnh: Nikon EXPEED 4, ISO: Auto, 100 - 25.600,Tốc độ màn trập: 1/4000 - 30 giây,Màn hình: LCD TFT cảm ứng 3.2-inch, 1.037.000 pixel,Cân nặng: 465g kèm pin', 13000000,N'img\products\nikon\D5600\1.png',N'img\products\nikon\D5600\2.png', 'img\products\nikon\D5600\3.png',12350000,  N'Đen', 5, 3, 1)
---58
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D7100',N'Nikon D7100 là chiếc máy ảnh DSLR 24MP với cảm biến 23.5 x 15.6mm CMOS. Máy ảnh Nikon DSLR này hỗ trợ dải ISO từ 100 đến 25.600, hỗ trợ quay video chất lượng Full HD 1080p. Nhà sản xuất đem lại trải nghiệm xem và hiệu chỉnh hình ảnh trở nên dễ dàng hơn với màn hình LCD 3.2" ',8000000 ,N'img\products\nikon\D7100\1.png',N'img\products\nikon\D7100\2.png', 'img\products\nikon\D7100\3.png', 7600000,  N'Đen', 5, 3, 2)
---59
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D7200', N'Bộ xử lý hình ảnh EXPEED 4,Không có bộ lọc Low-Pass quang học,Không có bộ lọc Low-Pass quang học,Màn hình LCD 3.2 inch với 1,229k-Dot', 9000000,N'img\products\nikon\D7200\1.png',N'img\products\nikon\D7200\2.png', 'img\products\nikon\D7200\3.png', 8550000,  N'Đen', 5, 3, 1)
---60
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Nikon D7500', N'Cảm biến ảnh: CMOS 20.9 MP APS-C,Cảm biến ảnh: CMOS 20.9 MP APS-C,Quay phim: 4K UHD (30/25/24p) ở chế độ crop 1.5x,Kích thước: 13,55 x 10,4 x 7,25 cm', 20000000,N'img\products\nikon\D7500\1.png',N'img\products\nikon\D7500\1\2.png', 'img\products\nikon\D7500\3.png', 19000000,  N'Đen', 5, 3,2)
---61
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-A1', N'Cảm biến CMOS 16.3MP APS-C,Màn hình LCD nghiêng 3.0 "920k-Dot,Màn hình LCD nghiêng 3.0 "920k-Dot,Màn hình LCD nghiêng 3.0 "920k-Dot,Màn hình LCD nghiêng 3.0 "920k-Dot', 9000000,N'img\products\fujifilm\XA1\1.png',N'img\products\fujifilm\XA1\2.png', 'img\products\fujifilm\XA1\3.png', 8550000,  N'Đen', 5, 4, 1)
---62
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-A2', N'Độ phân giải: 16.3 MP,Màn hình: LCD xoay 3.0 inch,Màn hình: LCD xoay 3.0 inch,Màn hình: LCD xoay 3.0 inch,Quay phim: Full HD', 5000000,N'img\products\fujifilm\XA2\1.png',N'img\products\fujifilm\XA2\2.png', 'img\products\fujifilm\XA2\3.png', 4750000, 'xám', 5, 4, 1)
---63
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-A3', N'Cảm biến CMOS kích thước APS-C, Độ phân giải 24.2MP, ISO200 – ISO25600,Hỗ trợ xử lý ảnh RAW ngay trong thân máy, Kết nối: WIfi, Micro USB (2.0),Trọng lượng 339g', 9000000,N'img\products\fujifilm\XA3\1.png',N'img\products\fujifilm\XA3\2.png', 'img\products\fujifilm\XA3\3.png', 8550000, 'xám', 5, 4, 2)
---64
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-A5', N'Thiết kế nhỏ gọn, màu sắc trẻ trung giúp bạn tự tin,Thiết kế nhỏ gọn, màu sắc trẻ trung giúp bạn tự tin,Khả năng quay phim 4K cho những thước phim Full HD sắc nét,Khả năng quay phim 4K cho những thước phim Full HD sắc nét', 8000000,N'img\products\fujifilm\XA5\1.png',N'img\products\fujifilm\XA5\2.png', 'img\products\fujifilm\XA5\3.png', 7600000, 'xám', 5, 4, 1)
---65
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-A7', N'Cảm biến APS-C CMOS 24.2MP,Cảm biến APS-C CMOS 24.2MP,Cảm biến APS-C CMOS 24.2MP, Hệ thống AF kết hợp 117 điểm, Hệ thống AF kết hợp 117 điểm', 14000000,N'img\products\fujifilm\XA7\1.png',N'img\products\fujifilm\XA7\2.png', 'img\products\fujifilm\XA7\3.png', 13300000,  N'Đen', 5, 4, 1)
---66
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-A10', N'Cảm biến ảnh CMOS APS-C 16.3 MP,Cảm biến ảnh CMOS APS-C 16.3 MP,Cảm biến ảnh CMOS APS-C 16.3 MP,Chụp liên tiếp: 3 fps, 6 fps, Quay phim: Full HD 30p/25p/24p, HD 720 60p,Kết nối Wifi ,Trọng lượng: 282 g (Thân máy), 331 g (Thân máy + pin + thẻ nhớ)', 6000000,N'img\products\fujifilm\XA10\1.png',N'img\products\fujifilm\XA10\2.png', 'img\products\fujifilm\XA10\3.png', 5700000,  N'Đen', 5, 4, 1)
---67
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-E1', N'Cảm biến APS-C CMOS X-Trans 16.3MP,Bộ xử lý hình ảnh EXR,EVF OLED 2.36 triệu điểm,EVF OLED 2.36 triệu điểm,Quay Full HD 1080p 24 fps', 4000000,N'img\products\fujifilm\XE1\1.png',N'img\products\fujifilm\XE1\2.png', 'img\products\fujifilm\XE1\3.png', 3800000,  N'Đen', 5, 4, 1)
---68
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-E2',N'Ngàm ống kính X-mount,Ngàm ống kính X-mount,Màn hình: LCD 3 độ phân giải 1.040.000 điểm ảnh,Màn hình: LCD 3 độ phân giải 1.040.000 điểm ảnh,Lấy nét: kết hợp Contrast AF và Phase Detection', 20000000,N'img\products\fujifilm\XE2\1.png',N'img\products\fujifilm\XE2\2.png', 'img\products\fujifilm\XE2\3.png', 19000000,  N'Đen', 5, 4, 1)
---69
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-E2S',N' Cảm biến: CMOS X-trans II, Độ phân giải : 16.3MP,Chip xử lý ảnh: EXR Processor II, ISO: 200-12800 (Mở rộng 100-51200), Quay video: FullHD 1080p 60fps,Kết nối: WIFI', 12000000,N'img\products\fujifilm\XE2S\1.png',N'img\products\fujifilm\XE2S\2.png', 'img\products\fujifilm\XE2S\3.png', 11400000,  N'Đen', 5, 4, 1)
---70
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-E3', N'Cảm biến: 24M X-Trans CMOS III,Cảm biến: 24M X-Trans CMOS III,ISO 100 -51200,Quay phim: 4K 30p 100Mbps,Kết nối: Wifi ,  Bluetooth ,Trọng lượng 337g', 11000000,N'img\products\fujifilm\XE3\1.png',N'img\products\fujifilm\XE3\2.png', 'img\products\fujifilm\XE3\3.png', 10450000,  N'Đen', 5, 4, 1)
---71
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-H1', N'Cảm biến X-Trans CMOS III 24,3 triệu điểm ảnh, ISO 200-12.800 (có thể mở rộng lên ISO 100-51.200),Chụp liên tục lên tới 14 khung hình / giây với ổ cắm pin VPB-X-H1,Chụp liên tục lên tới 14 khung hình / giây với ổ cắm pin VPB-X-H1,Kết nối Bluetooth và Wi-fi', 16000000,N'img\products\fujifilm\XH1\1.png',N'img\products\fujifilm\XH1\2.png', 'img\products\fujifilm\XH1\3.png', 15200000,  N'Đen', 5, 4, 2)
---72
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T1',N'Ngàm ống kính X-mount,Cảm biến ảnh: CMOS X-Trans II 16.3 MP ISO: 100 - 25.600,Cảm biến ảnh: CMOS X-Trans II 16.3 MP ISO: 100 - 25.600,Cảm biến ảnh: CMOS X-Trans II 16.3 MP ISO: 100 - 25.600,Trọng lượng: 440 g', 20000000,N'img\products\fujifilm\XT1\1.png',N'img\products\fujifilm\XT1\2.png', 'img\products\fujifilm\XT1\3.png', 19000000,  N'Đen', 5, 4, 1)
---73
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T2', N'Độ phân giải: 24.3 MP,Màn hình: LCD 3 inch,Màn hình: LCD 3 inch,Màn hình: LCD 3 inch,Màn hình: LCD 3 inch', 30000000,N'img\products\fujifilm\XT2\1.png',N'img\products\fujifilm\XT2\2.png', 'img\products\fujifilm\XT2\3.png', 28500000,  N'Đen', 5, 4, 1)
---74
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T3',N'Quay video UHD 4K60; F-Log Gamma & 10-bit Out,Màn hình cảm ứng LCD nghiêng 1.04m-Dot,ISO 80-51200, chụp 30 fps,Kết nối Bluetooth và Wi-Fi,Trọng lượng: 539 g bao gồm pin và thẻ', 26000000,N'img\products\fujifilm\XT3\1.png',N'img\products\fujifilm\XT3\2.png', 'img\products\fujifilm\XT3\3.png', 24200000,  N'Đen', 7, 4, 2)
---75
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T', N'Cảm biến APS-C BSI X-Trans CMOS 4,Màn hình cảm ứng LCD 3.0" 1.62 triệu điểm, Quay phim DCI/UHD 4K60, Full HD 240 fps, Chụp liên tiếp 30 fps (màn trập điện tử, crop 1.25x),ISO160-12800 (mở rộng 80-51200),Tích hợp Wi-Fi, Bluetooth', 40000000,N'img\products\fujifilm\XT4\1.png',N'img\products\fujifilm\XT4\2.png', 'img\products\fujifilm\XT4\3.png', 38000000,  N'Đen', 5, 4, 1)
---76
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T10', N'Bộ xử lý hình ảnh EXR II,EVF OLED 0,39,Cảm biến 16,3 MP APS-C X-Trans CMOS II,Cảm biến 16,3 MP APS-C X-Trans CMOS II', 15000000,N'img\products\fujifilm\XT10\1.png',N'img\products\fujifilm\XT10\2.png', 'img\products\fujifilm\XT10\3.png', 14250000, 'xám', 5, 4, 1)
---77
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T20',N' Cảm biến APS-C X-Trans CMOS III 24.3MP,Màn hình cảm ứng TFT LCD 3" 1.04 triệu điểm ảnh có thể xoay lật đa chiều,Chế độ giả lập Film cho cả ảnh chụp và Video,Thẻ nhớ SD, SHHC, SDXC, hỗ trợ chuẩn thẻ UHS-II,Khối lượng (bao gồm pin): 383 g', 16000000,N'img\products\fujifilm\XT20\1.png',N'img\products\fujifilm\XT20\2.png', 'img\products\fujifilm\XT20\3.png', 15200000, 'xám', 5, 4, 2)
---78
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T30', N'Cảm biến X-Trans CMOS 4 26.1MP,Chụp liên tiếp 8 fps với màn trập cơ,Quay video 4K 30fps, F-log DCI 4K 10bit,Chế độ SR Auto nâng cao,Kết nối Wi-Fi, Bluetooth tích hợp,Trọng lượng: 383 g', 22000000,N'img\products\fujifilm\XT30\1.png',N'img\products\fujifilm\XT30\2.png', 'img\products\fujifilm\XT30\3.png', 20900000,  N'Đen', 5, 4, 2)
---79
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T100', N'Cảm biến: APS-C,Cảm biến: APS-C,Màn hình LCD cảm ứng xoay lật 3.0,Màn hình LCD cảm ứng xoay lật 3.0,Dải ISO: 200 - 12800 (Mở rộng lên 100 - 51200),Kết nối không dây: WiFi,Quay video: 4K/15p,
Trọng lượng: 448 g (Body+Pin+thẻ nhớ)', 12000000,N'img\products\fujifilm\XT100\1.png',N'img\products\fujifilm\XT100\2.png', 'img\products\fujifilm\XT100\3.png', 11400000, 'xám', 5, 4, 1)
---80
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Fujifilm X-T200',N' Cảm biến APS-C CMOS 24.2MP, Quay video UHD 4K và Full HD,Chế độ phim HDR mới,Chế độ phim HDR mới,USB-C, mini stereo jack 3.5mm', 14000000,N'img\products\fujifilm\XT200\1.png',N'img\products\fujifilm\XT200\2.png', 'img\products\fujifilm\XT200\3.png', 13300000, 'xám', 5, 4, 1)
---81
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Leica CL', N'Bộ xử lý hình ảnh Maestro II,Hệ thống AF phát hiện tương phản 49 điểm,Màn hình cảm ứng LCD 3.0,Cảm biến CMOS APS-C 24.2MP,Kính ngắm điện tử 2,36m-Dot,Video UHD 4K30 và Full HD 1080p60', 72000000,N'img\products\khac\leica CL\1.png',N'img\products\khac\leica CL\2.png', 'img\products\khac\leica CL\3.png', 68400000,  N'Đen', 5, 5, 1)
---82
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Leica M10R', N'Bộ xử lý hình ảnh Leica Maestro II,Kính ngắm phóng đại 0,73x,Cảm biến CMOS full-frame 40MP,Màn hình LCD cảm ứng 3.0inch', 208000000,N'img\products\khac\leica M10R\1.png',N'img\products\khac\leica M10R\2.png', 'img\products\khac\leica M10R\3.png', 197600000, 'xám', 5, 5, 1)
---83
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Leica SL2', N'Bộ xử lý hình ảnh Maestro III,Chống rung 5 trục,ISO 50-100000, Chụp liên tiếp 25 khung hình / giây,Cảm biến CMOS BSI Full-frame 24.6MP,Hệ thống AF 225 vùng tương phản, giây,Quay video DCI 4K, hỗ trợ HLG & 10-Bit', 186000000,N'img\products\khac\leica SL2\1.png',N'img\products\khac\leica SL2\2.png', 'img\products\khac\leica SL2\3.png', 176700000,  N'Đen', 5, 5, 1)
---84
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Leica Dlux', N'Cảm biến 4/3 độ phân giải cao 17MP,Màn hình cảm ứng 3.0’’ - 1,24 triệu màu,Quay phim chuẩn 4K.,ISO lên tới 25600.,Ống kính zoom DC Vario-Summilux 24-75mm,Tốc độ chụp 11 hình/giây', 36000000,N'img\products\khac\leica Dlux\1.jpg',N'img\products\khac\leica Dlux\2.jpg', 'img\products\khac\leica Dlux\3.jpg', 34200000,  N'Đen', 5, 5, 1)
---85
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Lumix Fz300',N'Panasonic Lumix FZ300 vẫn giữ nguyên thiết kế ống kính Leica DC Vario-Elmarit 4.5-108mm được nhiều người đánh giá cao. Với khẩu độ f/2.8 toàn dải tiêu cự, FZ300 tạo được lợi thế cạnh trproducts khá tốt. Cấu tạo ống kính gồm 14 thấu kính trong 11 nhóm, trong đó có 3 thấu kính ED và 9 thấu kính phi cầu.', 10100000,N'img\products\khac\lumix fz300\1.png',N'img\products\khac\lumix fz300\2.png', 'img\products\khac\lumix fz300\3.png', 9595000,  N'Đen', 5, 5, 1)
---86
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Lumix GF6',N'Panasonic Lumix DMC-GF6 là máy ảnh entry-level không gương lật mới của công ty, ngoại trừ hiệu suất chụp shot-to-shot chậm, hiệu suất tổng thể của nó là tốt. Nó có thể lấy nét một cách nhproducts chóng, tạo ra hình ảnh đẹp trong ánh sáng yếu, và có Wi-Fi để bạn có thể chia sẻ hình ảnh trực tiếp', 6000000,N'img\products\khac\lumix GF6\1.jpg',N'img\products\khac\lumix GF6\2.jpg', 'img\products\khac\lumix GF6\3.jpg', 5700000, 'xám', 5, 5, 1)
---87
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Olympus FenF', N'Cảm biến Live MOS 20.3MP,Bộ xử lý hình ảnh TruePic VII,Màn hình cảm ứng 3.0 "1.037m-Dot,Quay phim Full HD 1080p với tốc độ 60 khung hình/giây,Chống rung ổn định hình ảnh 5 trục,Tiêu chuẩn ISO 25600,Tích hợp Wi-F', 17500000,N'img\products\khac\olympus FenF\1.jpg',N'img\products\khac\olympus FenF\2.jpg', 'img\products\khac\olympus FenF\3.jpg', 16625000,  N'Đen', 5, 5, 1)
---88
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Olympus OM-D E-M10 IV', N'Cảm biến: Live MOS 20 Megapixel (Bốn phần ba),Bộ xử lý: TruePic VIII,Hệ thống: AF phát hiện tương phản 121 điểm,Màn hình cảm ứng lật xuống,Chụp liên tục 4,5 khung hình/ giây với AF,Sạc: USB,Wi-Fi + Bluetooth', 14000000,N'img\products\khac\olympus OM-D E-M10 IV\1.png',N'img\products\khac\olympus OM-D E-M10 IV\2.png', 'img\products\khac\olympus OM-D E-M10 IV\3.png', 13300000, 'xám', 5, 5, 2)
---89
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Olympus PEN E-PL8', N'Cảm biến: Live MOS (CMOS) 16,1 MP, kích thước 4/3”,,Màn hình: 3” , lật 80 độ (lên) và 180 độ (xuống),Chụp liên tiếp: 3,5 - 8,5 khung hình / giây, tối đa 20 fps (RAW),ISO: 200 - 1.600, mở rộng 25.600,Quay phim: Full HD 30 fps (MOV), HD 720p @ 30 fps,Kết nối: Wi-Fi', 8500000,N'img\products\khac\olympus PEN E-PL8\1.png',N'img\products\khac\olympus PEN E-PL8\2.png', 'img\products\khac\olympus PEN E-PL8\3.png', 8075000, 'xám', 5, 5, 2)
---90
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Olympus PEN E-PL9', N'Cảm biến Live MOS 16.1MP,Bộ xử lý hình ảnh TruePic VIII,Màn hình cảm ứng LCD 3" 1.04m-Dot, có thể xoay lật 180°,Quay phim UHD 4K 30 fps, ISO mở rộng đến 25600,Tích hợp kết nối Wi-Fi, Bluetooth', 13500000,N'img\products\khac\olympus PEN E-PL9\1.png',N'img\products\khac\olympus PEN E-PL9\2.png', 'img\products\khac\olympus PEN E-PL9\3.png', 12825000, 'xám', 5, 5, 2)
---91
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Pentax KP', N'Cảm biến APS-C CMOS 24MP,27 điểm lấy nét (25 điểm cross-type),ISO 100 - 819000.,Tốc độ màn trập 1/6000 (điện tử 1/24000),Chụp liên tục 7 ảnh/giây,Quay phim Full HD 60fps,Wifi, USB 2.0,Trọng lượng: 703g', 24000000,N'img\products\khac\pentax KP\1.png',N'img\products\khac\pentax KP\2.png', 'img\products\khac\pentax KP\3.png', 22800000,  N'Đen', 5, 5, 2)
---92
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Pentax K70', N'Cảm biến CMOS APS-C 24.24MP,Bộ xử lý hình ảnh Prime MII,Quay phim Full HD 1080i 60 fps, ISO 100-204800,Tốc độ chụp liên tiếp 6fps,Hệ thống chống rung, Cấu trúc kháng cự thời tiết', 18000000,N'img\products\khac\pentax K70\1.png',N'img\products\khac\pentax K70\2.png', 'img\products\khac\pentax K70\3.png', 17100000, 'xám', 5, 5, 1)
---93
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Pentax K3',N'Ảnh độ phân giải cao, cảm biến ảnh 24 triệu điểm ảnh và một bộ xử lý ảnh mới. Cơ chế chống rung SR,Module lấy nét tự động SAFOX 11 , Chụp liên tục tốc độ cao với tốc độ tối đa 8,3 ảnh/ giây.,Quay phim Full HD với các công cụ sáng tạo.,Màn hình LCD 3,2 inch', 17000000,N'img\products\khac\pentaxk3\1.jpg',N'img\products\khac\pentaxk3\2.jpg', 'img\products\khac\pentaxk3\3.jpg',	16150000,  N'Đen', 5, 5, 1)
---94
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Pentax K50', N'CMOS 16.3MP APS-C, Màn hình LCD 3.0 "921k-Dot, Màn hình LCD 3.0 "921k-Dot,Tự động lấy nét Hệ thống SAFOX IXi', 13000000,N'img\products\khac\pentaxk50\1.jpg',N'img\products\khac\pentaxk50\2.jpg', 'img\products\khac\pentaxk50\3.jpg', 12350000,  N'Đen', 5, 5, 1)
---95
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Máy ảnh Pentax KS2',N' PRIME MII, Chống bụi, chống nước,Full HD 1080p, video timelapse 4K,  LCD có khả năng xoay 270 độ,tự động SAFOX X 11 điểm,chống rung bằng công nghệ dịch chuyển cảm biến', 19000000,N'img\products\khac\pentaxks2\1.jpg',N'img\products\khac\pentaxks2\2.jpg', 'img\products\khac\pentaxks2\3.jpg', 18050000,  N'Đen', 5, 5, 1)
---96
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'GoPro Fusion',N'Hỗ trợ quay video video 5.2K 30fps,Chụp ảnh 360 độ,Chụp ảnh dạng cầu 18MP,Chống thấm ở độ sâu đến 5.0 m,Điều khiển giọng nói,Màn hình cảm ứng,Wifi, GPS, Bluetooth,Hỗ trợ thẻ nhớ: microSD/HC/XC', 12000000,N'img\products\gopro\GoPro Fusion\1.png',N'img\products\gopro\GoPro Fusion\2.png', 'img\products\gopro\GoPro Fusion\3.png', 11400000,  N'Đen', 5, 8, 1)
---97
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'GoPro Hero5 Black', N'Chụp ảnh: 12MP, 30Fps Burst, timelapse mode, RAW + WDR photo,Quay video: 4K 30fps, 1440p 80fps,Chịu nước ở độ sâu: 33 feet (10m),Chịu nước ở độ sâu: 33 feet (10m),Màn hình cảm ứng LCD 2 inch,Hỗ trợ kết nối Wifi và Bluetooth,Tích hợp GPS', 4000000,N'img\products\gopro\GoPro Hero5 Black\1.png',N'img\products\gopro\GoPro Hero5 Black\2.png', 'img\products\gopro\GoPro Hero5 Black\3.png', 3800000,  N'Đen', 5, 8, 1)
---98
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'GoPro Hero6 Black',N'Hỗ trợ video 4K 60fps, 2.7K 120fps, 1080p 240fps,Chụp ảnh 12MP ở tốc độ 30 khung hình/giây,Ống kính Thủy tinh Siêu rộng,Chống thấm nước với độ sâu 10 mét,Điều khiển bằng giọng nói,Màn hình LCD cảm ứng, Wi-Fi để theo dõi và kiểm soát từ xa', 6500000,N'img\products\gopro\GoPro Hero6 Black\1.png',N'img\products\gopro\GoPro Hero6 Black\2.png', 'img\products\gopro\GoPro Hero6 Black\3.png', 6125000,  N'Đen', 6, 8, 1)
---99
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'GoPro Hero7 Black',N'Quay phim 4K120/8K30/1080p480/HDR,Chụp ảnh 12MP 30fps,Chống nước ở độ sâu lên đến 10m,Điều khiển giọng nói,Hỗ trợ livestream qua Facebook,Ổn định hình ảnh,Điều hướng chân dung,Tự động nhận dạng cảnh, nụ cười chủ thể,Màn hình cảm ứng,Màn hình phụ hiển thị thông số,Tích hợp kết nối Wi-Fi, GPS, Bluetooth', 8000000,N'img\products\gopro\GoPro Hero7 Black\1.png',N'img\products\gopro\GoPro Hero7 Black\2.png', 'img\products\gopro\GoPro Hero7 Black\3.png', 7600000,  N'Đen', 5, 8, 1)
---100
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'GoPro Hero7 White',N'Quay phim 4K120/8K30/1080p480/HDR,Chụp ảnh 12MP 30fps,Chống nước ở độ sâu lên đến 10m,Điều khiển giọng nói,Hỗ trợ livestream qua Facebook,Ổn định hình ảnh,Điều hướng chân dung,Tự động nhận dạng cảnh, nụ cười chủ thể,Màn hình cảm ứng,Màn hình phụ hiển thị thông số,Tích hợp kết nối Wi-Fi, GPS, Bluetooth', 6000000,N'img\products\gopro\GoPro Hero7 White\1.png',N'img\products\gopro\GoPro Hero7 White\2.png', 'img\products\gopro\GoPro Hero7 White\3.png', 5700000, 'xám', 5, 8, 1)
---101
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'GoPro Hero8 Black', N'Thiết kế housing tùy chọn và lắp đặt các phụ kiện mới,Quay phim 4K60, 2.7K120, 1080p240,Chụp ảnh 12MP, hỗ trợ file RAW, chế độ ban đêm,Ổn định video HyperSmooth,Chế độ Vertical Portrait cho mạng xã hội,Tính năng SuperPhoto Auto HDR Photo Enhancement,Chống nước đến 10m mà không cần hộp đựng', 10000000,N'img\products\gopro\GoPro Hero8 Black\1.png',N'img\products\gopro\GoPro Hero8 Black\2.png', 'img\products\gopro\GoPro Hero8 Black\3.png', 9500000,  N'Đen', 5, 8, 1)
---102
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'GoPro Hero9 Black', N'Cảm biến 23.6MP,Video 5K-30fps, 4K-60 fps; ảnh tĩnh 20MP,Màn hình trước xem trực tiếp, hiển thị màu,Màn hình sau cảm ứng, xem trực tiếp,Chống rung video HyperSmooth 3.0,Quay phim TimeWrap 3.0; Slo-mo 8x,Chỉnh ảnh SuperPhoto + HDR,Chế độ webcam; livestream 1080p,N', 12000000,N'img\products\gopro\GoPro Hero9 Black\1.png',N'img\products\gopro\GoPro Hero9 Black\2.png', 'img\products\gopro\GoPro Hero9 Black\3.png', 11400000,  N'Đen', 5, 8, 1)
---103
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'GoPro Max', N'Cảm biến: 1-Chip ,Cân nặng: 163g,Chống nước: 4.8m,Chống rung: Có,Độ phân giải: 16.6MP,Màn hình: LCD 2.25 inch cảm ứng,Thẻ nhớ: Micro SD', 14000000,N'img\products\gopro\GoPro Max\1.png',N'img\products\gopro\GoPro Max\2.png', 'img\products\gopro\GoPro Max\3.png', 13300000,  N'Đen', 5, 8, 1)
---104
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Dù tản sáng 42inch', N'Dù tản sáng, ô tản sáng giá rẻ nhất tại shop . Thiết bị phòng chụp, studio chuyên nghiệp pro nhất giúp bạn setup được những shot chụp hình như ý với sản phẩm, mẫu, cảnh...', 300000,N'img\products\phukien\4.jpg',N'img\products\phukien\4.jpg', 'img\products\phukien\4.jpg', 285000, 'xám', 5, 7, 2)
---105
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Bộ chân máy ảnh Manfrotto 055 ALU 3-S Kit Ball Head Q2',N' Dành cho người dùng chuyên nghiệp và các studio,Trục giữa có 2 chế độ: đứng hoặc ngang giúp chụp ở tất cả các góc, Cơ chế khóa lẫy Quick Power Lock giúp dễ dàng thiết lập độ cao cần thiết, Kết nối với những phụ kiện khác thông qua bộ phận Easy Link,Góc chân máy mở ra hoặc đóng lại một cách êm ái,Thao tác nhproducts và đóng khung bố cục một cách chính xác', 8400000,N'img\products\phukien\5.png',N'img\products\phukien\5.png', 'img\products\phukien\5.png', 7980000,  N'Đen', 5, 7, 2)
---106
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Gopro Hero7 Black',N'Quay phim 4K120/8K30/1080p480/HDR,Chụp ảnh 12MP 30fps,Chống nước ở độ sâu lên đến 10m,Điều khiển giọng nói,Hỗ trợ livestream qua Facebook,Ổn định hình ảnh,Điều hướng chân dung,Tự động nhận dạng cảnh, nụ cười chủ thể,Màn hình cảm ứng,Màn hình phụ hiển thị thông số,Tích hợp kết nối Wi-Fi, GPS, Bluetooth', 8000000,N'img\products\gopro\GoPro Hero7 Black\1.png',N'img\products\gopro\GoPro Hero7 Black\2.png', 'img\products\gopro\GoPro Hero7 Black\3.png', 7600000,  N'Đen', 5, 7, 1)
---107
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Túi máy ảnh Peak Design Everyday Messenger 15 Inch', N'Chiều cao thay đổi linh hoạt
Chứa: 1 laptop 15.6 inch, 3 ống kính, máy DSLR và 1 số phụ kiện khác,Kích thước 30.0 x 43.0 x 18.0 cm,Thể tích chứa đồ dao động từ 8L cho đến 18L', 8900000,N'img\products\phukien\6.jpg',N'img\products\phukien\6.jpg', 'img\products\phukien\6.jpg', 8455000, 'xám', 5, 7, 2)
---108
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Túi máy ảnh Fujifilm chính hãng ( Size L )', N'Tính năng nổi bật: - Kích thước nhỏ gọn thời trang. - Chất liệu vải mềm, dễ sử dụng, dày êm, bền bỉ. - Chống sốc tốt cho các thiết bị bên trong....', 600000,N'img\products\phukien\7.jpg',N'img\products\phukien\7.jpg', 'img\products\phukien\7.jpg', 570000,  N'Đen', 5, 7, 2)
---109
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Túi máy ảnh Fujifilm chính hãng ( Size M )', N'Tính năng nổi bật: - Kích thước nhỏ gọn thời trang. - Chất liệu vải mềm, dễ sử dụng, dày êm, bền bỉ. - Chống sốc tốt cho các thiết bị bên trong....', 500000,N'img\products\phukien\8.jpg',N'img\products\phukien\8.jpg', 'img\products\phukien\8.jpg', 475000, 'xám', 5, 7, 1)
---110
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Túi máy ảnh Herringbone Papaspocket V3 Mini (Charcoal)', N'Chất liệu Vải Canvas
 Chất liệu Vải Canvas,Sức chứa 1 body mirrorless, 1 lens, 1 smartphone hoặc 1 iPad Mini
Chất liệu: Vải Canvas Kích thước: 23 x 10 x 16 cm Phù hợp với các dòng máy Mirrorless kèm lens rời đi cùng và một số phụ kiện Có ngăn chứa cho Ipad mini riêng', 1300000,N'img\products\phukien\9.jpg',N'img\products\phukien\9.jpg', 'img\products\phukien\9.jpg', 1235000, 'xám', 5, 7, 1)
---111
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES('Nắp đậy ống kính Sony ALC-F49S 49mm (Chính hãng)',N'nắp đậy nắp lens , bền , đẹp', 190000,N'img\products\phukien\11.jpg',N'img\products\phukien\11.jpg', 'img\products\phukien\11.jpg', 180000,  N'Đen', 5, 7, 1)
---112
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Thẻ nhớ SDXC SanDisk Extreme Pro UHS-I 512GB 170MB/s', N'Thẻ nhớ MicroSDXC SanDisk Extreme Pro V30 A2 170MB/s 512GB được thiết kế phù hợp với các dòng smartphone thế hệ mới của Android, máy tính bảng,.. và còn tương thích rất tốt với những loại Flycam hiện nay.', 3500000,N'img\products\phukien\12.jpg',N'img\products\phukien\12.jpg', 'img\products\phukien\12.jpg', 3325000,  N'Đen', 5, 7, 1)
---113
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Thẻ nhớ SDXC Sony 256GB SF-M TOUGH UHS-II 277MB/s',N'ung lượng: 256GBLoại sản phẩm: SDXC,Tốc độ đọc: 277 MB / s,Tốc độ Ghi: 150 MB / s,N', 4000000,N'img\products\phukien\14.jpg',N'img\products\phukien\14.jpg', 'img\products\phukien\14.jpg', 3800000,  N'Đen', 5, 7, 1)
---114
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Dây đeo Peak Design Slide (Midnight Blue)', N'Chiều dài tối đa: 145 cm Chiều dài tối thiểu: 99 cm, Chiều rộng dây đeo: 45 mm, Cân nặng: 148 g,Chống mài mòn, Kết nối máy ảnh bền, linh hoạt,N', 1600000,N'img\products\phukien\15.jpg',N'img\products\phukien\15.jpg', 'img\products\phukien\15.jpg', 1520000,  N'Đen', 5, 7, 1)
---115
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Chân máy ảnh Benro A550FN1',N'Kế thừa tính ổn định của chân hợp kim nhôm, đồng thời trọng lượng được nhẹ hóa, có thể thao tác nhproducts khi sử dụng. Dòng chân máy phổ thông với thiết kế rãnh lõm ở ống chân giúp khóa chắc chắn hơn. Nó là sự kết hợp giữa sự gọn nhẹ và tính ổn định cao. Bộ chân máy này kết hợp với đầu bi dòng N sẽ rất thích hợp cho những người mới bắt đầu chơi ảnh sử dụng.', 2000000,N'img\products\phukien\16.jpg',N'img\products\phukien\16.jpg', 'img\products\phukien\16.jpg', 1900000,  N'Đen', 5, 7, 1)
---116
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Balo máy ảnh PGYTECH OneMo 25L + Túi đeo chéo (Olivine Camo)', N'Chất liệu : polyester (85%), polyurethane (15%)
Dung tích mở rộng tối đa lên 35LKhối lượng : 2.1kg,Kích thước : 480*320*230mm,N', 4100000,N'img\products\phukien\17.webp',N'img\products\phukien\17.webp', 'img\products\phukien\17.webp', 3850000,  N'Đen', 6, 7, 1)
---117
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Bộ sạc đôi và 2 pin RAVPower RP-BC029 (Canon LP-E12)',N'An toàn tuyệt đốiNhiều năng lượng hơn,Thay thế pin Canon LP-E12,Thời gian sạc nhproducts', 760000,N'img\products\phukien\18.jpg',N'img\products\phukien\18.jpg', 'img\products\phukien\18.jpg', 725000,  N'Đen', 5, 7, 2)
---118
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Thẻ nhớ SDXC Sony 64G SF-M TOUGH UHS-II 277MB/s', N'Dung lượng: 64GB,Loại sản phẩm: SDXC,Tốc độ đọc: 277 MB / s,Tốc độ Ghi: 150 MB / s', 700000,N'img\products\phukien\19.png',N'img\products\phukien\19.png', 'img\products\phukien\19.png', 665000,  N'Đen', 5, 7, 2)
---119
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Chân máy ảnh ', N'Chiều cao tối đa: 60Chiều cao tối thiểu: 5,5,Chiều dài gấp: 15,5,Công suất tải: 20 lb', 500000,N'img\products\phukien\2.webp',N'img\products\phukien\2.webp', 'img\products\phukien\2.webp', 450000, 'xám', 10, 7, 1)
---120
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Thẻ nhớ SD Ultra SanDisk 16GB Class 10 - 48MB/s', N'Thiết kế nhỏ gọn, bền bỉDung lượng lớn cho phép quay, chụp thả ga,Chuyển file với tốc độ cực nhproducts,Lưu trữ dữ liệu thoải mái trên máy ảnh, máy quay,Có khả năng chống sốc, chống nước, chống ẩm tốt,Dung lượng: 16GB,Tốc độ đọc: 48mb/s,Tốc độ video Class 10', 150000,N'img\products\phukien\20.jpg',N'img\products\phukien\20.jpg', 'img\products\phukien\20.jpg', 140000,  N'Đen', 5, 7, 1)
---121
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Gimbal Zhiyun WEEBILL-2', N'Bánh xe điều khiển lấy nétChip Infineon mạnh mẽ,Chống rung 3 trục, hình cảm ứng lật đa màu 2.88 inch,Sạc nhproducts trong 1.6 tiếng,Tải trọng 3.3kg,Thời gian hoạt động 9 giờ,
 thích tổ hợp ống kính, máy ảnh mirrorless, DSLR', 12000000,N'img\products\phukien\3.png',N'img\products\phukien\3.png', 'img\products\phukien\3.png', 11400000,  N'Đen', 5, 7, 2)
---122
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Gimbal Zhiyun Crane M3', N'Màn hình cảm ứng màu OLED 1,22 inchThiết kế nhỏ gọn, di động,Thời gian hoạt động 8 giờ,Tích hợp đèn LED chiếu sáng, bị viên pin 1150mAh,Trục pan 360°, tilt 309° và roll 333', 8400000,N'img\products\phukien\10.png',N'img\products\phukien\10.png', 'img\products\phukien\10.png', 7980000,  N'Đen', 5, 7, 2)
---123
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Tripod mini Joby HandyPod', N'Chất liệu : Aluminum, Rubber, TechnopolymerLoại đầu : Ball Head,Chuẩn ốc 1/4, Chiều cao tối thiểu : 10.5cm,Chiều cao tối đa : 20cm, Tải trọng tối đa : 1 kg, Kích thước : 4.2 x 5.3 x 19 cm, Trọng lượng : 0.185 kg', 690000,N'img\products\phukien\13.jpg',N'img\products\phukien\13.jpg', 'img\products\phukien\13.jpg', 655000,  N'Đen', 5, 7, 1)
---124
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Canon 24-105mm F4L usm', N'Tiêu cự:24-105mm.Khẩu độ:f/4 ,Kích thước kính lọc:77mm,Lấy nét gần nhất:0.45mm,Kích thước:83.45 x 107.15mm,Nặng:664.5g,Hood:EW-83H (đi kèm lens),N', 10000000,N'img\products\lens-flash\canon-ef-24-105mm-f4l-is-ii-usm-1.png',N'img\products\lens-flash\canon-ef-24-105mm-f4l-is-ii-usm-1.png', 'img\products\lens-flash\canon-ef-24-105mm-f4l-is-ii-usm-1.png', 9500000,  N'Đen', 5, 6, 1)
---125
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens canon-rf-15-35mm-f2-8l-is-usm', N'Chống rung: Có,Khẩu độ: F/2.8-22,Khoảng cách lấy nét gần nhất: 28cm,Kích thước Filter: 82mm,Ngàm ống kính: Canon RF,Số lá khẩu: 09,Sử dụng cho cảm biến Full-Frame,Tiêu cự: 15-35mm,Trọng lượng: 840g', 51000000,N'img\products\lens-flash\canon-rf-15-35mm-f2-8l-is-usm.png',N'img\products\lens-flash\canon-rf-15-35mm-f2-8l-is-usm.png', 'img\products\lens-flash\canon-rf-15-35mm-f2-8l-is-usm.png', 48450000,  N'Đen', 5, 6, 1)
---126
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens canon-rf-24-70mm-f2-8l-is-usm', N'Chống rung: Có,Khẩu độ: F/2.8-22,Khoảng cách lấy nét gần nhất: 21cm,Kích thước Filter: 82mm,Ngàm ống kính: Canon RF,Số lá khẩu: 09,Sử dụng cho cảm biến Full-Frame,Tiêu cự: 24-70mm,Trọng lượng: 900g', 52000000,N'img\products\lens-flash\canon-rf-24-70mm-f2-8l-is-usm.png',N'img\products\lens-flash\canon-rf-24-70mm-f2-8l-is-usm.png', 'img\products\lens-flash\canon-rf-24-70mm-f2-8l-is-usm.png', 49400000,  N'Đen', 5, 6, 1)
---127
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens canon-rf-50mm-f1.8-stm', N'Lớp phủ Super Spectra Coating,Một thấu kính phi cầu Pmo,Ống kính full-frame ngàm RF,Phạm vi khẩu độ: f/1.8 đến f/22', 4000000,N'img\products\lens-flash\canon-rf-50mm-f1.8-stm.png',N'img\products\lens-flash\canon-rf-50mm-f1.8-stm.png', 'img\products\lens-flash\canon-rf-50mm-f1.8-stm.png', 3800000,  N'Đen', 5, 6, 1)
---128
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens canon-rf-70-200-f4l-is-usm', N'Công nghệ lấy nét siêu thaỐng kính ngàm RF / Định dạng Full-Frame,Phạm vi khẩu độ: f/4 đến f/32', 39000000,N'img\products\lens-flash\canon-rf-70-200-f4l-is-usm.png',N'img\products\lens-flash\canon-rf-70-200-f4l-is-usm.png', 'img\products\lens-flash\canon-rf-70-200-f4l-is-usm.png', 37050000,  N'Trắng', 5, 6, 1)
---129
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens canon-rf-70-200mm-f2-8l-is-usm',N'Hai thấu kính phi cầu,Ngàm ống kính: Canon RF,Sử dụng cho cảm biến Full-Frame,Tiêu cự: 70-200mm', 64000000,N'img\products\lens-flash\canon-rf-70-200mm-f2-8l-is-usm.png',N'img\products\lens-flash\canon-rf-70-200mm-f2-8l-is-usm.png', 'img\products\lens-flash\canon-rf-70-200mm-f2-8l-is-usm.png', 60800000,  N'Trắng', 5, 6, 1)
---130
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens canon-rf-85mm-f1-2l-usm', N'Định dạng ống kính RF / Full-Frame,Khẩu độ: f/1.2 - f/16,Một thấu kính UD, Một thấu kính phi cầu,Yếu tố quang học khúc xạ quang phổ xproducts BR', 50000000,N'img\products\lens-flash\canon-rf-85mm-f1-2l-usm.png',N'img\products\lens-flash\canon-rf-85mm-f1-2l-usm.png', 'img\products\lens-flash\canon-rf-85mm-f1-2l-usm.png', 47500000,  N'Đen', 5, 6, 1)
---131
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens fujifilm-fujinon-mk-18-55mm-t2.9', N'Bao quát định dạng Super 35, Ngàm Fuji X với tiếp điểm điện tử, Khẩu T2.9 ổn định xuyên suốt phạm vi zoom, 3 phụ kiện MOD 0.8 tiêu chuẩn,Cửa điều sáng 9 lá không có nấc khẩu, Chế độ xoay lấy nét 200° và macro, Phù hợp với màu của dòng Fujinon HK/ZK/XK', 100000000,N'img\products\lens-flash\fujifilm-fujinon-mk-18-55mm-t2.9.png',N'img\products\lens-flash\fujifilm-fujinon-mk-18-55mm-t2.9.png', 'img\products\lens-flash\fujifilm-fujinon-mk-18-55mm-t2.9.png', 95000000,  N'Đen', 5, 6, 1)
---132
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens fujifilm-gf-50mm-f3-5-r-lm-wr',N'Khẩu độ: F/3.5-,Khoảng cách lấy nét gần nhất: 55cm,Kích thước Filter: 62mm,Ngàm ống kính: Fujifilm G', 24000000,N'img\products\lens-flash\fujifilm-gf-50mm-f3-5-r-lm-wr.png',N'img\products\lens-flash\fujifilm-gf-50mm-f3-5-r-lm-wr.png', 'img\products\lens-flash\fujifilm-gf-50mm-f3-5-r-lm-wr.png', 22900000,  N'Đen', 5, 6, 2)
---133
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens fujifilm-xc-16-50mm-f3.5-5.6-ois-ii', N'Định dạng ống kính: APS-C / X-mount,Kết hợp 3 thấu kinh phi cầu và 1 thấu kính ED,Khẩu độ: F/3.5 - F/22,Tiêu cự: 16 - 50mm', 4500000,N'img\products\lens-flash\fujifilm-xc-16-50mm-f3.5-5.6-ois-ii.png',N'img\products\lens-flash\fujifilm-xc-16-50mm-f3.5-5.6-ois-ii.png', 'img\products\lens-flash\fujifilm-xc-16-50mm-f3.5-5.6-ois-ii.png', 4225000, 'xám', 6, 6, 2)
---134
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens fujifilm-xf-16-80mm-f4-r-ois-wr',N'Khẩu độ: F/4-22,Ngàm ống kính: Fujifilm X-mount,Sử dụng cho cảm biến APS-C,Tiêu cự: 16-80mm', 19000000,N'img\products\lens-flash\fujifilm-xf-16-80mm-f4-r-ois-wr.png',N'img\products\lens-flash\fujifilm-xf-16-80mm-f4-r-ois-wr.png', 'img\products\lens-flash\fujifilm-xf-16-80mm-f4-r-ois-wr.png', 18050000,  N'Đen', 5, 6, 2)
---135
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens fujifilm-xf-80mm-f2.8-r-lm-ois-wr-macro',N'1 thấu kính phi cầu, 4 thấu kính ED,Chống rung: Có,Ống kính ngàm X/Định dạng APS-C,Phạm vi khẩu độ: f/2.8 đến f/22', 26000000,N'img\products\lens-flash\fujifilm-xf-80mm-f2.8-r-lm-ois-wr-macro.png',N'img\products\lens-flash\fujifilm-xf-80mm-f2.8-r-lm-ois-wr-macro.png', 'img\products\lens-flash\fujifilm-xf-80mm-f2.8-r-lm-ois-wr-macro.png', 24200000,  N'Đen', 7, 6, 1)
---136
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Đèn flash nikon-speedlight-sb-700',N'Khoảng 360g (chỉ Speedlight) ,Khoảng 450g (với bốn 1.5V pin kiềm AA),Flash đầu nghiêng xuống đến 7 ° hoặc lên đến 90 °, Flash đầu quay ngang 180 ° sang bên trái và bên phải, Kích thước (W x H x D): Khoảng 71 x 126 x 104.5mm', 6400000,N'img\products\lens-flash\medium_1515491807_nikon-speedlight-sb-700-chinh-hang-1499660360.jpg',N'img\products\lens-flash\medium_1515491807_nikon-speedlight-sb-700-chinh-hang-1499660360.jpg', 'img\products\lens-flash\medium_1515491807_nikon-speedlight-sb-700-chinh-hang-1499660360.jpg', 6080000,  N'Đen', 5, 6, 1)
---137
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Đèn Flash Sony HVL-F32M', N'Flash Sony HVL-F32M dễ dàng cất giữ và mang theo đến bất cứ đâu nhờ thiết kế thproducts mảnh và gọn nhẹ. Với chỉ số công suất 32 (GN32), đèn flash mạnh mẽ này sẽ mang đến ánh sáng cần thiết cho những tình huống khác nhau.', 6000000,N'img\products\lens-flash\medium_1515491862_sony-hvl-f32m-chinh-hang-1499670911.jpg',N'img\products\lens-flash\medium_1515491862_sony-hvl-f32m-chinh-hang-1499670911.jpg', 'img\products\lens-flash\medium_1515491862_sony-hvl-f32m-chinh-hang-1499670911.jpg', 5700000,  N'Đen', 5, 6, 1)
---138
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Đèn Flash Godox TT685 TTL', N'Guide Number: 197 ở ISO 100 và 200mm,Khoảng thu phóng: 20-200mm,Thiết lập đơn giản, sử dụng dễ dàng,Tích hợp 2.4Ghz X truyền dẫn không dây', 2200000,N'img\products\lens-flash\medium_1515492562_den-flash-godox-tt685-ttl-for-canonnikonsony-moi-100-1499681689.jpg',N'img\products\lens-flash\medium_1515492562_den-flash-godox-tt685-ttl-for-canonnikonsony-moi-100-1499681689.jpg', 'img\products\lens-flash\medium_1515492562_den-flash-godox-tt685-ttl-for-canonnikonsony-moi-100-1499681689.jpg', 2090000,  N'Đen', 5, 6, 1)
---139
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Đèn Flash Godox V860 II-TTL for Canon/Nikon/Sony/Fujiflim',N'Hệ thống điều khiển không dây Godox X 2.4G,Sử dụng pin Li-on,Tích hợp tính năng TTL,Xoay nghiêng linh hoạt (nghiêng -7 đến 90 ° và xoay 180 °)', 3000000,N'img\products\lens-flash\medium_1515492569_den-flash-godox-v860-ii-ttl-for-canonnikonsony-1499681187.jpg',N'img\products\lens-flash\medium_1515492569_den-flash-godox-v860-ii-ttl-for-canonnikonsony-1499681187.jpg', 'img\products\lens-flash\medium_1515492569_den-flash-godox-v860-ii-ttl-for-canonnikonsony-1499681187.jpg', 2850000,  N'Đen', 5, 6, 1)
---140
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Softbox Godox bằng vải', N'Bổ sung ngàm Bowen,Có thể gấp gọn dễ dàng,Đường kính 95cm,Hỗ trợ đèn flash speedlite, đèn studio', 250000,N'img\products\lens-flash\medium_1515658276_softbox-godox-bang-vai-moi-100-1499673566.jpg',N'img\products\lens-flash\medium_1515658276_softbox-godox-bang-vai-moi-100-1499673566.jpg', 'img\products\lens-flash\medium_1515658276_softbox-godox-bang-vai-moi-100-1499673566.jpg', 230000,  N'Đen', 8, 6, 1)
---141
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Trigger Godox XPro for Canon/Nikon/Fujifilm', N'Đồng bộ hóa tốc độ cao lên đến 1/8000 giây,Phạm vi không dây: 328.1 ,Tần số: 2.4 GHz, 32 kênh,Trang bị màn hình LCD', 1500000,N'img\products\lens-flash\medium_crd1545192060.jpg',N'img\products\lens-flash\medium_crd1545192060.jpg', 'img\products\lens-flash\medium_crd1545192060.jpg', 1425000,  N'Đen', 5, 6, 1)
---142
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Flash Canon Speedlite 470EX-AI', N'Tương thích với Canon E-TTL / E-TTL II Phạm vi Zoom: 24-105mm (14mm với Panel) Chế độ nảy của "Full Auto" và "Semi Auto Nghiêng: 120 ° Xoay: +/- 180 ° Bảng điều khiển LCD Chạy pin 4x AA Kích thước 73.7 x 129.5 x 104.1 mm Trọng lượng 386 g (không bao gồm pin)', 7000000,N'img\products\lens-flash\medium_fei1520243729.jpg',N'img\products\lens-flash\medium_fei1520243729.jpg', 'img\products\lens-flash\medium_fei1520243729.jpg', 6650000,  N'Đen', 5, 6, 1)
---143
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Nikon Z 24-50mm f/4-6.3', N'Ba thấu kính phi cầu,Hai thấu kính tán sắc cực thấp,Ống kính ngàm Z / Định dạng FX,Phạm vi khẩu độ: f / 4 đến f / 36', 5000000,N'img\products\lens-flash\nikon-nikkor-z-24-50mm-f4-6-3.png',N'img\products\lens-flash\nikon-nikkor-z-24-50mm-f4-6-3.png', 'img\products\lens-flash\nikon-nikkor-z-24-50mm-f4-6-3.png', 4750000,  N'Đen', 5, 6, 1)
---144
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Nikon Z 24-70mm f/2.8 S',N'Hai thấu kính ED và bốn thấu kính phi cầu,Lớp phủ ARNEO và Nano Crystal,Ống kính ngàm Z / Định dạng FX,Phạm vi khẩu độ: f / 2.8 đến f / 22', 48000000,N'img\products\lens-flash\nikon-nikkor-z-24-70mm-f2-8-s.png',N'img\products\lens-flash\nikon-nikkor-z-24-70mm-f2-8-s.png', 'img\products\lens-flash\nikon-nikkor-z-24-70mm-f2-8-s.png', 45600000,  N'Đen', 5, 6, 1)
---145
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Nikon Z 24-200mm f/4-6.3 VR', N'Chống rung VR 5-stops,Ống kính ngàm Z/Định dạng FX,Phạm vi khẩu độ: f/4 đến f/36,Tiêu cự từ 24-200mm', 19000000,N'img\products\lens-flash\nikon-nikkor-z-24-200mm-f4-6-3-vr.png',N'img\products\lens-flash\nikon-nikkor-z-24-200mm-f4-6-3-vr.png', 'img\products\lens-flash\nikon-nikkor-z-24-200mm-f4-6-3-vr.png', 18050000,  N'Đen', 5, 6, 1)
---146
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Nikon Z 35mm f/1.8 S',N'Hai thấu kính ED và Ba thấu kính phi cầu,Khẩu độ: f / 1.8 đến f / 16,Nano Crystal & Super Integrated Coatings,Ống kính ngàm Z / Định dạng FX', 16000000,N'img\products\lens-flash\nikon-nikkor-z-35mm-f1-8-s.png',N'img\products\lens-flash\nikon-nikkor-z-35mm-f1-8-s.png', 'img\products\lens-flash\nikon-nikkor-z-35mm-f1-8-s.png', 15200000,  N'Đen', 5, 6, 1)
---147
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Nikon Z 50mm f/1.8 S',N'2 thấu kính ED và 2 thấu kính phi cầu,Khẩu độ f/1.8-16,Ống kính ngàm Z / Định dạng FX,Tráng phủ Nano Crystal và Super Integrated', 13000000,N'img\products\lens-flash\nikon-nikkor-z-50mm-f1-8-s.png',N'img\products\lens-flash\nikon-nikkor-z-50mm-f1-8-s.png', 'img\products\lens-flash\nikon-nikkor-z-50mm-f1-8-s.png', 10250000,  N'Đen', 21, 6, 1)
---148
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Sony E 70-350mm f/4.5-6.3 G OSS',N'Khẩu độ max: F/4.5-6.3,Ngàm ống kính: Sony E,Sử dụng cho cảm biến APS-C,Tiêu cự: 70-350mm', 21000000,N'img\products\lens-flash\sony-e-70-350mm-f4-5-6-3-g-oss.png',N'img\products\lens-flash\sony-e-70-350mm-f4-5-6-3-g-oss.png', 'img\products\lens-flash\sony-e-70-350mm-f4-5-6-3-g-oss.png', 19950000,  N'Đen', 5, 1, 1)
---149
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Sony FE 12-24mm f/4 G', N'Lens Sony FE 12-24mm f/4 G', 40000000,N'img\products\lens-flash\sony-fe-12-24mm-f4-g.png',N'img\products\lens-flash\sony-fe-12-24mm-f4-g.png', 'img\products\lens-flash\sony-fe-12-24mm-f4-g.png', 38000000,  N'Đen', 5, 6, 1)
---150
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Sony 16-55mm f2.8G',N'Khẩu độ: F/2.8-22Khoảng cách lấy nét gần nhất: 33cm,Kích thước Filter: 67mm,Ngàm ống kính: Sony E,Số lá khẩu: 07,Sử dụng cho cảm biến APS-C,Tiêu cự: 16-55mm,Trọng lượng: 494g', 30000000,N'img\products\lens-flash\sony-e-16-55mm-f2-8-g.png',N'img\products\lens-flash\sony-e-16-55mm-f2-8-g.png', 'img\products\lens-flash\sony-e-16-55mm-f2-8-g.png', 28500000,  N'Đen', 5, 6, 1)
---151
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Sony FE 24-105mm f/4 G OSS',N'Khẩu độ: F/4-22,Ngàm ống kính: Sony FE,Sử dụng cho cảm biến Full-Frame,Tiêu cự: 24-105mm', 30000000,N'img\products\lens-flash\sony-fe-24-105mm-f4-g-oss.png',N'img\products\lens-flash\sony-fe-24-105mm-f4-g-oss.png', 'img\products\lens-flash\sony-fe-24-105mm-f4-g-oss.png', 28500000,  N'Đen', 5, 6, 1)
---152
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Sony FE 100-400mm f/4.5-5.6 GM OSS', N'Chống rung: cóKhẩu độ max: F/4.5-5.6,Khẩu độ minh: F/32-40,Khoảng cách lấy nét gần nhất: 98cm,Kích thước Filter: 77mm,Ngàm ống kính: Sony E,Số lá khẩu: 09,Sử dụng cho cảm biến Full-Frame,Tiêu cự: 100-400mm,Trọng lượng: 1395g', 60000000,N'img\products\lens-flash\sony-fe-100-400mm-f4-5-5-6-gm-oss.png',N'img\products\lens-flash\sony-fe-100-400mm-f4-5-5-6-gm-oss.png', 'img\products\lens-flash\sony-fe-100-400mm-f4-5-5-6-gm-oss.png', 57000000,  N'Trắng', 5, 6, 1)
---153
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens  Sony FE 135mm f/1.8 GM ',N'Khẩu độ: F/1.8-32,Khoảng cách lấy nét gần nhất: 70cm,Ống kính ngàm E/Định dạng Full-Frame,Số lá khẩu: 11', 44000000,N'img\products\lens-flash\sony-fe-135mm-f1-8-gm.png',N'img\products\lens-flash\sony-fe-135mm-f1-8-gm.png', 'img\products\lens-flash\sony-fe-135mm-f1-8-gm.png', 41800000,  N'Đen', 5, 6, 1)
---154
INSERT INTO dbo.Product([Name],[Detail],[Price],[Image1],[Image2],[Image3],[PriceNew],[Color],[Sale],[CatalogID],[SellID])
	VALUES( N'Lens Sony FE 200-600mm f/5.6-6.3 G OSS', N'Lớp phủ Nano AR và Lớp phủ Flo,Năm thấu kính ED, một thấu kính phi cầu,Ống kính ngàm E / Định dạng Full-Frame,Phạm vi khẩu độ: f / 5.6 đến f / 36', 46000000,N'img\products\lens-flash\sony-fe-200-600-f5-6-6-3-g-oss.png',N'img\products\lens-flash\sony-fe-200-600-f5-6-6-3-g-oss.png', 'img\products\lens-flash\sony-fe-200-600-f5-6-6-3-g-oss.png', 43700000,  N'Trắng', 5, 6, 1)
