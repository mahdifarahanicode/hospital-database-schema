CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `patientsininpatient` AS
    SELECT 
        `patients`.`PatientID` AS `PatientID`,
        `patients`.`Name` AS `Name`
    FROM
        (`patients`
        JOIN `patientdepartments` ON ((`patients`.`PatientID` = `patientdepartments`.`PatientID`)))
    WHERE
        (`patientdepartments`.`DepartmentID` = 2)