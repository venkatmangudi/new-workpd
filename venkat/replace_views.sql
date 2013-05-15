DROP TABLE IF EXISTS `emp1_tenure_by_band`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp1_tenure_by_band` AS select count(0) AS `number_of_employees`,(case when (`empl_tenure`.`employee_tenure` <= 2) then 'Below 2' when ((`empl_tenure`.`employee_tenure` >= 3) and (`empl_tenure`.`employee_tenure` <= 5)) then '2-5' when ((`empl_tenure`.`employee_tenure` >= 6) and (`empl_tenure`.`employee_tenure` <= 10)) then '6-10' when ((`empl_tenure`.`employee_tenure` >= 11) and (`empl_tenure`.`employee_tenure` <= 15)) then '11-15' when ((`empl_tenure`.`employee_tenure` >= 16) and (`empl_tenure`.`employee_tenure` <= 20)) then '16-20' when (`empl_tenure`.`employee_tenure` >= 21) then '21 and Over' end) AS `tenure` from `empl_tenure` group by (case when (`empl_tenure`.`employee_tenure` <= 2) then 'Below 2' when ((`empl_tenure`.`employee_tenure` >= 3) and (`empl_tenure`.`employee_tenure` <= 5)) then '2-5' when ((`empl_tenure`.`employee_tenure` >= 6) and (`empl_tenure`.`employee_tenure` <= 10)) then '6-10' when ((`empl_tenure`.`employee_tenure` >= 11) and (`empl_tenure`.`employee_tenure` <= 15)) then '11-15' when ((`empl_tenure`.`employee_tenure` >= 16) and (`empl_tenure`.`employee_tenure` <= 20)) then '16-20' when (`empl_tenure`.`employee_tenure` >= 21) then '21 and Over' else 'Others' end);

-- --------------------------------------------------------

--
-- Structure for view `employees_details`
--
DROP TABLE IF EXISTS `employees_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employees_details` AS select `a`.`employee_id` AS `employee_id`,`e`.`employee_cadre_id` AS `employee_cadre_id`,`e`.`emp_full_name` AS `emp_full_name`,`f`.`gender_name` AS `gender_name`,`c`.`join_date` AS `join_date`,`c`.`employee_class` AS `employee_class`,`j`.`id` AS `qualification_name_id`,`j`.`Qualification_name` AS `qualification_name`,`b`.`id` AS `specialisation_id`,`m`.`designation_id` AS `designation_id`,`b`.`Specialisation_name` AS `specialisation_name`,`k`.`id` AS `employment_type_id`,`k`.`employment_type` AS `employment_type`,`d`.`id` AS `status_id`,`d`.`Status_name` AS `status_name`,`g`.`id` AS `district_id`,`g`.`district_name` AS `district_name`,`h`.`id` AS `hospital_id`,`h`.`hospital_name` AS `hospital_name` from ((((((((((`qualifications` `a` join `specialisations` `b` on((`a`.`specialisation_id` = `b`.`id`))) join `employee_work_details` `c` on((`a`.`employee_id` = `c`.`employee_id`))) join `statuses` `d` on((`c`.`status_id` = `d`.`id`))) join `employees` `e` on((`e`.`id` = `c`.`employee_id`))) join `genders` `f` on((`f`.`id` = `e`.`gender_id`))) join `hospitals` `h` on((`h`.`id` = `e`.`emp_loc_master_id`))) join `districts` `g` on((`g`.`id` = `h`.`district_id`))) join `qualification_names` `j` on((`j`.`id` = `a`.`qualification_name_id`))) join `employment_types` `k` on((`k`.`id` = `e`.`employment_type_id`))) join `designation_specialisations` `m` on((`m`.`specialisation_id` = `b`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `employee_age_by_band`
--
DROP TABLE IF EXISTS `employee_age_by_band`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_age_by_band` AS select count(0) AS `number_of_employees`,(case when (round(`empl_age`.`employee_age`,0) <= 30) then 'Below 30' when ((round(`empl_age`.`employee_age`,0) >= 31) and (round(`empl_age`.`employee_age`,0) <= 40)) then '31-40' when ((round(`empl_age`.`employee_age`,0) >= 41) and (round(`empl_age`.`employee_age`,0) <= 50)) then '41-50' when ((round(`empl_age`.`employee_age`,0) >= 51) and (round(`empl_age`.`employee_age`,0) <= 60)) then '51-60' when (round(`empl_age`.`employee_age`,0) >= 61) then 'Over 60' when isnull(`empl_age`.`employee_age`) then 'Unknown' end) AS `ageband` from `empl_age` group by (case when (round(`empl_age`.`employee_age`,0) <= 30) then 'Below 30' when ((round(`empl_age`.`employee_age`,0) >= 31) and (round(`empl_age`.`employee_age`,0) <= 40)) then '31-40' when ((round(`empl_age`.`employee_age`,0) >= 41) and (round(`empl_age`.`employee_age`,0) <= 50)) then '41-50' when ((round(`empl_age`.`employee_age`,0) >= 51) and (round(`empl_age`.`employee_age`,0) <= 60)) then '51-60' when (round(`empl_age`.`employee_age`,0) >= 61) then 'Over 60' when isnull(`empl_age`.`employee_age`) then 'Unknown' end);

