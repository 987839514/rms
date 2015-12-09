alter table t_house add intent_mode varchar(64) comment '������������';

alter table t_house add is_feature varchar(64) comment '�Ƿ�ѡ��Դ';
alter table t_room add is_feature varchar(64) comment '�Ƿ�ѡ��Դ';

update t_house set is_feature='0' where is_feature is null;
update t_room set is_feature='0' where is_feature is null;

alter table t_house add rental float comment '�������';
alter table t_room add rental float comment '�������';

alter table t_house add short_desc varchar(255) comment '����';
alter table t_room add short_desc varchar(255) comment '����';

alter table t_house add short_location varchar(255) comment '��ַ����';
alter table t_room add short_location varchar(255) comment '��ַ����';

alter table t_house add pay_way varchar(2) comment '���ʽ';
alter table t_room add pay_way varchar(2) comment '���ʽ';

insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('356','0','����Ѻһ','rent_fee_type','���ʽ','1','0','1',now(),'1',now(),NULL,'0');
insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('357','1','����Ѻ��','rent_fee_type','���ʽ','2','0','1',now(),'1',now(),NULL,'0');

insert into sys_menu (id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag) values('314','113','0,1,113,','ԤԼ����','50106','/contract/book',NULL,NULL,'1',NULL,'1',now(),'1',now(),NULL,'0');
insert into sys_menu (id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag) values('315','314','0,1,96,314','�鿴','30',NULL,NULL,NULL,'0','contract:contractBook:view','1',now(),'1',now(),NULL,'0');
insert into sys_menu (id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag) values('316','314','0,1,96,314','�޸�','60',NULL,NULL,NULL,'0','contract:contractBook:edit','1',now(),'1',now(),NULL,'0');

insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('358','0','�ܼ�ȷ����','book_status','ԤԼ״̬','1','0','1',now(),'1',now(),NULL,'0');
insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('359','1','ԤԼ�ɹ�','book_status','ԤԼ״̬','2','0','1',now(),'1',now(),NULL,'0');

insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('360','1','����ϵͳ','data_source','������Դ','1','0','1',now(),'1',now(),NULL,'0');
insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('361','2','APP','data_source','������Դ','2','0','1',now(),'1',now(),NULL,'0');

insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('362','1','δ֧��','order_status','����״̬','1','0','1',now(),'1',now(),NULL,'0');
insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('363','2','��֧��','order_status','����״̬','2','0','1',now(),'1',now(),NULL,'0');

insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('364','0','�ܼ�ȷ����','booked_status','Ԥ��״̬','1','0','1',now(),'1',now(),NULL,'0');
insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('365','1','Ԥ���ɹ�','booked_status','Ԥ��״̬','2','0','1',now(),'1',now(),NULL,'0');
insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('366','2','��֧��','booked_status','Ԥ��״̬','3','0','1',now(),'1',now(),NULL,'0');

insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('367','0','�ܼ�ȷ����','sign_status','ǩԼ״̬','1','0','1',now(),'1',now(),NULL,'0');
insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('368','1','ǩԼ�ɹ�','sign_status','ǩԼ״̬','2','0','1',now(),'1',now(),NULL,'0');
insert into sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag) values('369','2','��֧��','sign_status','ǩԼ״̬','3','0','1',now(),'1',now(),NULL,'0');

