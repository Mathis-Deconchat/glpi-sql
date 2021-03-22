DELIMITER //
CREATE OR REPLACE PROCEDURE `glpi`.`GetMutuelle`(IN mutuelle VARCHAR(255)) 
BEGIN
	SELECT ge.name,
	sum(case when gt.status NOT IN (5,6) then 1 else 0 end) as en_cours,
	sum(case when gt.status IN (5,6) then 1 else 0 end) as resolus
	FROM glpi_tickets gt 
	JOIN glpi_entities ge ON ge.id = gt.entities_id 
	WHERE gt.is_deleted = 0
	AND ge.name = mutuelle
	GROUP BY ge.name 	
	ORDER BY ge.name;
END ;
//
DELIMITER ;