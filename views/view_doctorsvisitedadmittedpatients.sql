CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `doctorsvisitedadmittedpatients` AS
    SELECT DISTINCT
        `doctors`.`Name` AS `Name`
    FROM
        ((`patientdoctors`
        JOIN `doctors` ON ((`patientdoctors`.`DoctorID` = `doctors`.`DoctorID`)))
        JOIN `patientdepartments` ON ((`patientdoctors`.`PatientID` = `patientdepartments`.`PatientID`)))
    WHERE
        (`patientdoctors`.`PatientID` IN (10 , 20, 30, 40))