/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0      bdheritage                     */
/* Date de création :  3/2/2019 6:04:13 PM                      */
/*==============================================================*/


drop table if exists AYANTDROIT;

drop table if exists BIENS;

drop table if exists ECOLE;

drop table if exists HERITAGE;

drop table if exists HERITIER;

drop table if exists REGLE;

drop table if exists SOURCE;

drop table if exists UTILISATEUR;

/*==============================================================*/
/* Table : AYANTDROIT                                           */
/*==============================================================*/
create table AYANTDROIT
(
   ADRID                int not null,
   NOMENCLATUREID       int,
   UTILISATEURID        int not null,
   DESIGNATION          varchar(20),
   IMAGEADR             varchar(20),
   DESCRIPTION          varchar(50),
   DATECREATION         datetime,
   TYPEHERITIER         varchar(20),
   primary key (ADRID)
);

/*==============================================================*/
/* Table : BIENS                                                */
/*==============================================================*/
create table BIENS
(
   BIENID               int not null,
   HERITAGEID           int,
   DESCRIPTION          varchar(50),
   EVALUATEUR           varchar(20),
   AFFECTATION          varchar(20),
   primary key (BIENID)
);

/*==============================================================*/
/* Table : ECOLE                                                */
/*==============================================================*/
create table ECOLE
(
   ECOLEID              int not null,
   HERITAGEID           int not null,
   REGLEID              int not null,
   NOM                  varchar(15),
   DESCRIPTION          varchar(50),
   primary key (ECOLEID)
);

/*==============================================================*/
/* Table : HERITAGE                                             */
/*==============================================================*/
create table HERITAGE
(
   HERITAGEID           int not null,
   NOMENCLATUREID       int not null,
   DESCRIPTION          varchar(50),
   DATE_DECES           datetime,
   DATE_HERITAGE        datetime,
   ECOLEID              int,
   MONTANT              float(10),
   primary key (HERITAGEID)
);

/*==============================================================*/
/* Table : HERITIER                                             */
/*==============================================================*/
create table HERITIER
(
   NOMENCLATUREID       int not null,
   DESCRIPTION          varchar(50),
   CODE                 int,
   ILLLUSTRATION        bool,
   primary key (NOMENCLATUREID)
);

/*==============================================================*/
/* Table : REGLE                                                */
/*==============================================================*/
create table REGLE
(
   REGLEID              int not null,
   SOURCEID             int not null,
   DESCRIPTION          varchar(50),
   ECOLES               varchar(4),
   COMMENTAIRE          varchar(20),
   primary key (REGLEID)
);

/*==============================================================*/
/* Table : SOURCE                                               */
/*==============================================================*/
create table SOURCE
(
   SOURCEID             int not null,
   DESIGNATION          varchar(20),
   HIERARCHIEID         varchar(20),
   COMMENTAIRE          varchar(20),
   primary key (SOURCEID)
);

/*==============================================================*/
/* Table : UTILISATEUR                                          */
/*==============================================================*/
create table UTILISATEUR
(
   UTILISATEURID        int not null,
   DESIGNATION          varchar(20),
   EMAIL                varchar(30),
   TYPEUTILISATEUR      varchar(40),
   primary key (UTILISATEURID)
);

alter table AYANTDROIT add constraint FK_ASSOCIER foreign key (UTILISATEURID)
      references UTILISATEUR (UTILISATEURID) ;

alter table AYANTDROIT add constraint FK_ETRE foreign key (NOMENCLATUREID)
      references HERITIER (NOMENCLATUREID);

alter table BIENS add constraint FK_AVOIR foreign key (HERITAGEID)
      references HERITAGE (HERITAGEID) ;

alter table ECOLE add constraint FK_APPLIQUER foreign key (REGLEID)
      references REGLE (REGLEID);

alter table ECOLE add constraint FK_REFERER foreign key (HERITAGEID)
      references HERITAGE (HERITAGEID);

alter table HERITAGE add constraint FK_HERITER foreign key (NOMENCLATUREID)
      references HERITIER (NOMENCLATUREID) ;

alter table REGLE add constraint FK_UTILISER foreign key (SOURCEID)
      references SOURCE (SOURCEID);

