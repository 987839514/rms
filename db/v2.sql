alter table t_house add intent_mode varchar(64) comment '������������';

alter table t_house add is_feature varchar(64) comment '�Ƿ�ѡ��Դ';
alter table t_room add is_feature varchar(64) comment '�Ƿ�ѡ��Դ';

update t_house set is_feature='0' where is_feature is null;
update t_room set is_feature='0' where is_feature is null;