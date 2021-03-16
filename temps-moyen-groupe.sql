SELECT gg.name,
    AVG(ttrt.time_dif)
FROM (
        SELECT gt.id,
            TIMESTAMPDIFF(MINUTE, gt.date_creation, gt.solvedate) as time_dif,
            gt.date_creation,
            gt.solvedate
        from glpi_tickets gt
        where gt.status in (5, 6)
            and date_creation > '2018-01-01 00:00:00'
            and gt.is_deleted = 0
    ) as ttrt
    JOIN glpi_groups_tickets ggt on ggt.tickets_id = ttrt.id
    JOIN glpi_groups gg on gg.id = ggt.groups_id
GROUP BY gg.name