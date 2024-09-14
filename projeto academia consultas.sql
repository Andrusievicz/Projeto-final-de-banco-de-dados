use projetoacademia;
select * from cliente order by Nome ASC;
select * from cliente order by ID_cliente ASC;
select * from aulas order by ID_Aula ASC;
select * from professores order by ID_Professor ASC;
select * from agenda order by id_aula ASC;
select * from agenda inner join aulas on aulas.ID_Aula=Agenda.ID_Aula;
drop trigger vaga_aula;

delimiter $
create trigger vaga_aula after insert
on Agenda
for each row
begin
update Aulas set Capacidade=Capacidade-1
where Aulas.ID_Aula=new.ID_Aula;
end $
delimiter ;

drop trigger libera_vaga;
delimiter $
create trigger libera_vaga after delete
on Agenda
for each row
begin
update Aulas set Capacidade=Capacidade+1
where Aulas.ID_Aula=old.ID_Aula;
end $
delimiter ;

delete from Agenda where ID_Agenda=36;

select min(ID_Cliente) from Cliente;
select min(ID_Aula) From Aulas;

select max(ID_Professor) from Professores;
select max(ID_Agenda) from Agenda;

select * from Cliente where nome like '%a%';
select * from Professores where nome like 'a%';
select * from Cliente where nome like '%a';
