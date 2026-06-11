CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `patientsdischargedwithin10days` AS
    SELECT 
        `report_number1`.`PatientID` AS `PatientID`,
        `report_number1`.`Name` AS `Name`,
        `report_number1`.`AdmissionDate` AS `AdmissionDate`,
        `report_number1`.`DischargeDate` AS `DischargeDate`,
        `report_number1`.`Season` AS `Season`,
        `report_number1`.`TotalCost` AS `TotalCost`
    FROM
        `patients` `report_number1`
    WHERE
        ((`report_number1`.`AdmissionDate` = '2023-4-10')
            AND (`report_number1`.`DischargeDate` BETWEEN `report_number1`.`AdmissionDate` AND (`report_number1`.`AdmissionDate` + INTERVAL 10 DAY)))