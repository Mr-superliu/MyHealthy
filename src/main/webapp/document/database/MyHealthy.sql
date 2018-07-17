/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2018/7/13 22:28:19                           */
/*==============================================================*/

use MyHealthy
if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('answer') and o.name = 'FK_ANSWER_ANSWERQUE_QUESTION')
alter table answer
   drop constraint FK_ANSWER_ANSWERQUE_QUESTION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('article') and o.name = 'FK_ARTICLE_ISSUEARTI_USER')
alter table article
   drop constraint FK_ARTICLE_ISSUEARTI_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('blacklist') and o.name = 'FK_BLACKLIS_BLACKED_USER')
alter table blacklist
   drop constraint FK_BLACKLIS_BLACKED_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('chat') and o.name = 'FK_CHAT_STORECHAT_USER')
alter table chat
   drop constraint FK_CHAT_STORECHAT_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('comment') and o.name = 'FK_COMMENT_COMMENTAR_ARTICLE')
alter table comment
   drop constraint FK_COMMENT_COMMENTAR_ARTICLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('comment') and o.name = 'FK_COMMENT_COMMENTVI_VIDEO')
alter table comment
   drop constraint FK_COMMENT_COMMENTVI_VIDEO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('concern') and o.name = 'FK_CONCERN_CONCERN_USER')
alter table concern
   drop constraint FK_CONCERN_CONCERN_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('interest') and o.name = 'FK_INTEREST_CREATEINT_USER')
alter table interest
   drop constraint FK_INTEREST_CREATEINT_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('interest') and o.name = 'FK_INTEREST_MANAGEMEM_JOIN_INT')
alter table interest
   drop constraint FK_INTEREST_MANAGEMEM_JOIN_INT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('personal_information') and o.name = 'FK_PERSONAL_RELATIONS_USER')
alter table personal_information
   drop constraint FK_PERSONAL_RELATIONS_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('question') and o.name = 'FK_QUESTION_MAKEQUEST_USER')
alter table question
   drop constraint FK_QUESTION_MAKEQUEST_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('video') and o.name = 'FK_VIDEO_ISSUEVIDE_USER')
alter table video
   drop constraint FK_VIDEO_ISSUEVIDE_USER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('answer')
            and   name  = 'answerquestion_FK'
            and   indid > 0
            and   indid < 255)
   drop index answer.answerquestion_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('answer')
            and   type = 'U')
   drop table answer
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('article')
            and   name  = 'issuearticle_FK'
            and   indid > 0
            and   indid < 255)
   drop index article.issuearticle_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('article')
            and   type = 'U')
   drop table article
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('blacklist')
            and   name  = 'blacked_FK'
            and   indid > 0
            and   indid < 255)
   drop index blacklist.blacked_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('blacklist')
            and   type = 'U')
   drop table blacklist
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('chat')
            and   name  = 'storechat_FK'
            and   indid > 0
            and   indid < 255)
   drop index chat.storechat_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('chat')
            and   type = 'U')
   drop table chat
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('comment')
            and   name  = 'commentvideo_FK'
            and   indid > 0
            and   indid < 255)
   drop index comment.commentvideo_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('comment')
            and   name  = 'commentarticle_FK'
            and   indid > 0
            and   indid < 255)
   drop index comment.commentarticle_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('comment')
            and   type = 'U')
   drop table comment
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('concern')
            and   name  = 'concern_FK'
            and   indid > 0
            and   indid < 255)
   drop index concern.concern_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('concern')
            and   type = 'U')
   drop table concern
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('interest')
            and   name  = 'managemember_FK'
            and   indid > 0
            and   indid < 255)
   drop index interest.managemember_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('interest')
            and   name  = 'createinterestgroup_FK'
            and   indid > 0
            and   indid < 255)
   drop index interest.createinterestgroup_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('interest')
            and   type = 'U')
   drop table interest
go

if exists (select 1
            from  sysobjects
           where  id = object_id('join_interest_group')
            and   type = 'U')
   drop table join_interest_group
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('personal_information')
            and   name  = 'Relationship_FK'
            and   indid > 0
            and   indid < 255)
   drop index personal_information.Relationship_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('personal_information')
            and   type = 'U')
   drop table personal_information
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('question')
            and   name  = 'makequestion_FK'
            and   indid > 0
            and   indid < 255)
   drop index question.makequestion_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('question')
            and   type = 'U')
   drop table question
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"user"')
            and   type = 'U')
   drop table "user"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('video')
            and   name  = 'issuevideo_FK'
            and   indid > 0
            and   indid < 255)
   drop index video.issuevideo_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('video')
            and   type = 'U')
   drop table video