-- --------------------------------------------------------

--
-- Structure for view `Employee_by_gender`
--
DROP TABLE IF EXISTS `Employee_by_gender`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Employee_by_gender` AS select `genders`.`gender_name` AS `Gender`,count(`employees`.`gender_id`) AS `Number of Employees` from (`employees` join `genders`) where (`employees`.`gender_id` = `genders`.`id`) group by `employees`.`gender_id`;

-- --------------------------------------------------------

--
-- Structure for view `Employee_by_qualification`
--
DROP TABLE IF EXISTS `Employee_by_qualification`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Employee_by_qualification` AS select count(`a`.`employee_id`) AS `Number of Employees`,`b`.`Qualification_name` AS `Qualification Name` from (`qualifications` `a` join `qualification_names` `b`) where (`a`.`qualification_name_id` = `b`.`id`) group by `a`.`qualification_name_id`;

-- --------------------------------------------------------

--
-- Structure for view `Employee_by_specialisation`
--
DROP TABLE IF EXISTS `Employee_by_specialisation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Employee_by_specialisation` AS select count(`a`.`employee_id`) AS `Number of Employees`,`b`.`Specialisation_name` AS `Specialization Name` from (`qualifications` `a` join `specialisations` `b`) where (`a`.`specialisation_id` = `b`.`id`) group by `a`.`specialisation_id`;

-- --------------------------------------------------------

