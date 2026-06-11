CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `doctorservices` AS
    SELECT 
        `doctors`.`DoctorID` AS `DoctorID`,
        `doctors`.`Name` AS `Name`,
        `doctors`.`PersonnelCode` AS `PersonnelCode`,
        `doctors`.`Expertise` AS `Expertise`,
        `departments`.`Name` AS `DepartmentName`
    FROM
        ((`doctors`
        JOIN `departmentdoctors` ON ((`doctors`.`DoctorID` = `departmentdoctors`.`DoctorID`)))
        JOIN `departments` ON ((`departmentdoctors`.`DepartmentID` = `departments`.`DepartmentID`)))
    WHERE
        ((`doctors`.`DoctorID` = '18')
            OR (`doctors`.`PersonnelCode` = '12362'))