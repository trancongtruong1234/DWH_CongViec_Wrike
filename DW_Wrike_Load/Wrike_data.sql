select * from Data_URL
go
drop table [user]
go
select * from [user]
go
truncate table [user]
go
insert into [user] values('8874995','"Dinh Ha Duy"','"Linh"','"linhdhd@hpt.vn"','"User"','"User"','"CEO/Owner/Founder"',
	'"HPT Corp."',",'"'+84093926086"','"f"','"2020-08-13 01:08:11"','"300-3003-300 00:00"',
	'"Dinh Ha Duy Linh"')
go
'11349332' 
'11349332'
'11860884'
'11861735'
'11866532'
'11866805'
'11866823'
'11866946'
'11729667'
'11918915'
'11930139'
'4006066'
'11933756'
'11953929'
'11954047'
'11961559'
'11985782'
'10763904'
'13510806'
go
'246820554'
'294608520'

select * from attachment_file
go
truncate table attachment_file
go
select * from audit_log
go
drop table audit_log
go 
insert into [group_to_user] values ('-@ơ]1[2987~!@#$%^&*()ƯƠ;:""?><5272577','4006066','f','f')
go
select * from [group_to_user]
go
drop table test
go
create table test(names nvarchar(max), age nvarchar(max),)
go
insert into [work_comment_to_mention] values('3245345345','134234234','')
'2',
'13',
'14',--
'15',
'16',
'17'
go
drop table custom_field
go
select * from adit_log
go
insert into [work_comment_to_mention] values ('215953002','11641729','truong')
go
insert into [work_description] values('11341341','- Tổng cộng 11 node gồm: tầng trệt: 1 thiết bị tầng
 1,2,3: mỗi tầng 3 thiết bị tầng 4: 1 thiết bị <br/>-- Cáp kéo mới yêu cầu sự dụng cáp Cat6<br/>- Tủ tầng trệt: Vị trí tập trung cáp<br/.<br/>')
go
select * from Data_URL
go
truncate table Data_URL
-- 1: audit_log (chứa dấu ',' trường hợp không xóa được): 659/42243
-- 13: work_comment_content, 
-- 14: work_comment_to_mention ( sql đúng mà k insert được)
-- 15: work_custom_field (có dòng chỉ có 1 giá trị, load gần hết)
-- 16: work_custom_field_history ( chứa dấu ', trường hợp không xóa được)
-- 17: work_decription ( chỉ chứa descreiption; chứa dấu ',')
-- 20: work_item ( chứa dấu ',')
create table Data_URL(name nvarchar(200), url nvarchar(max))
go
select count (*) as attachment_file from attachment_file --478/478
go
select count (*) as custom_field from custom_field --176/176
go
select count (*) as [group] from [group] --28/28
go
select count (*) as [group_to_user] from [group_to_user] --173/173
go
select count (*) as recurrence from recurrence -- 1/1
go
select count (*) as vtimelog_category from timelog_category -- 3/3
go
select count (*) as [user] from [user] -- 134/134
go
select count (*) as work_assignee from work_assignee -- 11895/11895
go
select count (*) as work_attachment from work_attachment -- 466/466
go
select count (*) as work_attachment_to_attachment_file from work_attachment_to_attachment_file -- 478/478
go
select count (*) as work_change_revision from work_change_revision -- 21838/21838
go
select count (*) as work_comment from work_comment -- 846/846
go
select count (*) as work_comment_to_mention from work_comment_to_mention -- 548/548
go
select count (*) as work_custom_field from work_custom_field -- 10274/10329
go
select count (*) as work_folder from work_folder -- 938/938
go
select count (*) as work_graph from work_graph -- 23157/23157
go
select count (*) as work_item from work_item -- 23346/23355
go
select count (*) as custom_field from work_project --460/460
go
select count (*) as work_project_to_task from work_project_to_task --20944/20944
go
select count (*) as work_space from work_space --123/123
go
select count (*) as work_space_user from work_space_user --132/132
go
select count (*) as work_task from work_task --22417/22417
go
select count (*) as work_task_dependency from work_task_dependency --3477/3477
go
select count (*) as work_task_flexible_effort from work_task_flexible_effort -- 381/381
go
select count (*) as work_timelog from work_timelog --4140/4140
go
select count (*) as work_timelog_comment from work_timelog_comment --4170/4177
go
select count (*) as work_workflow_stage_history from work_workflow_stage_history --6254/6254
go
select count (*) as workflow from workflow --35/35
go
select count (*) as workflow_stage from workflow_stage --251/251


go
select * from test -- 10274/10329
delete from test where work_id in ('791550540','791550601')
go
--truncate table Data_URL
create table Data_URL(name nvarchar(100), url nvarchar(max))
go
select * from Data_URL
go
drop table test
go
select * from work_item
go 
select count(*) from test
go
insert into test values('8874995','Dinh Ha Duy','Linh','linhdhd@hpt.vn','User','CEO/Owner/Founder',
	'HPT Corp.','',',+84093926086','f','2020-08-13 01:08:11','300-3003-300 00:00',
	'Dinh Ha Duy Linh')

	-- create dwh cong viec
select count (*) from work_project_to_task
go
select count(*) from work_item
go
select count(*) from work_project


go
select * from work_item where work_id = '549212655'
go 
select * from work_project_to_task where work_task_id = '549212655'
go
select * from work_item where work_id = '549212649'
go

-- Tim ten du an theo id

go
select * from [user], work_item where [user].user_id = author_user_id
go
-- Tim phong theo du an
select * from work_item, group_to_user, [group] 
	where work_item.author_user_id = group_to_user.user_id and
		group_to_user.group_id = [group].group_id and
		work_type = 'Project'
go
select * from group_to_user, [group] where group_to_user.group_id = [group].group_id
go
select count (*) from work_item where work_type = 'Project'
go
select count (*) from work_project
-- 
go
select * from work_project, work_custom_field, custom_field 
	where work_project.work_id = work_custom_field.work_id
	and work_custom_field.custom_field_id = custom_field.custom_field_id

go
--test
select * from work_item where work_id ='789284115'
go
select * from work_custom_field where work_id ='789284115'
go
select * from work_project inner join work_custom_field 
	on work_project.work_id = work_custom_field.work_id
	inner join custom_field 
	on custom_field.custom_field_id =work_custom_field.custom_field_id
--
go
select * from [OLE DB Destination]
truncate table [OLE DB Destination]
go
select count (distinct work_id) from work_project
go
select * from 
	(select distinct work_id as MaVuViec, work_name as TenDuAn, author_user_id from work_item 
where work_id in ( select distinct work_id from work_project)) as a
inner join
	(select [group].group_id, user_id, group_name 
from group_to_user, [group] where group_to_user.group_id = [group].group_id and group_name !='My team') as b
on a.author_user_id = b.user_id
--
select group_to_user.group_id, user_id, group_name from group_to_user inner join 
	(select * from [group] where group_name not in ('My Team', 'SA', 'HSE', 'Doi Tac', 'Khach hang', 'HSC', 'Techman HCM')) as a
on group_to_user.group_id = a.group_id
go
---
select * from [group] order by group_name 
select * from work_comment
--Tao bang timeLog_category
select * from timelog_category where timelog_category_name !='Category 3'

select distinct custom_field_name from (select * from work_item where work_type ='Task') as a
	left join work_custom_field on a.work_id = work_custom_field.work_id
	left join custom_field on custom_field.custom_field_id = work_custom_field.custom_field_id
	order by custom_field_name

select * from (select * from work_item where work_type ='Task') as a
	left join work_custom_field on a.work_id = work_custom_field.work_id
	left join custom_field on custom_field.custom_field_id = work_custom_field.custom_field_id
	where custom_field_name ='Project'
go
select * from work_item
go
select * from timelog_category
go
select * from work_custom_field