--
-- Structure for view `employee_sanction_working`
--
DROP TABLE IF EXISTS `employee_sanction_working`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_sanction_working` AS select `a`.`employee_cadre_id` AS `employee_cadre_id`,`a`.`employee_id` AS `employee_id`,`a`.`emp_full_name` AS `emp_full_name`,`a`.`gender_name` AS `gender_name`,`a`.`join_date` AS `join_date`,`a`.`employee_class` AS `employee_class`,`a`.`qualification_name_id` AS `qualification_name_id`,`a`.`qualification_name` AS `qualification_name`,`a`.`specialisation_id` AS `specialisation_id`,`a`.`specialisation_name` AS `specialisation_name`,`a`.`designation_id` AS `designation_id`,`c`.`Designation_English` AS `Designation_English`,`c`.`Designation_Hindi` AS `Designation_hindi`,`a`.`employment_type_id` AS `employment_type_id`,`a`.`employment_type` AS `employment_type`,`a`.`status_id` AS `status_id`,`a`.`status_name` AS `status_name`,`a`.`district_id` AS `district_id`,`a`.`district_name` AS `district_name`,`a`.`hospital_id` AS `hospital_id`,`a`.`hospital_name` AS `hospital_name`,`b`.`sanctioned_posts` AS `sanctioned_posts` from ((`employees_details` `a` left join `sanctioned_posts` `b` on(((`b`.`hospital_id` = `a`.`hospital_id`) and (`b`.`designation_id` = `a`.`designation_id`)))) left join `designations` `c` on((`c`.`id` = `a`.`designation_id`))) union select `a`.`employee_cadre_id` AS `employee_cadre_id`,`a`.`employee_id` AS `employee_id`,`a`.`emp_full_name` AS `emp_full_name`,`a`.`gender_name` AS `gender_name`,`a`.`join_date` AS `join_date`,`a`.`employee_class` AS `employee_class`,`a`.`qualification_name_id` AS `qualification_name_id`,`a`.`qualification_name` AS `qualification_name`,`a`.`specialisation_id` AS `specialisation_id`,`a`.`specialisation_name` AS `specialisation_name`,`a`.`designation_id` AS `designation_id`,`c`.`Designation_English` AS `Designation_English`,`c`.`Designation_Hindi` AS `Designation_hindi`,`a`.`employment_type_id` AS `employment_type_id`,`a`.`employment_type` AS `employment_type`,`a`.`status_id` AS `status_id`,`a`.`status_name` AS `status_name`,`a`.`district_id` AS `district_id`,`a`.`district_name` AS `district_name`,`a`.`hospital_id` AS `hospital_id`,`a`.`hospital_name` AS `hospital_name`,`b`.`sanctioned_posts` AS `sanctioned_posts` from ((`sanctioned_posts` `b` left join `employees_details` `a` on(((`b`.`hospital_id` = `a`.`hospital_id`) and (`b`.`designation_id` = `a`.`designation_id`)))) left join `designations` `c` on((`c`.`id` = `a`.`designation_id`)));

-- --------------------------------------------------------

--
-- Structure for view `employee_tenure_by_band`
--
DROP TABLE IF EXISTS `employee_tenure_by_band`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_tenure_by_band` AS select count(0) AS `COUNT(*)`,(case when (`empl_tenure`.`employee_tenure` <= 2) then 'Below 2' when ((`empl_tenure`.`employee_tenure` >= 3) and (`empl_tenure`.`employee_tenure` <= 5)) then '2-5' when ((`empl_tenure`.`employee_tenure` >= 6) and (`empl_tenure`.`employee_tenure` <= 10)) then '6-10' when ((`empl_tenure`.`employee_tenure` >= 11) and (`empl_tenure`.`employee_tenure` <= 15)) then '11-15' when ((`empl_tenure`.`employee_tenure` >= 16) and (`empl_tenure`.`employee_tenure` <= 20)) then '16-20' when (`empl_tenure`.`employee_tenure` >= 21) then '21 and Over' end) AS `tenure` from `empl_tenure` group by (case when (`empl_tenure`.`employee_tenure` <= 2) then 'Below 2' when ((`empl_tenure`.`employee_tenure` >= 3) and (`empl_tenure`.`employee_tenure` <= 5)) then '2-5' when ((`empl_tenure`.`employee_tenure` >= 6) and (`empl_tenure`.`employee_tenure` <= 10)) then '6-10' when ((`empl_tenure`.`employee_tenure` >= 11) and (`empl_tenure`.`employee_tenure` <= 15)) then '11-15' when ((`empl_tenure`.`employee_tenure` >= 16) and (`empl_tenure`.`employee_tenure` <= 20)) then '16-20' when (`empl_tenure`.`employee_tenure` >= 21) then '21 and Over' end);

-- --------------------------------------------------------

