-- Sinh viên trùng hoàn toàn ngày/tháng/năm sinh
SELECT * FROM Sv
WHERE ns = '2004-07-28';

-- Sinh viên trùng ngày và tháng sinh
SELECT * FROM Sv
WHERE DAY(ns) = 28 AND MONTH(ns) = 7;

-- Sinh viên trùng tháng và năm sinh
SELECT * FROM Sv
WHERE MONTH(ns) = 7 AND YEAR(ns) = 2004;

-- Sinh viên trùng tên (Anh)
SELECT * FROM Sv
WHERE ten = N'Anh';

-- Sinh viên trùng họ và tên đệm (Lê Tuấn Anh)
SELECT * FROM Sv
WHERE hodem = N'Lê Tuấn ';

-- Sinh viên có SĐT sai khác đúng 1 số so với 0934399101
-- So sánh từng ký tự trong chuỗi sdt với '0934399101'
SELECT * FROM Sv
WHERE LEN(sdt) = 10 AND (
    SELECT COUNT(*) 
    FROM (
        SELECT TOP 10 
            CASE 
                WHEN SUBSTRING(sdt, number, 1) != SUBSTRING('0358846745', number, 1) 
                THEN 1 ELSE NULL 
            END AS Diff
        FROM master..spt_values
        WHERE type = 'P' AND number BETWEEN 1 AND 10
    ) AS Differences
    WHERE Diff IS NOT NULL
) = 1;

-- Liệt kê tất cả SV ngành KMT (nếu có thể lọc từ tên lớp), sắp xếp theo tên và họ đệm
-- Giả định lớp có chứa 'KMT' để lọc
SELECT * FROM Sv
WHERE lop LIKE '%KMT%'
ORDER BY 
    ten COLLATE Vietnamese_CI_AS,
    hodem COLLATE Vietnamese_CI_AS;

-- Sinh viên nữ ngành KMT (dựa trên tên)
SELECT * FROM Sv
WHERE lop LIKE '%KMT%'
AND (
    -- Kiểm tra họ đệm nữ
    hodem LIKE N'%Thị%' OR hodem LIKE N'%Ngọc%' OR hodem LIKE N'%Diệu%' OR
    hodem LIKE N'%Thanh%' OR hodem LIKE N'%Hồng%' OR hodem LIKE N'%Tuyết%' OR
    hodem LIKE N'%Phương%' OR hodem LIKE N'%Mỹ%' OR hodem LIKE N'%Trúc%' OR
    hodem LIKE N'%Quỳnh%' OR hodem LIKE N'%Như%' OR hodem LIKE N'%Bảo%'
)
AND ten IN (
    N'Lan', N'Hoa', N'Mai', N'Hương', N'Linh', N'Trang', N'Ngọc', N'Hạnh',
    N'Thảo', N'Thùy', N'Diệp', N'Nhung', N'Mỹ', N'Yến', N'Loan', N'Vy',
    N'Nhi', N'Giang', N'Ánh', N'Hiền', N'Tuyết', N'Chi', N'Trinh', N'Thanh',
    N'Quỳnh', N'Bích', N'Ngân', N'Phương', N'Oanh', N'Dung'
);