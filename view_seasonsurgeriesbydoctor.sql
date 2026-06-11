CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `seasonsurgeriesbydoctor` AS
    SELECT 
        `patients`.`Name` AS `Name`
    FROM
        ((`patientdoctors`
        JOIN `patientdepartments` ON ((`patientdoctors`.`PatientID` = `patientdepartments`.`PatientID`)))
        JOIN `patients` ON ((`patientdoctors`.`PatientID` = `patients`.`PatientID`)))
    WHERE
        ((`patientdoctors`.`DoctorID` = 10)
            AND (`patientdepartments`.`DepartmentID` = 2)
            AND (`patients`.`Season` = 'Spring'))