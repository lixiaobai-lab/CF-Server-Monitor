-- 只用于已确认全新、空白的监控数据库，发布 Worker 之前执行一次。
-- 不使用 IF NOT EXISTS / UPSERT：已有 settings 表时应报错并停止，避免覆盖现有配置。
CREATE TABLE settings (
    key TEXT PRIMARY KEY,
    value TEXT
);

INSERT INTO settings (key, value) VALUES (
    'site_options',
    '{"is_public":"false","servers_optimized":"true","wss_report_enabled":"false","notification_timezone":"Asia/Singapore"}'
);

INSERT INTO settings (key, value) VALUES (
    'appearance_options',
    '{"site_title":"服务器监控","preferred_theme":"dark","default_language":"zh"}'
);