--
-- Structure for view `empl_age`
--
DROP TABLE IF EXISTS `empl_age`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empl_age` AS select `employees`.`emp_full_name` AS `employee_name`,((to_days(curdate()) - to_days(`employees`.`emp_dob`)) / 365) AS `employee_age` from `employees`;

-- --------------------------------------------------------

--
-- Structure for view `empl_tenure`
--
DROP TABLE IF EXISTS `empl_tenure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empl_tenure` AS select `employee_work_details`.`employee_id` AS `employee_id`,round(((to_days(curdate()) - to_days(`employee_work_details`.`join_date`)) / 365),0) AS `employee_tenure` from `employee_work_details`;

-- --------------------------------------------------------

--
-- Structure for view `emp_gen_view`
--
DROP TABLE IF EXISTS `emp_gen_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp_gen_view` AS select `genders`.`gender_name` AS `gender`,count(`employees`.`gender_id`) AS `number_of_employees` from (`employees` join `genders`) where (`employees`.`gender_id` = `genders`.`id`) group by `employees`.`gender_id`;

-- --------------------------------------------------------

--
-- Structure for view `emp_qual_view`
--
DROP TABLE IF EXISTS `emp_qual_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp_qual_view` AS select count(`a`.`employee_id`) AS `number_of_employees`,`b`.`Qualification_name` AS `qualification_name` from (`qualifications` `a` join `qualification_names` `b`) where (`a`.`qualification_name_id` = `b`.`id`) group by `a`.`qualification_name_id`;

-- --------------------------------------------------------

--
-- Structure for view `emp_spec_view`
--
DROP TABLE IF EXISTS `emp_spec_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp_spec_view` AS select count(`a`.`employee_id`) AS `number_of_employees`,`b`.`Specialisation_name` AS `specialization_name` from (`qualifications` `a` join `specialisations` `b`) where (`a`.`specialisation_id` = `b`.`id`) group by `a`.`specialisation_id`;

-- --------------------------------------------------------

--
-- Structure for view `emp_tenure_by_band`
--
DROP TABLE IF EXISTS `emp_tenure_by_band`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp_tenure_by_band` AS select count(0) AS `number_of_employees`,(case when (`empl_tenure`.`employee_tenure` <= 2) then 'Below 2' when ((`empl_tenure`.`employee_tenure` >= 3) and (`empl_tenure`.`employee_tenure` <= 5)) then '2-5' when ((`empl_tenure`.`employee_tenure` >= 6) and (`empl_tenure`.`employee_tenure` <= 10)) then '6-10' when ((`empl_tenure`.`employee_tenure` >= 11) and (`empl_tenure`.`employee_tenure` <= 15)) then '11-15' when ((`empl_tenure`.`employee_tenure` >= 16) and (`empl_tenure`.`employee_tenure` <= 20)) then '16-20' when (`empl_tenure`.`employee_tenure` >= 21) then '21 and Over' end) AS `tenure` from `empl_tenure` group by (case when (`empl_tenure`.`employee_tenure` <= 2) then 'Below 2' when ((`empl_tenure`.`employee_tenure` >= 3) and (`empl_tenure`.`employee_tenure` <= 5)) then '2-5' when ((`empl_tenure`.`employee_tenure` >= 6) and (`empl_tenure`.`employee_tenure` <= 10)) then '6-10' when ((`empl_tenure`.`employee_tenure` >= 11) and (`empl_tenure`.`employee_tenure` <= 15)) then '11-15' when ((`empl_tenure`.`employee_tenure` >= 16) and (`empl_tenure`.`employee_tenure` <= 20)) then '16-20' when (`empl_tenure`.`employee_tenure` >= 21) then '21 and Over' end);

-- --------------------------------------------------------

