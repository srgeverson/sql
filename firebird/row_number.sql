with c as (
    select
        rdb$set_context(
            'USER_TRANSACTION',
            'SEQ',
            cast(coalesce(rdb$get_context('USER_TRANSACTION','SEQ'),0) as integer)+1
            ) s
        ,rdb$get_context('USER_TRANSACTION','SEQ') g
    from rdb$database
)
select c.g,c.s from c
