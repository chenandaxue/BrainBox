-- 创建 customer 表
CREATE TABLE customer (
    id INTEGER PRIMARY KEY, -- 主键
    username VARCHAR(50), -- 用户名
    psaword VARCHAR(50)  -- 密码
);

-- 创建 knowbase 表
CREATE TABLE knowbase (
    id INTEGER PRIMARY KEY, -- 主键
    user_id INTEGER, -- 外键，关联到 customer 表的 id
    base_name VARCHAR(32), -- 知识库名称
    in_trash BINARY(1), -- 是否在回收站
    create_at DATE, -- 创建时间
    FOREIGN KEY (user_id) REFERENCES customer(id) -- 外键约束
);

-- 创建 note 表
CREATE TABLE note (
    id INTEGER PRIMARY KEY, -- 主键
    to_base_id INTEGER, -- 外键，关联到 knowbase 表的 id
    note_name VARCHAR(32), -- 笔记名称
    note_content TEXT, -- 笔记内容
    in_trash BINARY(1), -- 是否在回收站
    create_at DATE, -- 创建时间
    FOREIGN KEY (to_base_id) REFERENCES knowbase(id) -- 外键约束
);