--
-- Structure for view `graph_employee_status`
--
DROP TABLE IF EXISTS `graph_employee_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `graph_employee_status` AS select distinct `graph_employee_status_by_band`.`specialisation_id` AS `id`,`graph_employee_status_by_band`.`specialisation` AS `Specialisation_name` from `graph_employee_status_by_band`;

-- --------------------------------------------------------

--
-- Structure for view `graph_employee_status_by_band`
--
DROP TABLE IF EXISTS `graph_employee_status_by_band`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `graph_employee_status_by_band` AS select `c`.`id` AS `specialisation_id`,min(`c`.`Specialisation_name`) AS `specialisation`,sum(`a`.`sanctioned_posts`) AS `nos`,'1 Sanctioned' AS `statusband` from ((`sanctioned_posts` `a` join `designation_specialisations` `b` on((`a`.`designation_id` = `b`.`designation_id`))) join `specialisations` `c` on((`b`.`specialisation_id` = `c`.`id`))) group by `c`.`id` union select `employees_details`.`specialisation_id` AS `specialisation_id`,min(`employees_details`.`specialisation_name`) AS `specialisation`,count(0) AS `nos`,'2 Posted' AS `statusband` from `employees_details` group by `employees_details`.`specialisation_id` union select `employees_details`.`specialisation_id` AS `specialisation_id`,min(`employees_details`.`specialisation_name`) AS `specialisation`,count(0) AS `nos`,'3 Working' AS `statusband` from `employees_details` where (`employees_details`.`status_name` like '%Working%') group by `employees_details`.`specialisation_id` union select `employees_details`.`specialisation_id` AS `specialisation_id`,min(`employees_details`.`specialisation_name`) AS `specialisation`,count(0) AS `nos`,(case when ((`employees_details`.`employment_type` like '%Regular%') and (`employees_details`.`employee_class` = 1)) then '4 Regular (I)' when ((`employees_details`.`employment_type` like '%Regular%') and (`employees_details`.`employee_class` = 2)) then '5 Regular (II)' when (`employees_details`.`employment_type` like '%300%') then '6 300 Post' when (`employees_details`.`employment_type` like '%RCH%') then '7 RCH' when (`employees_details`.`employment_type` like '%Bond%') then '8 Bonded' end) AS `statusband` from `employees_details` group by `employees_details`.`specialisation_id`,(case when ((`employees_details`.`employment_type` like '%Regular%') and (`employees_details`.`employee_class` = 1)) then '4 Regular (I)' when ((`employees_details`.`employment_type` like '%Regular%') and (`employees_details`.`employee_class` = 2)) then '5 Regular (II)' when (`employees_details`.`employment_type` like '%300%') then '6 300 Post' when (`employees_details`.`employment_type` like '%RCH%') then '7 RCH' when (`employees_details`.`employment_type` like '%Bond%') then '8 Bonded' end);

-- --------------------------------------------------------

--
-- Structure for view `graph_hospital_vacant`
--
DROP TABLE IF EXISTS `graph_hospital_vacant`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `graph_hospital_vacant` AS select distinct `graph_hospital_vacant_by_band`.`specialisation_id` AS `id`,`graph_hospital_vacant_by_band`.`specialisation` AS `Specialisation_name` from `graph_hospital_vacant_by_band`;

-- --------------------------------------------------------

--
-- Structure for view `graph_hospital_vacant_by_band`
--
DROP TABLE IF EXISTS `graph_hospital_vacant_by_band`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `graph_hospital_vacant_by_band` AS select `report_vacant_hopistals`.`specialisation_id` AS `specialisation_id`,min(`report_vacant_hopistals`.`Specialisation_name`) AS `specialisation`,count(`report_vacant_hopistals`.`hospital_id`) AS `nos`,`report_vacant_hopistals`.`hospital_type` AS `hospitalband` from `report_vacant_hopistals` group by `report_vacant_hopistals`.`specialisation_id`,`report_vacant_hopistals`.`hospital_type`;

-- --------------------------------------------------------

--
-- Structure for view `report_vacant_hopistals`
--
DROP TABLE IF EXISTS `report_vacant_hopistals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `report_vacant_hopistals` AS select `a`.`hospital_id` AS `hospital_id`,`d`.`hospital_type` AS `hospital_type`,`c`.`hospital_name` AS `hospital_name`,`a`.`sanctioned_posts` AS `sanctioned_posts`,`a`.`designation_id` AS `designation_id`,`b`.`specialisation_id` AS `specialisation_id`,`e`.`Specialisation_name` AS `Specialisation_name` from ((((`sanctioned_posts` `a` join `designation_specialisations` `b` on((`b`.`designation_id` = `a`.`designation_id`))) join `hospitals` `c` on((`c`.`id` = `a`.`hospital_id`))) join `hospital_types` `d` on((`d`.`id` = `c`.`hospital_type_id`))) join `specialisations` `e` on((`e`.`id` = `b`.`specialisation_id`))) where ((not((`a`.`hospital_id`,`b`.`specialisation_id`) in (select `employees_details`.`hospital_id`,`employees_details`.`specialisation_id` from `employees_details`))) and (`d`.`id` <> 5));

-- --------------------------------------------------------