go

/*==============================================================*/
/* Table: answer                                                */
/*==============================================================*/
create table answer (
   answer_id            int                  not null,
   question_id          bigint               null,
   answer_content       varchar(8000)        not null,
   answer_time          varchar(8000)        not null,
   answer_count         int                  not null,
   answer_adopt         varchar(8000)        not null,
   constraint PK_ANSWER primary key (answer_id)
)
go

/*==============================================================*/
/* Index: answerquestion_FK                                     */
/*==============================================================*/




create nonclustered index answerquestion_FK on answer (question_id ASC)
go

/*==============================================================*/
/* Table: article                                               */
/*==============================================================*/
create table article (
   article_id           int                  not null,
   user_id              varchar(8000)        not null,
   article_create_time  varchar(8000)        not null,
   article_title        varchar(8000)        not null,
   article_content      varchar(8000)        not null,
   constraint PK_ARTICLE primary key (article_id)
)
go

/*==============================================================*/
/* Index: issuearticle_FK                                       */
/*==============================================================*/




create nonclustered index issuearticle_FK on article (user_id ASC)
go

/*==============================================================*/
/* Table: blacklist                                             */
/*==============================================================*/
create table blacklist (
   user_id              varchar(8000)        not null,
   use_user_id          varchar(8000)        null,
   black_user_id        varchar(8000)        not null,
   constraint PK_BLACKLIST primary key (user_id)
)
go

/*==============================================================*/
/* Index: blacked_FK                                            */
/*==============================================================*/




create nonclustered index blacked_FK on blacklist (use_user_id ASC)
go

/*==============================================================*/
/* Table: chat                                                  */
/*==============================================================*/
create table chat (
   msg_id               int                  not null,
   user_id              varchar(8000)        null,
   msg_sender_id        varchar(8000)        not null,
   msg_receiver_id      varchar(8000)        not null,
   msg_type             int                  not null,
   msg_content          varchar(8000)        not null,
   msg_send_time        varchar(8000)        not null,
   msg_receiver_status  varchar(8000)        not null,
   msg_send_ip          varchar(8000)        not null,
   constraint PK_CHAT primary key (msg_id)
)
go

/*==============================================================*/
/* Index: storechat_FK                                          */
/*==============================================================*/




create nonclustered index storechat_FK on chat (user_id ASC)
go

/*==============================================================*/
/* Table: comment                                               */
/*==============================================================*/
create table comment (
   comment_id           int                  not null,
   article_id           int                  null,
   video_id             int                  null,
   comment_content_id   varchar(8000)        not null,
   user_id              varchar(8000)        not null,
   comment_content      varchar(8000)        not null,
   comment_create_time  varchar(8000)        not null,
   constraint PK_COMMENT primary key (comment_id)
)
go

/*==============================================================*/
/* Index: commentarticle_FK                                     */
/*==============================================================*/




create nonclustered index commentarticle_FK on comment (article_id ASC)
go

/*==============================================================*/
/* Index: commentvideo_FK                                       */
/*==============================================================*/




create nonclustered index commentvideo_FK on comment (video_id ASC)
go

/*==============================================================*/
/* Table: concern                                               */
/*==============================================================*/
create table concern (
   user_id              varchar(8000)        not null,
   user_concern_us      varchar(8000)        not null,
   constraint PK_CONCERN primary key (user_id)
)
go

/*==============================================================*/
/* Index: concern_FK                                            */
/*==============================================================*/




create nonclustered index concern_FK on concern (user_id ASC)
go

/*==============================================================*/
/* Table: interest                                              */
/*==============================================================*/
create table interest (
   interest_group_id    int                  not null,
   user_id              varchar(8000)        null,
   interest_group_name  varchar(8000)        not null,
   interest_founder_id  varchar(8000)        not null,
   interest_found_time  varchar(8000)        not null,
   interest_intro       varchar(8000)        not null,
   interest_notice      varchar(8000)        not null,
   interest_status      varchar(8000)        not null,
   constraint PK_INTEREST primary key (interest_group_id)
)
go

/*==============================================================*/
/* Index: createinterestgroup_FK                                */
/*==============================================================*/




create nonclustered index createinterestgroup_FK on interest (user_id ASC)
go

