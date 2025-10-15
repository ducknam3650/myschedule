SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS schedules (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    start_datetime DATETIME NOT NULL,
    end_datetime DATETIME,
    is_completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `schedule_db`.`schedules` (`title`, `description`, `start_datetime`, `end_datetime`, `is_completed`) VALUES ("풋살", "정기 풋살 모임", '20251015080000', '20251015090000', '1');
INSERT INTO schedules (title, description, start_datetime, end_datetime, is_completed) VALUES
('청소하기', '거실 청소 및 주방 정리', '2025-10-08 09:00:00', '2025-10-08 10:00:00', TRUE),
('코드 공부', '파이썬 모듈 공부', '2025-10-09 13:00:00', '2025-10-09 17:00:00', FALSE),
('운동하기', '근력 운동 1시간', '2025-10-10 19:00:00', '2025-10-10 20:30:00', TRUE),
('장보기', '마트가서 장보기', '2025-10-11 11:00:00', '2025-10-11 12:00:00', FALSE),
('책 읽기', '소설 책 읽기', '2025-10-12 20:00:00', '2025-10-12 22:00:00', FALSE),
('산책하기', '동네 한바퀴 돌기', '2025-10-13 10:00:00', '2025-10-13 11:00:00', TRUE),
('영화 보기', '유행하는 영화 보기', '2025-10-14 14:00:00', '2025-10-14 16:00:00', TRUE),
('드라이브가기', '앞에 한바퀴 돌고 오기', '2025-10-15 18:00:00', '2025-10-15 20:00:00', FALSE),
('친구 만나기', '저녁 식사', '2025-10-16 19:00:00', '2025-10-16 21:00:00', TRUE),
('술 약속', '찬구와 술 약속', '2025-10-17 09:00:00', '2025-10-17 12:00:00', FALSE);