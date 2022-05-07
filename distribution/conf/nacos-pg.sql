
-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."config_info";
CREATE TABLE "public"."config_info" (
  "id" serial8,
  "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_id" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "md5" varchar(32) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "gmt_create" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "gmt_modified" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "src_user" text COLLATE "pg_catalog"."default",
  "src_ip" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "app_name" varchar(128) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "c_desc" varchar(256) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "c_use" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "effect" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "type" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "c_schema" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."config_info"."id" IS 'id';
COMMENT ON COLUMN "public"."config_info"."content" IS 'content';
COMMENT ON COLUMN "public"."config_info"."md5" IS 'md5';
COMMENT ON COLUMN "public"."config_info"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "public"."config_info"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "public"."config_info"."src_user" IS 'source user';
COMMENT ON COLUMN "public"."config_info"."src_ip" IS 'source ip';
COMMENT ON COLUMN "public"."config_info"."tenant_id" IS '租户字段';
COMMENT ON TABLE "public"."config_info" IS 'config_info';

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS "public"."config_info_aggr";
CREATE TABLE "public"."config_info_aggr" (
  "id" serial8,
  "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "datum_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "gmt_modified" timestamp(6) NOT NULL,
  "app_name" varchar(128) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "public"."config_info_aggr"."id" IS 'id';
COMMENT ON COLUMN "public"."config_info_aggr"."data_id" IS 'data_id';
COMMENT ON COLUMN "public"."config_info_aggr"."group_id" IS 'group_id';
COMMENT ON COLUMN "public"."config_info_aggr"."datum_id" IS 'datum_id';
COMMENT ON COLUMN "public"."config_info_aggr"."content" IS '内容';
COMMENT ON COLUMN "public"."config_info_aggr"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "public"."config_info_aggr"."tenant_id" IS '租户字段';
COMMENT ON TABLE "public"."config_info_aggr" IS '增加租户字段';

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS "public"."config_info_beta";
CREATE TABLE "public"."config_info_beta" (
  "id" serial8,
  "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "app_name" varchar(128) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "beta_ips" varchar(1024) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "md5" varchar(32) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "gmt_create" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "gmt_modified" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "src_user" text COLLATE "pg_catalog"."default",
  "src_ip" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "public"."config_info_beta"."id" IS 'id';
COMMENT ON COLUMN "public"."config_info_beta"."data_id" IS 'data_id';
COMMENT ON COLUMN "public"."config_info_beta"."group_id" IS 'group_id';
COMMENT ON COLUMN "public"."config_info_beta"."app_name" IS 'app_name';
COMMENT ON COLUMN "public"."config_info_beta"."content" IS 'content';
COMMENT ON COLUMN "public"."config_info_beta"."beta_ips" IS 'betaIps';
COMMENT ON COLUMN "public"."config_info_beta"."md5" IS 'md5';
COMMENT ON COLUMN "public"."config_info_beta"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "public"."config_info_beta"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "public"."config_info_beta"."src_user" IS 'source user';
COMMENT ON COLUMN "public"."config_info_beta"."src_ip" IS 'source ip';
COMMENT ON COLUMN "public"."config_info_beta"."tenant_id" IS '租户字段';
COMMENT ON TABLE "public"."config_info_beta" IS 'config_info_beta';

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."config_info_tag";
CREATE TABLE "public"."config_info_tag" (
  "id" serial8,
  "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "tag_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "app_name" varchar(128) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "md5" varchar(32) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "gmt_create" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "gmt_modified" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "src_user" text COLLATE "pg_catalog"."default",
  "src_ip" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
COMMENT ON COLUMN "public"."config_info_tag"."id" IS 'id';
COMMENT ON COLUMN "public"."config_info_tag"."data_id" IS 'data_id';
COMMENT ON COLUMN "public"."config_info_tag"."group_id" IS 'group_id';
COMMENT ON COLUMN "public"."config_info_tag"."tenant_id" IS '租户字段';
COMMENT ON COLUMN "public"."config_info_tag"."tag_id" IS 'tag_id';
COMMENT ON COLUMN "public"."config_info_tag"."app_name" IS 'app_name';
COMMENT ON COLUMN "public"."config_info_tag"."content" IS 'content';
COMMENT ON COLUMN "public"."config_info_tag"."md5" IS 'md5';
COMMENT ON COLUMN "public"."config_info_tag"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "public"."config_info_tag"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "public"."config_info_tag"."src_user" IS 'source user';
COMMENT ON COLUMN "public"."config_info_tag"."src_ip" IS 'source ip';
COMMENT ON TABLE "public"."config_info_tag" IS 'config_info_tag';

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."config_tags_relation";
CREATE TABLE "public"."config_tags_relation" (
  "id" int8 NOT NULL,
  "tag_name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "tag_type" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "nid" serial8
)
;
COMMENT ON COLUMN "public"."config_tags_relation"."id" IS 'id';
COMMENT ON COLUMN "public"."config_tags_relation"."tag_name" IS 'tag_name';
COMMENT ON COLUMN "public"."config_tags_relation"."tag_type" IS 'tag_type';
COMMENT ON COLUMN "public"."config_tags_relation"."data_id" IS 'data_id';
COMMENT ON COLUMN "public"."config_tags_relation"."group_id" IS 'group_id';
COMMENT ON COLUMN "public"."config_tags_relation"."tenant_id" IS 'tenant_id';
COMMENT ON TABLE "public"."config_tags_relation" IS 'config_tag_relation';

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS "public"."group_capacity";
CREATE TABLE "public"."group_capacity" (
  "id" serial8,
  "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "quota" int4 NOT NULL DEFAULT 0,
  "usage" int4 NOT NULL DEFAULT 0,
  "max_size" int4 NOT NULL DEFAULT 0,
  "max_aggr_count" int4 NOT NULL DEFAULT 0,
  "max_aggr_size" int4 NOT NULL DEFAULT 0,
  "max_history_count" int4 NOT NULL DEFAULT 0,
  "gmt_create" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "gmt_modified" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone
)
;
COMMENT ON COLUMN "public"."group_capacity"."id" IS '主键ID';
COMMENT ON COLUMN "public"."group_capacity"."group_id" IS 'Group ID，空字符表示整个集群';
COMMENT ON COLUMN "public"."group_capacity"."quota" IS '配额，0表示使用默认值';
COMMENT ON COLUMN "public"."group_capacity"."usage" IS '使用量';
COMMENT ON COLUMN "public"."group_capacity"."max_size" IS '单个配置大小上限，单位为字节，0表示使用默认值';
COMMENT ON COLUMN "public"."group_capacity"."max_aggr_count" IS '聚合子配置最大个数，，0表示使用默认值';
COMMENT ON COLUMN "public"."group_capacity"."max_aggr_size" IS '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值';
COMMENT ON COLUMN "public"."group_capacity"."max_history_count" IS '最大变更历史数量';
COMMENT ON COLUMN "public"."group_capacity"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "public"."group_capacity"."gmt_modified" IS '修改时间';
COMMENT ON TABLE "public"."group_capacity" IS '集群、各Group容量信息表';

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."his_config_info";
CREATE TABLE "public"."his_config_info" (
  "id" int8 NOT NULL,
  "nid" serial8,
  "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "app_name" varchar(128) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "md5" varchar(32) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "gmt_create" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "gmt_modified" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "src_user" text COLLATE "pg_catalog"."default",
  "src_ip" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "op_type" char(10) COLLATE "pg_catalog"."default" DEFAULT NULL::bpchar,
  "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "public"."his_config_info"."app_name" IS 'app_name';
COMMENT ON COLUMN "public"."his_config_info"."tenant_id" IS '租户字段';
COMMENT ON TABLE "public"."his_config_info" IS '多租户改造';

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions";
CREATE TABLE "public"."permissions" (
  "role" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "resource" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "action" varchar(8) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
  "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "role" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS "public"."tenant_capacity";
CREATE TABLE "public"."tenant_capacity" (
  "id" serial8,
  "tenant_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "quota" int4 NOT NULL DEFAULT 0,
  "usage" int4 NOT NULL DEFAULT 0,
  "max_size" int4 NOT NULL DEFAULT 0,
  "max_aggr_count" int4 NOT NULL DEFAULT 0,
  "max_aggr_size" int4 NOT NULL DEFAULT 0,
  "max_history_count" int4 NOT NULL DEFAULT 0,
  "gmt_create" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone,
  "gmt_modified" timestamp(6) NOT NULL DEFAULT '2010-05-05 00:00:00'::timestamp without time zone
)
;
COMMENT ON COLUMN "public"."tenant_capacity"."id" IS '主键ID';
COMMENT ON COLUMN "public"."tenant_capacity"."tenant_id" IS 'Tenant ID';
COMMENT ON COLUMN "public"."tenant_capacity"."quota" IS '配额，0表示使用默认值';
COMMENT ON COLUMN "public"."tenant_capacity"."usage" IS '使用量';
COMMENT ON COLUMN "public"."tenant_capacity"."max_size" IS '单个配置大小上限，单位为字节，0表示使用默认值';
COMMENT ON COLUMN "public"."tenant_capacity"."max_aggr_count" IS '聚合子配置最大个数';
COMMENT ON COLUMN "public"."tenant_capacity"."max_aggr_size" IS '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值';
COMMENT ON COLUMN "public"."tenant_capacity"."max_history_count" IS '最大变更历史数量';
COMMENT ON COLUMN "public"."tenant_capacity"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "public"."tenant_capacity"."gmt_modified" IS '修改时间';
COMMENT ON TABLE "public"."tenant_capacity" IS '租户容量信息表';

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."tenant_info";
CREATE TABLE "public"."tenant_info" (
  "id" serial8,
  "kp" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "tenant_name" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "tenant_desc" varchar(256) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_source" varchar(32) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "gmt_create" int8 NOT NULL,
  "gmt_modified" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."tenant_info"."id" IS 'id';
COMMENT ON COLUMN "public"."tenant_info"."kp" IS 'kp';
COMMENT ON COLUMN "public"."tenant_info"."tenant_id" IS 'tenant_id';
COMMENT ON COLUMN "public"."tenant_info"."tenant_name" IS 'tenant_name';
COMMENT ON COLUMN "public"."tenant_info"."tenant_desc" IS 'tenant_desc';
COMMENT ON COLUMN "public"."tenant_info"."create_source" IS 'create_source';
COMMENT ON COLUMN "public"."tenant_info"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "public"."tenant_info"."gmt_modified" IS '修改时间';
COMMENT ON TABLE "public"."tenant_info" IS 'tenant_info';

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "enabled" bool NOT NULL
)
;

-- ----------------------------
-- Uniques structure for table config_info
-- ----------------------------
ALTER TABLE "public"."config_info" ADD CONSTRAINT "uk_configinfo_datagrouptenant" UNIQUE ("data_id", "group_id", "tenant_id");

-- ----------------------------
-- Primary Key structure for table config_info
-- ----------------------------
ALTER TABLE "public"."config_info" ADD CONSTRAINT "config_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table config_info_aggr
-- ----------------------------
ALTER TABLE "public"."config_info_aggr" ADD CONSTRAINT "uk_configinfoaggr_datagrouptenantdatum" UNIQUE ("data_id", "group_id", "tenant_id", "datum_id");

-- ----------------------------
-- Primary Key structure for table config_info_aggr
-- ----------------------------
ALTER TABLE "public"."config_info_aggr" ADD CONSTRAINT "config_info_aggr_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table config_info_beta
-- ----------------------------
ALTER TABLE "public"."config_info_beta" ADD CONSTRAINT "uk_configinfobeta_datagrouptenant" UNIQUE ("data_id", "group_id", "tenant_id");

-- ----------------------------
-- Primary Key structure for table config_info_beta
-- ----------------------------
ALTER TABLE "public"."config_info_beta" ADD CONSTRAINT "config_info_beta_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table config_info_tag
-- ----------------------------
ALTER TABLE "public"."config_info_tag" ADD CONSTRAINT "uk_configinfotag_datagrouptenanttag" UNIQUE ("data_id", "group_id", "tenant_id", "tag_id");

-- ----------------------------
-- Primary Key structure for table config_info_tag
-- ----------------------------
ALTER TABLE "public"."config_info_tag" ADD CONSTRAINT "config_info_tag_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table config_tags_relation
-- ----------------------------
ALTER TABLE "public"."config_tags_relation" ADD CONSTRAINT "uk_configtagrelation_configidtag" UNIQUE ("id", "tag_name", "tag_type");

-- ----------------------------
-- Primary Key structure for table config_tags_relation
-- ----------------------------
ALTER TABLE "public"."config_tags_relation" ADD CONSTRAINT "config_tags_relation_pkey" PRIMARY KEY ("nid");

-- ----------------------------
-- Uniques structure for table group_capacity
-- ----------------------------
ALTER TABLE "public"."group_capacity" ADD CONSTRAINT "uk_group_id" UNIQUE ("group_id");

-- ----------------------------
-- Checks structure for table group_capacity
-- ----------------------------
ALTER TABLE "public"."group_capacity" ADD CONSTRAINT "group_capacity_max_aggr_count_check" CHECK (max_aggr_count >= 0);
ALTER TABLE "public"."group_capacity" ADD CONSTRAINT "group_capacity_quota_check" CHECK (quota >= 0);
ALTER TABLE "public"."group_capacity" ADD CONSTRAINT "group_capacity_max_history_count_check" CHECK (max_history_count >= 0);
ALTER TABLE "public"."group_capacity" ADD CONSTRAINT "group_capacity_max_aggr_size_check" CHECK (max_aggr_size >= 0);
ALTER TABLE "public"."group_capacity" ADD CONSTRAINT "group_capacity_usage_check" CHECK (usage >= 0);
ALTER TABLE "public"."group_capacity" ADD CONSTRAINT "group_capacity_max_size_check" CHECK (max_size >= 0);

-- ----------------------------
-- Primary Key structure for table group_capacity
-- ----------------------------
ALTER TABLE "public"."group_capacity" ADD CONSTRAINT "group_capacity_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table his_config_info
-- ----------------------------
ALTER TABLE "public"."his_config_info" ADD CONSTRAINT "his_config_info_id_check" CHECK (id >= 0);
ALTER TABLE "public"."his_config_info" ADD CONSTRAINT "his_config_info_nid_check" CHECK (nid >= 0);

-- ----------------------------
-- Primary Key structure for table his_config_info
-- ----------------------------
ALTER TABLE "public"."his_config_info" ADD CONSTRAINT "his_config_info_pkey" PRIMARY KEY ("nid");

-- ----------------------------
-- Uniques structure for table tenant_capacity
-- ----------------------------
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "uk_tenant_id" UNIQUE ("tenant_id");

-- ----------------------------
-- Checks structure for table tenant_capacity
-- ----------------------------
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "tenant_capacity_max_size_check" CHECK (max_size >= 0);
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "tenant_capacity_id_check" CHECK (id >= 0);
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "tenant_capacity_max_aggr_size_check" CHECK (max_aggr_size >= 0);
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "tenant_capacity_max_history_count_check" CHECK (max_history_count >= 0);
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "tenant_capacity_max_aggr_count_check" CHECK (max_aggr_count >= 0);
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "tenant_capacity_quota_check" CHECK (quota >= 0);
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "tenant_capacity_usage_check" CHECK (usage >= 0);

-- ----------------------------
-- Primary Key structure for table tenant_capacity
-- ----------------------------
ALTER TABLE "public"."tenant_capacity" ADD CONSTRAINT "tenant_capacity_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table tenant_info
-- ----------------------------
ALTER TABLE "public"."tenant_info" ADD CONSTRAINT "uk_tenant_info_kptenantid" UNIQUE ("kp", "tenant_id");

-- ----------------------------
-- Primary Key structure for table tenant_info
-- ----------------------------
ALTER TABLE "public"."tenant_info" ADD CONSTRAINT "tenant_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("username");


INSERT INTO users (username, password, enabled) VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', TRUE);

INSERT INTO roles (username, role) VALUES ('nacos', 'ROLE_ADMIN');
