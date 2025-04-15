--liquibase formatted sql

--changeset marketplace-api:0001_ddl_create_table_customer
create table customer (
		"id" bigserial not null, -- Must be "bigserial" so postgres handles the ID assignment by itself
		"name" varchar(30) not null,
		constraint pk_customer primary key (id)
);
--rollback drop table todo_task;