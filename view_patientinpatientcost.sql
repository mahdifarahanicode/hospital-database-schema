CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `patientinpatientcost` AS
    SELECT 
        `patients`.`PatientID` AS `PatientID`,
        `patients`.`Name` AS `Name`,
        `patients`.`AdmissionDate` AS `AdmissionDate`,
        `patients`.`DischargeDate` AS `DischargeDate`,
        `patients`.`Season` AS `Season`,
        `patients`.`TotalCost` AS `TotalCost`
    FROM
        (`patients`
        JOIN `patientdepartments` ON ((`patients`.`PatientID` = `patientdepartments`.`PatientID`)))
    WHERE
        ((`patients`.`Name` = 'Mahsa Gholami')
            AND (`patientdepartments`.`DepartmentID` = 1))