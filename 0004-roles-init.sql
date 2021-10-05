delete from "USER";
delete from "USERS_ROLES_RELATION";
delete from "ROLES";
--Noeud BDF
insert into "ROLES" (role) values ('READER_BDF');
insert into "ROLES" (role) values ('WRITER_BDF');
insert into "ROLES" (role) values ('CONTROLLER_BDF');
insert into "ROLES" (role) values ('CLS_BDF');
insert into "ROLES" (role) values ('CLS_INIT_BDF');
insert into "ROLES" (role) values ('ADMIN_BDF');

--Noeud PBI
insert into "ROLES" (role) values ('READER_PBI');
insert into "ROLES" (role) values ('WRITER_PBI');
insert into "ROLES" (role) values ('CONTROLLER_PBI');
insert into "ROLES" (role) values ('CLS_PBI');
insert into "ROLES" (role) values ('CLS_INIT_PBI');

ALTER SEQUENCE "USER_id_seq" RESTART WITH 1;

-- BDF USERS AND ROLES ATTRIBUTION
insert into "USER" (username, password) values ('clsinitbdf', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (1,'CLS_INIT_BDF');

insert into "USER" (username, password) values ('readerbdf', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (2,'READER_BDF');

insert into "USER" (username, password) values ('writerbdf', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (3,'WRITER_BDF');

insert into "USER" (username, password) values ('controllerbdf', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (4,'CONTROLLER_BDF');

insert into "USER" (username, password) values ('clsbdf', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (5,'CLS_BDF');

insert into "USER" (username, password) values ('adminbdf', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (6,'ADMIN_BDF');

-- PBI USERS AND ROLES ATTRIBUTION
insert into "USER" (username, password) values ('readerpbi', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (7,'READER_PBI');

insert into "USER" (username, password) values ('writerpbi', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (8,'WRITER_PBI');

insert into "USER" (username, password) values ('controllerpbi', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (9,'CONTROLLER_PBI');

insert into "USER" (username, password) values ('clspbi', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (10,'CLS_PBI');

insert into "USER" (username, password) values ('clsinitpbi', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (11,'CLS_INIT_PBI');

insert into "USER" (username, password) values ('acw', '$2a$10$5o/FndlBkTyzH.fIDMQXc.Dl/05/j2mRfw63aoYpTTaqcWuRuWYh2');
insert into "USERS_ROLES_RELATION" (user_id,role) values (12,'ADMIN_BDF');
insert into "USERS_ROLES_RELATION" (user_id,role) values (12,'CONTROLLER_BDF');
insert into "USERS_ROLES_RELATION" (user_id,role) values (12,'WRITER_BDF');

update "USER" set force_password_update='f';