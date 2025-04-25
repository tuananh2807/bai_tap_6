# bai_tap_6
bài tập số 6 mssv k225480106001 Lê Tuấn Anh môn hệ quản trị cs dữ liệu 
Yêu cầu bài tập: 
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025  
## bài làm 
# tạo database với tên là sv_tnut  
![image](https://github.com/user-attachments/assets/9db4821e-ecd6-4bd9-913c-4e85cc0be4d9)  

![image](https://github.com/user-attachments/assets/8f919895-413c-42b2-b2e8-9fc32860a937)  

# các bước để import được dữ liệu trong sv_tnut.sql vào sql server 
Vào menu File > Open > File… và mở file sv_tnut.sql sau đó ấn execute để chạy toàn bộ scrips  

![image](https://github.com/user-attachments/assets/841483f8-b9d3-4dee-aec2-bf6129dad02c)  

![image](https://github.com/user-attachments/assets/f138f6b6-a82d-478b-95f1-363d9dfd62a5) 

# ấn chuột phải vào dbo.sv chọn edit top 200  
hiển thị ra bảng này là các dữ liệu đã vào bảng thành công  

![image](https://github.com/user-attachments/assets/52ce6bce-3c4c-448e-b327-d04fc0906945)  

# Câu lệnh select truy vấn sinh viên trùng ngày/tháng/năm sinh với 28-07-2004  
-> lọc những sinh viên có ngày sinh chính xác là 28-07-2004  

![image](https://github.com/user-attachments/assets/270c5388-4c91-44c5-8b94-ad49e87b2454)  

# Câu lệnh select truy vấn sinh viên trùng ngày và tháng sinh với 28-07 
-> lọc những sinh viên có ngày sinh và tháng sinh chính xác là 28-07 năm sinh có thể  
trùng hoặc không  

![image](https://github.com/user-attachments/assets/bdd4b5a2-5385-4516-a9dd-9b5792478e28)  

# Câu lệnh select truy vấn sinh viên trùng tháng và năm sinh với 07-2004  
-> lọc những sinh viên có tháng năm sinh là 07-2004, ngày sinh có thể giống hoặc không  

![image](https://github.com/user-attachments/assets/fb9db035-3462-458d-ae88-edc74c2ff6e4)  

# Câu lệnh select truy vấn sinh viên trùng tên với ( Anh)  

![image](https://github.com/user-attachments/assets/52996ac7-1aff-4bfe-8f36-6daf44153753)   

# Câu lệnh select truy vấn sinh viên trùng họ tên và tên đệm với ( Lê Tuấn )  

![image](https://github.com/user-attachments/assets/843fa9bd-f90b-475b-8867-475f1a83c324)  

# Câu lệnh select truy vấn sinh viên có những sv nào có sđt sai khác chỉ 1 số so với sđt 0934399101  
-> so sánh từng chữ số trong sdt 0934399101 nếu chỉ khác đúng 1 chữ số thì chọn  

![image](https://github.com/user-attachments/assets/223e79ba-5c96-405e-8a09-04a40c16c438)  

# Câu lệnh select LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM,  
# KIỂU TIẾNG  VIỆT  

![image](https://github.com/user-attachments/assets/abb13969-3885-4443-bdc9-08f15dee7a7c)   

# Câu lệnh select LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV  
-> vì là không có cột giới tính nên chỉ có thể lọc theo ngành KMT và lọc theo họ đệm  
và tên sinh viên nữ nên không thể chính xác và đầy đủ 100%  

![image](https://github.com/user-attachments/assets/3846b9f6-ccab-4708-88ac-fbb2f1d8af2a)

