--
-- Structure for view `rpt_data_gaps`
--
DROP TABLE IF EXISTS `rpt_data_gaps`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rpt_data_gaps` AS select `a`.`district_id` AS `district_id`,`i`.`district_name` AS `district_name`,ifnull(`a`.`total_employees`,0) AS `total_employees`,ifnull(`d`.`Father_name_missing`,0) AS `father_name_missing`,ifnull(`c`.`dob_missing`,0) AS `dob_missing`,ifnull(`b`.`category_missing`,0) AS `category_missing`,ifnull(`e`.`fjoindate_missing`,0) AS `fjoindate_missing`,ifnull(`f`.`maritalstatus_missing`,0) AS `maritalstatus_missing`,ifnull(`g`.`registration_missing`,0) AS `registration_missing`,ifnull(`h`.`treasurycode_missing`,0) AS `treasurycode_missing`,round(((((((((ifnull(`d`.`Father_name_missing`,0) + ifnull(`c`.`dob_missing`,0)) + ifnull(`b`.`category_missing`,0)) + ifnull(`e`.`fjoindate_missing`,0)) + ifnull(`f`.`maritalstatus_missing`,0)) + ifnull(`g`.`registration_missing`,0)) + ifnull(`h`.`treasurycode_missing`,0)) / (ifnull(`a`.`total_employees`,0) * 7)) * 100),2) AS `percentage_missing` from ((((((((`vw_data_gaps_total` `a` left join `vw_data_gaps_category` `b` on((`b`.`district_id` = `a`.`district_id`))) left join `vw_data_gaps_dob` `c` on((`c`.`district_id` = `a`.`district_id`))) left join `vw_data_gaps_fathername` `d` on((`d`.`district_id` = `a`.`district_id`))) left join `vw_data_gaps_fjoindate` `e` on((`e`.`district_id` = `a`.`district_id`))) left join `vw_data_gaps_maritalstatus` `f` on((`f`.`district_id` = `a`.`district_id`))) left join `vw_data_gaps_registration` `g` on((`g`.`district_id` = `a`.`district_id`))) left join `vw_data_gaps_treasurycode` `h` on((`h`.`district_id` = `a`.`district_id`))) left join `districts` `i` on((`i`.`id` = `a`.`district_id`)));

-- --------------------------------------------------------

--
-- Structure for view `sanctioned_by_designation`
--
DROP TABLE IF EXISTS `sanctioned_by_designation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sanctioned_by_designation` AS select `designations`.`Designation_English` AS `designation_english`,`designations`.`Designation_Hindi` AS `designation_hindi`,sum(`sanctioned_posts`.`sanctioned_posts`) AS `total_sanctioned` from (`sanctioned_posts` join `designations`) where (`sanctioned_posts`.`designation_id` = `designations`.`id`) group by `sanctioned_posts`.`designation_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_class_II_sanctioned`
--
DROP TABLE IF EXISTS `vw_class_II_sanctioned`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_class_II_sanctioned` AS select `a`.`hospital_id` AS `hospital_id`,sum(`a`.`sanctioned_posts`) AS `class_II_sanctioned` from (`sanctioned_posts` `a` join `designations` `b` on((`b`.`id` = `a`.`designation_id`))) where (`b`.`class_no` = 2) group by `a`.`hospital_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_class_II_working`
--
DROP TABLE IF EXISTS `vw_class_II_working`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_class_II_working` AS select `employees_details`.`hospital_id` AS `hospital_id`,count(0) AS `class_II_working` from `employees_details` where (`employees_details`.`employee_class` = 2) group by `employees_details`.`hospital_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_class_I_sanctioned`
--
DROP TABLE IF EXISTS `vw_class_I_sanctioned`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_class_I_sanctioned` AS select `a`.`hospital_id` AS `hospital_id`,sum(`a`.`sanctioned_posts`) AS `class_I_sanctioned` from (`sanctioned_posts` `a` join `designations` `b` on((`b`.`id` = `a`.`designation_id`))) where (`b`.`class_no` = 1) group by `a`.`hospital_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_class_I_working`
--
DROP TABLE IF EXISTS `vw_class_I_working`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_class_I_working` AS select `employees_details`.`hospital_id` AS `hospital_id`,count(0) AS `class_I_working` from `employees_details` where (`employees_details`.`employee_class` = 1) group by `employees_details`.`hospital_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_current_locations`
--
DROP TABLE IF EXISTS `vw_current_locations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_current_locations` AS select `postings`.`employee_id` AS `employee_id`,`postings`.`hospital_id` AS `hospital_id`,`postings`.`designation_id` AS `designation_id`,`postings`.`posting_from` AS `posting_from`,`postings`.`posting_to` AS `posting_to`,`postings`.`payscale` AS `payscale`,`postings`.`posting_type_id` AS `posting_type_id` from `postings` where (`postings`.`current_location` = 1);

-- --------------------------------------------------------

--
-- Structure for view `vw_data_gaps_category`
--
DROP TABLE IF EXISTS `vw_data_gaps_category`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_gaps_category` AS select `b`.`district_id` AS `district_id`,count(`a`.`id`) AS `category_missing` from (`employees` `a` join `hospitals` `b` on((`a`.`emp_loc_master_id` = `b`.`id`))) where (isnull(`a`.`category_id`) or (`a`.`category_id` = '') or (`a`.`category_id` = 1)) group by `b`.`district_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_gaps_dob`
--
DROP TABLE IF EXISTS `vw_data_gaps_dob`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_gaps_dob` AS select `b`.`district_id` AS `district_id`,count(`a`.`id`) AS `dob_missing` from (`employees` `a` join `hospitals` `b` on((`a`.`emp_loc_master_id` = `b`.`id`))) where isnull(`a`.`emp_dob`) group by `b`.`district_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_gaps_fathername`
--
DROP TABLE IF EXISTS `vw_data_gaps_fathername`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_gaps_fathername` AS select `b`.`district_id` AS `district_id`,count(`a`.`id`) AS `Father_name_missing` from (`employees` `a` join `hospitals` `b` on((`a`.`emp_loc_master_id` = `b`.`id`))) where (isnull(`a`.`emp_fathername`) or (`a`.`emp_fathername` = '')) group by `b`.`district_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_gaps_fjoindate`
--
DROP TABLE IF EXISTS `vw_data_gaps_fjoindate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_gaps_fjoindate` AS select `b`.`district_id` AS `district_id`,count(`a`.`id`) AS `fjoindate_missing` from ((`employees` `a` join `hospitals` `b` on((`a`.`emp_loc_master_id` = `b`.`id`))) join `employee_work_details` `c` on((`a`.`id` = `c`.`employee_id`))) where (`c`.`join_date` = '0000-00-00') group by `b`.`district_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_gaps_maritalstatus`
--
DROP TABLE IF EXISTS `vw_data_gaps_maritalstatus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_gaps_maritalstatus` AS select `b`.`district_id` AS `district_id`,count(`a`.`id`) AS `maritalstatus_missing` from (`employees` `a` join `hospitals` `b` on((`a`.`emp_loc_master_id` = `b`.`id`))) where (isnull(`a`.`marital_status_id`) or (`a`.`marital_status_id` = '')) group by `b`.`district_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_gaps_registration`
--
DROP TABLE IF EXISTS `vw_data_gaps_registration`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_gaps_registration` AS select `b`.`district_id` AS `district_id`,count(`a`.`id`) AS `registration_missing` from ((`employees` `a` join `hospitals` `b` on((`a`.`emp_loc_master_id` = `b`.`id`))) join `employee_work_details` `c` on((`a`.`id` = `c`.`employee_id`))) where ((isnull(`c`.`medical_registration_number`) or (`c`.`medical_registration_number` = '')) and (`a`.`employee_cadre_id` = 1)) group by `b`.`district_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_gaps_total`
--
DROP TABLE IF EXISTS `vw_data_gaps_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_gaps_total` AS select `b`.`district_id` AS `district_id`,count(`a`.`id`) AS `total_employees` from (`employees` `a` join `hospitals` `b` on((`a`.`emp_loc_master_id` = `b`.`id`))) group by `b`.`district_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_gaps_treasurycode`
--
DROP TABLE IF EXISTS `vw_data_gaps_treasurycode`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_gaps_treasurycode` AS select `b`.`district_id` AS `district_id`,count(`a`.`id`) AS `treasurycode_missing` from (`employees` `a` join `hospitals` `b` on((`a`.`emp_loc_master_id` = `b`.`id`))) where ((isnull(`a`.`emp_treasury_id`) or (`a`.`emp_treasury_id` = '')) and (`a`.`employment_type_id` in (3,4))) group by `b`.`district_id`;

