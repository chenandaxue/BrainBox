-- 初始化 customer 表示例数据
INSERT INTO customer (id, username, psaword) VALUES 
(1, 'alice', 'password123'),
(2, 'bob', 'securepass'),
(3, 'charlie', 'mypassword');

-- 初始化 knowbase 表示例数据
INSERT INTO knowbase (id, user_id, base_name, in_trash, create_at) VALUES 
(1, 1, 'Science', 0, '2024-09-01'),
(2, 1, 'Math', 0, '2024-09-02'),
(3, 2, 'History', 1, '2024-09-03'),
(4, 3, 'Art', 0, '2024-09-04');

-- 初始化 note 表示例数据
INSERT INTO note (id, to_base_id, note_name, note_content, in_trash, create_at) VALUES 
(1, 1, 'Physics Notes', 'Content about physics...', 0, '2024-09-05'),
(2, 1, 'Chemistry Notes', 'Content about chemistry...', 0, '2024-09-05'),
(3, 2, 'Algebra', 'Content about algebra...', 0, '2024-09-06'),
(4, 3, 'World War II', 'Content about WWII...', 1, '2024-09-06'),
(5, 4, 'Renaissance Art', 'Content about Renaissance...', 0, '2024-09-07');
