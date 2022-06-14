
/*==============================================================*/
/* Table: DIM_OBSERVACION                                       */
/*==============================================================*/
create table DIM_OBSERVACION
(
   ID_CALIFICACION      int not null,
   CALIFICACION         varchar(20),
   primary key (ID_CALIFICACION)
);

/*==============================================================*/
/* Table: DIM_SERVICIO                                          */
/*==============================================================*/
create table DIM_SERVICIO
(
   ID_SERVICIO          int not null,
   TIPO_SERVICIO        varchar(40),
   primary key (ID_SERVICIO)
);

/*==============================================================*/
/* Table: DIM_TIEMPO                                            */
/*==============================================================*/
create table DIM_TIEMPO
(
   FECHA                date not null,
   ANIO                 int,
   MES                  int,
   primary key (FECHA)
);

/*==============================================================*/
/* Table: HECHO                                                 */
/*==============================================================*/
create table HECHO
(
   FECHA                date not null,
   ID_CALIFICACION      int not null,
   ID_SERVICIO          int not null,
   HECHO                varchar(20),
   primary key (FECHA, ID_CALIFICACION, ID_SERVICIO)
);

alter table HECHO add constraint FK_RELATIONSHIP_1 foreign key (FECHA)
      references DIM_TIEMPO (FECHA) on delete restrict on update restrict;

alter table HECHO add constraint FK_RELATIONSHIP_2 foreign key (ID_CALIFICACION)
      references DIM_OBSERVACION (ID_CALIFICACION) on delete restrict on update restrict;

alter table HECHO add constraint FK_RELATIONSHIP_3 foreign key (ID_SERVICIO)
      references DIM_SERVICIO (ID_SERVICIO) on delete restrict on update restrict;

