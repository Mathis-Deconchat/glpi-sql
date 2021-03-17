SELECT count(gt.id) 
FROM glpi_tickets
JOIN glpi_groups_tickets AS ggt ON gt.id = ggt.tickets_id
JOIN glpi_groups AS gg ON ggt.groups_id = gg.id
WHERE gt.status NOT IN (5,6)
AND gt.is_deleted = 0 
AND ggt.`type` = 2
GROUP BY gg.name
## Fin