show timezone

create table timezones(
	ts timestamp without time zone,
	tz timestamp with time zone
)

select * from timezones

insert into timezones values(
	timestamp without time zone '2023-03-07 10:50',
	timestamp with time zone '2023-03-07 10:50'
)

