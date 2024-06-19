tạo triger thay đổi lịch thi đấu của pháp
-- Tạo trigger để thay đổi lịch đấu của tuyển Pháp
CREATE TRIGGER UpdateFranceMatchSchedule
ON dbo.[kết quả vòng đấu]
AFTER INSERT, UPDATE
AS
BEGIN
    -- Cập nhật lịch đấu của các trận đấu mà tuyển Pháp tham gia
    UPDATE td
    SET
        td.ngaydau = DATEADD(day, 7, td.ngaydau) -- Thay đổi ngày đấu thành ngày hiện tại + 7 ngày (ví dụ)
    FROM dbo.[trận đấu] td
    INNER JOIN inserted i ON td.matran = i.matran
    INNER JOIN dbo.[Đội bóng] d ON td.doinha = d.tendoi OR td.doikhach = d.tendoi
    WHERE d.tendoi = N'Pháp'; -- Điều kiện để chỉ cập nhật lịch đấu của các trận đấu mà tuyển Pháp tham gia

    -- Làm sạch bộ nhớ đệm kết quả vòng đấu
    DBCC FREEPROCCACHE;
END;
