/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : jsp_cangku

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-01-31 12:16:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chuku`
-- ----------------------------
DROP TABLE IF EXISTS `chuku`;
CREATE TABLE `chuku` (
  `ckid` int(11) NOT NULL AUTO_INCREMENT,
  `sp` varchar(40) DEFAULT NULL COMMENT '商品',
  `jg` varchar(40) DEFAULT NULL COMMENT '价格',
  `sl` varchar(40) DEFAULT NULL COMMENT '数量',
  `ms` varchar(40) DEFAULT NULL COMMENT '描述',
  `czr` varchar(40) DEFAULT NULL COMMENT '操作人',
  `cksj` varchar(40) DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`ckid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of chuku
-- ----------------------------
INSERT INTO `chuku` VALUES ('1', '1', '12', '1', '1', '123', '2019-11-05 18:34:52');
INSERT INTO `chuku` VALUES ('2', '2', '1', '1', '1', '123', '2019-11-06 10:15:25');

-- ----------------------------
-- Table structure for `gys`
-- ----------------------------
DROP TABLE IF EXISTS `gys`;
CREATE TABLE `gys` (
  `gysid` int(11) NOT NULL AUTO_INCREMENT,
  `gysmc` varchar(40) DEFAULT NULL COMMENT '供应商名称',
  `dz` varchar(40) DEFAULT NULL COMMENT '地址',
  `jyfw` varchar(4000) DEFAULT NULL COMMENT '经营范围',
  `dh` varchar(40) DEFAULT NULL COMMENT '电话',
  `fr` varchar(40) DEFAULT NULL COMMENT '法人',
  `zcsj` varchar(40) DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`gysid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of gys
-- ----------------------------
INSERT INTO `gys` VALUES ('1', '娃哈哈', '杭州路2929', '方便食品', '123123', '123123123', '2019-11-05 17:41:52');
INSERT INTO `gys` VALUES ('2', '长达集团', '北京路111', '蔬菜', '12301230', '李四', '2019-11-06 10:14:18');

-- ----------------------------
-- Table structure for `ruku`
-- ----------------------------
DROP TABLE IF EXISTS `ruku`;
CREATE TABLE `ruku` (
  `rkid` int(11) NOT NULL AUTO_INCREMENT,
  `sp` varchar(40) DEFAULT NULL COMMENT '商品',
  `sl` varchar(40) DEFAULT NULL COMMENT '数量',
  `ms` varchar(4000) DEFAULT NULL COMMENT '描述',
  `czr` varchar(40) DEFAULT NULL COMMENT '操作人',
  `rksj` varchar(40) DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`rkid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ruku
-- ----------------------------
INSERT INTO `ruku` VALUES ('1', '1', '1', '13', '123', '2019-11-05 18:26:44');
INSERT INTO `ruku` VALUES ('2', '3', '1', '1', '123', '2019-11-06 10:15:06');
INSERT INTO `ruku` VALUES ('3', '2', '22', '22', '123', '2019-11-06 10:15:16');

-- ----------------------------
-- Table structure for `shangpin`
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `spid` int(11) NOT NULL AUTO_INCREMENT,
  `spmc` varchar(40) DEFAULT NULL COMMENT '商品名称',
  `jg` varchar(40) DEFAULT NULL COMMENT '价格',
  `gys` varchar(40) DEFAULT NULL COMMENT '供应商',
  `gg` varchar(40) DEFAULT NULL COMMENT '规格',
  `sl` int(40) DEFAULT NULL COMMENT '数量',
  `lrr` varchar(40) DEFAULT NULL COMMENT '录入人',
  `sx` varchar(40) DEFAULT NULL COMMENT '属性',
  `xh` varchar(40) DEFAULT NULL COMMENT '型号',
  `zcsj` varchar(40) DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`spid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('1', '矿泉水', '1', '娃哈哈', '瓶', '0', '123', '个', '11', '2019-11-05 18:15:42');
INSERT INTO `shangpin` VALUES ('2', '康师傅方便面', '4', '娃哈哈', '盒', '21', '123', '个', 'K11', '2019-11-05 18:19:31');
INSERT INTO `shangpin` VALUES ('3', '包装素菜', '22', '长达集团', '12', '1', '123', '个', '1', '2019-11-06 10:14:39');

-- ----------------------------
-- Table structure for `xtgg`
-- ----------------------------
DROP TABLE IF EXISTS `xtgg`;
CREATE TABLE `xtgg` (
  `xtggid` int(11) NOT NULL AUTO_INCREMENT,
  `bt` varchar(40) DEFAULT NULL COMMENT '标题',
  `ggnr` varchar(4000) DEFAULT NULL COMMENT '公告内容',
  `fbsj` varchar(40) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`xtggid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of xtgg
-- ----------------------------
INSERT INTO `xtgg` VALUES ('1', '系统公告', '系统公', '2019-11-05 18:04:21');
INSERT INTO `xtgg` VALUES ('2', '222', '22', '2019-11-06 10:16:54');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `yhid` int(11) NOT NULL AUTO_INCREMENT,
  `yhm` varchar(40) DEFAULT NULL COMMENT '用户名',
  `mm` varchar(40) DEFAULT NULL COMMENT '密码',
  `zsxm` varchar(40) DEFAULT NULL COMMENT '真实姓名',
  `qx` varchar(40) DEFAULT NULL COMMENT '权限',
  `zcsj` varchar(40) DEFAULT NULL COMMENT '注册时间',
  `zw` varchar(40) DEFAULT NULL COMMENT '职务',
  PRIMARY KEY (`yhid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '123', '123', '123', '用户', '2019-11-05 17:37:59', '123');
INSERT INTO `yonghu` VALUES ('2', '333', '333', '333', '用户', '2019-11-05 20:06:52', '12');
INSERT INTO `yonghu` VALUES ('3', '666', '666', '666', '用户', '2019-11-06 10:13:58', '123');
INSERT INTO `yonghu` VALUES ('4', 'admin', 'admin', 'admin', '管理员', '2019-11-06 10:16:30', '管理员');
INSERT INTO `yonghu` VALUES ('5', 'user', '123456', '张三', '用户', '2020-01-31 09:33:26', '仓储人员');
