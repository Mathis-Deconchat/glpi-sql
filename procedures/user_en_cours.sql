CREATE OR REPLACE PROCEDURE `glpi`.`GetUserTicketEnCours`(IN username VARCHAR(255)) BEGIN
SELECT COUNT(gt.id)
FROM glpi_tickets AS gt
    JOIN glpi_tickets_users AS gtu ON gtu.tickets_id = gt.id
    JOIN glpi_users AS gu on gu.id = gtu.users_id
WHERE gt.status NOT IN (5, 6)
    AND gt.is_deleted = 0
    AND gtu.`type` = 2
    AND gu.name = username;
END;