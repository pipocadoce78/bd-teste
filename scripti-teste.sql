create table professor (
  id_professor serial primary key,
  nome         varchar(100) not null,
  email        varchar(100) not null unique,
  criado_em    timestamp without time zone null default CURRENT_TIMESTAMP  
);

create table turma (
  id_turma     serial primary key,
  nome         varchar(100) not null,
  id_professor integer not null,
  criado_em    timestamp without time zone null default CURRENT_TIMESTAMP,  
  constraint   fk_turma_professor foreign key (id_professor) 
               references professor (id_professor)               
);
