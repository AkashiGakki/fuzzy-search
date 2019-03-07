# 创建一张用户表
CREATE TABLE user (
    'uid' INT(10) AUTO_INCREMENT PRIMARY KEY COMMENT '用户ID',
    'username' VARCHAR(30) NOT NULL DEFAULT '' COMMENT '用户名',
    'password' CHAR(32) NOT NULL DEFAULT '' COMMENT '密码',
    'sex' CHAR(2) NOT NULL DEFAULT '保密' COMMENT '性别',
    'email' VARCHAR(40) NOT NULL DEFAULT '' COMMENT '邮箱',
    'hobby' VARCHAR(255) NOT NULL DEFAULT '' COMMENT '兴趣爱好',
    KEY 'username'(username)
)ENGINE=MYISAM DEFAULT CHARSET=UTF-8 COMMENT='用户表';

# 插入一些基础数据
INSERT INTO user
VALUES
(null, 'apple', '123456', '男', 'apple@qq.com', '篮球'),
(null, 'orange', '123456', '男', 'orange@qq.com', '篮球'),
(null, 'banner', '123456', '女', 'banner@qq.com', '羽毛球'),
(null, 'bob', '123456', '男', 'apple@qq.com', '乒乓球'),
(null, 'coco', '123456', '男', 'apple@qq.com', '轮滑'),
(null, 'Lily', '123456', '女', 'apple@qq.com', '游泳'),
(null, 'lucy', '123456', '女', 'apple@qq.com', '台球');