## Thông tin cá nhân
- Họ và Tên: Nguyễn Thành Nguyên
- MSSV: K215480106115
- Lớp: K57KMT
- Môn học: Hệ quản trị cơ sở dữ liệu
## Tên bài toán
- Đề tài: Quản lý Bảng đấu Bóng Đá
## Các Chức Năng
- Quản lý thông tin các đội bóng
- Quản lý lịch thi đấu của các đội bóng
- Quản lý điểm số của các đội bóng qua từng vòng
## Các Bảng Của Hệ Thống
- Bảng doibong (madoi,tendoi)
- ![Ảnh chụp màn hình 2024-06-19 202104](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/1dbba094-6d5a-4f84-8d2e-abb22bd56c0a)
- Trường madoi là trường chính(PRIMARY KEY) của bảng, dùng để dịnh danh duy nhất cho từng dòng trong bảng.
- Trường tendoi là tên đội, có độ dài tối đa 50 ký
- Bảng trandau(matran, doinha, doikhachs, ngaythidau)
- ![Ảnh chụp màn hình 2024-06-19 202836](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/6bd01ecc-97f0-48dc-b4de-5af44f88c3f0)
- Trường matran là trường chính(PRIMARY KEY) của bảng, dùng để dịnh danh duy nhất cho mã trận đấu
- Trường doinha Khóa Ngoại (FOREIGN KEY) tham chiếu đến madoi
-  Trường doikhach Khóa Ngoại (FOREIGN KEY) tham chiếu đến madoi
-  Trường ngaythidau lưu trữ dữ liệu lịch thi đấu, sử dụng kiểu dữ DATE\
- Bảng bangdiem(madoi,tendoi,thang,thua,hoa,banthang,banthua,diem)
- ![Ảnh chụp màn hình 2024-06-19 203541](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/26a01542-1e24-45b3-8248-fe82313c3525)
- Trường madoi là trường chính(PRIMARY KEY) của bảng, đây là kiểu dữ INT
- Trường tendoi là tên đội,khai báo kiểu dữ liệu INT
- Trường thang là Thắng, kiểu dữ liệuINT, số trận thắng của đội bóng
- Trường thua là Thua, kiểu dữ liệuINT, số trận thua của đội bóng
- Trường hoa là hòa, kiểu dữ liệuINT, số trận hòa của đội bóng
- Trường banthang là bàn thắng, kiểu dữ liệuINT, số bàn thắng của đội bóng
- Trường banthua là bàn thua, kiểu dữ liệuINT, số bàn thua của đội bóng
- Trường hieuso là hiệu số, kiểu dữ liệuINT, hiệu số của đội bóng
- Trường madoi là khóa ngoại (FOREIGN KEY) tham chiếu đến cột madoi của bảng doibong
- Bảng ketquavongdau(matran,banthangdoinha,banthangdoikhach)
- ![Ảnh chụp màn hình 2024-06-19 204802](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/e1828b06-547e-4bdd-8429-a11d2622e001)
- Trường matran là khóa chính(PRIMARY KEY) của bảng, kiểu dữ liệu INT
- Tường banthangdoinha là bàn thắng đội nhà,kiểu dữ liệu INT, lưu trữ bàn thắng đội nhà
- Tường banthangdoikhach là bàn thắng đội khách,kiểu dữ liệu INT, lưu trữ bàn thắng đội khách
- Bảng bangdau(madoi,bangdau)
- ![Ảnh chụp màn hình 2024-06-19 205409](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/a411f67a-db08-4819-9d1e-d1f8e47fc9a8)
- Trường madoi là trường chính(PRIMARY KEY) của bảng, đây là kiểu dữ INT
- Trường bangdau là bảng đấu, có độ dài 50 ký tự
- tạo Trigger Thay đổi lịch thi đấu của đội Pháp
- ![Ảnh chụp màn hình 2024-06-19 205847](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/7abd0a11-353b-458f-9295-32f309556afa)
- Lịch thi đấu của đổi tuyển 
- ![Ảnh chụp màn hình 2024-06-19 210306](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/093329c7-064c-4cde-85a4-96176ac977aa)
- tính điểm các đội qua các vòng
- ![Ảnh chụp màn hình 2024-06-19 210624](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/63b1755d-fd22-446b-af72-fff622229c2f)\
- Các đội ở bảng A
- ![Ảnh chụp màn hình 2024-06-19 210807](https://github.com/Nguyenk57kmt/BTL-HQTCSDL/assets/168854278/47324cde-47d8-4930-a185-fa28d857375d)