-- --------------------------------------------------------

--
-- Structure for view `vw_sanctioned_working_by_hospital`
--
DROP TABLE IF EXISTS `vw_sanctioned_working_by_hospital`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_sanctioned_working_by_hospital` AS select `a`.`id` AS `hospital_id`,`a`.`hospital_name` AS `hospital_name`,ifnull(`b`.`class_I_sanctioned`,0) AS `class_1_sanctioned`,ifnull(`c`.`class_I_working`,0) AS `class_1_working`,(ifnull(`b`.`class_I_sanctioned`,0) - ifnull(`c`.`class_I_working`,0)) AS `class_1_vacant`,ifnull(`d`.`class_II_sanctioned`,0) AS `class_2_sanctioned`,ifnull(`e`.`class_II_working`,0) AS `class_2_working`,(ifnull(`d`.`class_II_sanctioned`,0) - ifnull(`e`.`class_II_working`,0)) AS `class_2_vacant` from ((((`hospitals` `a` left join `vw_class_I_sanctioned` `b` on((`a`.`id` = `b`.`hospital_id`))) left join `vw_class_I_working` `c` on((`a`.`id` = `c`.`hospital_id`))) left join `vw_class_II_sanctioned` `d` on((`a`.`id` = `d`.`hospital_id`))) left join `vw_class_II_working` `e` on((`a`.`id` = `e`.`hospital_id`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;