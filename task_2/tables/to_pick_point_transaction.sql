create table public.to_pick_point_transaction
(
    to_pick_point_transaction_id integer not null
    constraint to_pick_point_transaction_pk primary key,
    count                        integer,
    container_id_f_key           integer
    constraint to_pick_point_transaction_container_container_id_fk references public.container
);

alter table public.to_pick_point_transaction
    add constraint to_pick_point_transaction_pk
        primary key (to_pick_point_transaction_id);

alter table public.to_pick_point_transaction
    add constraint to_pick_point_transaction_container_container_id_fk
        foreign key (container_id_f_key) references public.container;
        
create unique index to_pick_point_transaction_pk
    on public.to_pick_point_transaction (to_pick_point_transaction_id);