create table t_contract_book
(
	ID                   varchar(64) NOT NULL,
	user_id              varchar(64),
	house_id             varchar(64),
	room_id              varchar(64),
	user_name            varchar(64),
	user_phone           varchar(64),
	user_gender          varchar(64),
	book_date            DATETIME,
	book_status          varchar(64),
	sales_id             varchar(64),
	CREATE_BY            VARCHAR(64) COMMENT '������',
  CREATE_DATE          DATETIME 	COMMENT '����ʱ��',
  UPDATE_BY            VARCHAR(64) COMMENT '������',
  UPDATE_DATE          TIMESTAMP COMMENT '����ʱ��',
  REMARKS              VARCHAR(255) COMMENT '��ע��Ϣ',
  DEL_FLAG             CHAR(1) DEFAULT '0' NOT NULL COMMENT 'ɾ�����',
	primary key (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci comment = 'ԤԼ������Ϣ';

ALTER TABLE T_DEPOSIT_AGREEMENT ADD data_source VARCHAR(64) default '1' COMMENT '������Դ ����ϵͳ/APP';
update T_DEPOSIT_AGREEMENT set data_source = '1';

create table t_payment_order
(
	ID                   varchar(64) NOT NULL,
	order_id             varchar(64),
	order_amount         float,
	order_date           DATETIME,
	order_status         varchar(2),
	trade_id             varchar(64) comment '������ID',
	trans_id             varchar(64) comment '֧�����׵���',
	trans_date           DATETIME,
	CREATE_BY            VARCHAR(64) COMMENT '������',
  CREATE_DATE          DATETIME 	COMMENT '����ʱ��',
  UPDATE_BY            VARCHAR(64) COMMENT '������',
  UPDATE_DATE          TIMESTAMP COMMENT '����ʱ��',
  REMARKS              VARCHAR(255) COMMENT '��ע��Ϣ',
  DEL_FLAG             CHAR(1) DEFAULT '0' NOT NULL COMMENT 'ɾ�����',
	primary key (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci comment = '֧��������Ϣ';

ALTER TABLE T_RENT_CONTRACT ADD data_source VARCHAR(64) default '1' COMMENT '������Դ ����ϵͳ/APP';
update T_RENT_CONTRACT set data_source = '1';


alter table t_attachment add BIZ_ID varchar(64) comment 'ҵ��ID';

drop table if exists T_MESSAGE;
/* Create Tables */
create table T_MESSAGE
(
   ID                   varchar(64) NOT NULL,
   TITLE    	 varchar(200) comment '��Ϣ����',
   CONTENT           varchar(500) comment '��Ϣ����',
   TYPE	 VARCHAR(10) comment  '��Ϣ����',
   SENDER	 VARCHAR(30) COMMENT  '������',
   RECEIVER	 VARCHAR(30)  COMMENT  '������',
   STATUS	 VARCHAR(10) COMMENT  '״̬',
   CREATE_BY            VARCHAR(64) COMMENT '������',
   CREATE_DATE          DATETIME COMMENT '����ʱ��',
   UPDATE_BY            VARCHAR(64) COMMENT '������',
   UPDATE_DATE          TIMESTAMP COMMENT '����ʱ��',
   REMARKS              VARCHAR(255) COMMENT '��ע��Ϣ',
   DEL_FLAG             CHAR(1) DEFAULT '0' NOT NULL COMMENT 'ɾ�����',
   primary key (ID)
) comment = '��Ϣ��';

drop table if exists T_REPAIRS;
/* Create Tables */
create table T_REPAIRS
(
   ID                   varchar(64) NOT NULL,
   USER_ID    	 varchar(20) comment '�û�ID, APP�û�Ϊע���ֻ���',
   USER_MOBILE          varchar(64) comment '������д����ϵ�ֻ���',
   ROOM_ID	 VARCHAR(64) COMMENT '�����',
   DESCRIPTION	 VARCHAR(18) comment  '����',
   STEWARD      	 VARCHAR(1)  COMMENT  '�ܼ�',
   STEWARD_MOBILE	 VARCHAR(10) COMMENT  '�ܼҵ绰',
   STATUS	 INT	 COMMENT  '����״̬',
   CREATE_BY            VARCHAR(64) COMMENT '������',
   CREATE_DATE          DATETIME COMMENT '����ʱ��',
   UPDATE_BY            VARCHAR(64) COMMENT '������',
   UPDATE_DATE          TIMESTAMP COMMENT '����ʱ��',
   REMARKS              VARCHAR(255) COMMENT '��ע��Ϣ',
   DEL_FLAG             CHAR(1) DEFAULT '0' NOT NULL COMMENT 'ɾ�����',
   primary key (ID)
) comment = '���޼�¼';