/*==============================================================*/
/* Index: managemember_FK                                       */
/*==============================================================*/




create nonclustered index managemember_FK on interest (interest_group_id ASC)
go

/*==============================================================*/
/* Table: join_interest_group                                   */
/*==============================================================*/
create table join_interest_group (
   interest_group_id    int                  not null,
   interest_member_id   varchar(8000)        not null,
   interest_member_join_time varchar(8000)        not null,
   interest_member_status varchar(8000)        not null,
   constraint PK_JOIN_INTEREST_GROUP primary key (interest_group_id)
)
go

/*==============================================================*/
/* Table: personal_information                                  */
/*==============================================================*/
create table personal_information (
   user_id              varchar(8000)        not null,
   user_age             int                  not null,
   user_sex             int                  not null,
   user_concern_num     varchar(8000)        not null,
   user_fans_num        int                  not null,
   user_dynamic_num     varchar(8000)        not null,
   constraint PK_PERSONAL_INFORMATION primary key (user_id)
)
go

/*==============================================================*/
/* Index: Relationship_FK                                       */
/*==============================================================*/




create nonclustered index Relationship_FK on personal_information (user_id ASC)
go

/*==============================================================*/
/* Table: question                                              */
/*==============================================================*/
create table question (
   question_id          bigint               not null,
   use_user_id          varchar(8000)        null,
   user_id              varchar(8000)        not null,
   question_create_time varchar(8000)        not null,
   question_praise_naumber int                  not null,
   question_solve_status int                  not null,
   constraint PK_QUESTION primary key (question_id)
)
go

/*==============================================================*/
/* Index: makequestion_FK                                       */
/*==============================================================*/




create nonclustered index makequestion_FK on question (use_user_id ASC)
go

/*==============================================================*/
/* Table: "user"                                                */
/*==============================================================*/
create table "user" (
   user_id              varchar(8000)        not null,
   user_password        nvarchar(255)        not null,
   constraint PK_USER primary key (user_id)
)
go

/*==============================================================*/
/* Table: video                                                 */
/*==============================================================*/
create table video (
   video_id             int                  not null,
   video_name           varchar(8000)        not null,
   user_id              varchar(8000)        not null,
   user_name            varchar(8000)        not null,
   video_content        varchar(8000)        not null,
   video_url            varchar(8000)        not null,
   video_create_time    varchar(8000)        not null,
   video_title          varchar(8000)        not null,
   constraint PK_VIDEO primary key (video_id)
)
go

/*==============================================================*/
/* Index: issuevideo_FK                                         */
/*==============================================================*/




create nonclustered index issuevideo_FK on video (user_id ASC)
go

alter table answer
   add constraint FK_ANSWER_ANSWERQUE_QUESTION foreign key (question_id)
      references question (question_id)
go

alter table article
   add constraint FK_ARTICLE_ISSUEARTI_USER foreign key (user_id)
      references "user" (user_id)
go

alter table blacklist
   add constraint FK_BLACKLIS_BLACKED_USER foreign key (use_user_id)
      references "user" (user_id)
go

alter table chat
   add constraint FK_CHAT_STORECHAT_USER foreign key (user_id)
      references "user" (user_id)
go

alter table comment
   add constraint FK_COMMENT_COMMENTAR_ARTICLE foreign key (article_id)
      references article (article_id)
go

alter table comment
   add constraint FK_COMMENT_COMMENTVI_VIDEO foreign key (video_id)
      references video (video_id)
go

alter table concern
   add constraint FK_CONCERN_CONCERN_USER foreign key (user_id)
      references "user" (user_id)
go

alter table interest
   add constraint FK_INTEREST_CREATEINT_USER foreign key (user_id)
      references "user" (user_id)
go

alter table interest
   add constraint FK_INTEREST_MANAGEMEM_JOIN_INT foreign key (interest_group_id)
      references join_interest_group (interest_group_id)
go

alter table personal_information
   add constraint FK_PERSONAL_RELATIONS_USER foreign key (user_id)
      references "user" (user_id)
go

alter table question
   add constraint FK_QUESTION_MAKEQUEST_USER foreign key (use_user_id)
      references "user" (user_id)
go

alter table video
   add constraint FK_VIDEO_ISSUEVIDE_USER foreign key (user_id)
      references "user" (user_id)
go

INSERT INTO [user] VALUES('hly','123');
SELECT * FROM [user];
SELECT * FROM personal_information;
