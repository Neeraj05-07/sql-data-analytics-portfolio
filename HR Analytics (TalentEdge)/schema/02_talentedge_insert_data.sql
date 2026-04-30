-- ============================================================
-- INSERT DEPARTMENTS
-- ============================================================
 
INSERT INTO departments (dept_name, annual_budget, location) VALUES
('Engineering',        95000000.00, 'Bangalore'),
('Product',            55000000.00, 'Bangalore'),
('Sales',              60000000.00, 'Mumbai'),
('Marketing',          35000000.00, 'Mumbai'),
('Human Resources',    18000000.00, 'Pune'),
('Finance',            22000000.00, 'Pune'),
('Operations',         28000000.00, 'Hyderabad'),
('Data & Analytics',   30000000.00, 'Bangalore'),
('Customer Success',   20000000.00, 'Chennai'),
('Legal & Compliance', 12000000.00, 'Delhi');
 
 
-- ============================================================
-- INSERT EMPLOYEES  (200 records)
-- ============================================================
-- Executives / Senior Leadership (no manager_id at this stage)
-- manager_id will be updated after all rows are inserted.
 
INSERT INTO employees
    (full_name, email, dept_id, manager_id, hire_date, salary, job_title, gender, city, employment_status)
VALUES
-- ── ENGINEERING (dept 1) ──────────────────────────────────
('Rajesh Kulkarni',     'rajesh.kulkarni@talentedge.in',   1, NULL,'2019-04-01',3200000,'VP Engineering','Male','Bangalore','Active'),
('Sneha Deshpande',     'sneha.deshpande@talentedge.in',   1,    1,'2019-08-12',1850000,'Engineering Manager','Female','Bangalore','Active'),
('Aditya Verma',        'aditya.verma@talentedge.in',      1,    2,'2020-02-03',1450000,'Senior Engineer','Male','Bangalore','Active'),
('Kavya Menon',         'kavya.menon@talentedge.in',       1,    2,'2020-05-18',1300000,'Senior Engineer','Female','Bangalore','Active'),
('Rohan Bose',          'rohan.bose@talentedge.in',        1,    2,'2021-01-11','1100000','Software Engineer','Male','Bangalore','Active'),
('Nisha Iyer',          'nisha.iyer@talentedge.in',        1,    2,'2021-03-22',1050000,'Software Engineer','Female','Bangalore','Active'),
('Pranav Joshi',        'pranav.joshi@talentedge.in',      1,    2,'2021-07-09',1200000,'Software Engineer','Male','Bangalore','Active'),
('Deepa Nair',          'deepa.nair@talentedge.in',        1,    2,'2021-09-14', 980000,'Junior Engineer','Female','Bangalore','Active'),
('Suresh Pillai',       'suresh.pillai@talentedge.in',     1,    1,'2019-10-01',1950000,'Engineering Manager','Male','Bangalore','Active'),
('Ananya Sharma',       'ananya.sharma@talentedge.in',     1,    9,'2020-06-01',1400000,'Senior Engineer','Female','Bangalore','Active'),
('Nikhil Gupta',        'nikhil.gupta@talentedge.in',      1,    9,'2021-02-14',1150000,'Software Engineer','Male','Bangalore','Active'),
('Pooja Patil',         'pooja.patil@talentedge.in',       1,    9,'2021-06-21',1100000,'Software Engineer','Female','Bangalore','Active'),
('Karthik Reddy',       'karthik.reddy@talentedge.in',     1,    9,'2022-01-10', 950000,'Junior Engineer','Male','Bangalore','Active'),
('Swati Rao',           'swati.rao@talentedge.in',         1,    9,'2022-03-28', 920000,'Junior Engineer','Female','Bangalore','Active'),
('Manish Tiwari',       'manish.tiwari@talentedge.in',     1,    9,'2022-07-04',1250000,'Software Engineer','Male','Bangalore','Active'),
('Ritu Saxena',         'ritu.saxena@talentedge.in',       1,    9,'2022-09-19',1200000,'Software Engineer','Female','Bangalore','Active'),
('Arjun Malhotra',      'arjun.malhotra@talentedge.in',    1,    9,'2023-01-23', 880000,'Junior Engineer','Male','Bangalore','Active'),
('Priya Sinha',         'priya.sinha@talentedge.in',       1,    9,'2023-04-05', 860000,'Junior Engineer','Female','Bangalore','Active'),
('Vivek Choudhary',     'vivek.choudhary@talentedge.in',   1,    9,'2023-07-17',1050000,'Software Engineer','Male','Bangalore','Active'),
('Divya Kapoor',        'divya.kapoor@talentedge.in',      1,    9,'2023-10-02', 830000,'Junior Engineer','Female','Bangalore','Active'),
 
-- ── PRODUCT (dept 2) ──────────────────────────────────────
('Ramesh Nambiar',      'ramesh.nambiar@talentedge.in',    2, NULL,'2019-05-01',2800000,'VP Product','Male','Bangalore','Active'),
('Lakshmi Krishnan',    'lakshmi.krishnan@talentedge.in',  2,   21,'2020-01-15',1700000,'Senior Product Manager','Female','Bangalore','Active'),
('Varun Mehta',         'varun.mehta@talentedge.in',       2,   21,'2020-04-20',1550000,'Senior Product Manager','Male','Bangalore','Active'),
('Sonal Desai',         'sonal.desai@talentedge.in',       2,   22,'2021-02-08',1100000,'Product Manager','Female','Bangalore','Active'),
('Rahul Pandey',        'rahul.pandey@talentedge.in',      2,   22,'2021-05-17',1050000,'Product Manager','Male','Bangalore','Active'),
('Preeti Agarwal',      'preeti.agarwal@talentedge.in',    2,   23,'2021-08-30', 900000,'Associate PM','Female','Bangalore','Active'),
('Siddharth Jain',      'siddharth.jain@talentedge.in',    2,   23,'2022-01-12', 880000,'Associate PM','Male','Bangalore','Active'),
('Meghna Pillai',       'meghna.pillai@talentedge.in',     2,   23,'2022-06-06', 950000,'Product Manager','Female','Bangalore','Active'),
('Arun Chatterjee',     'arun.chatterjee@talentedge.in',   2,   21,'2022-09-01',1200000,'Senior Product Manager','Male','Bangalore','Active'),
('Ritika Sood',         'ritika.sood@talentedge.in',       2,   29,'2023-02-14', 870000,'Associate PM','Female','Bangalore','Active'),
 
-- ── SALES (dept 3) ───────────────────────────────────────
('Dinesh Ahuja',        'dinesh.ahuja@talentedge.in',      3, NULL,'2019-06-01',2600000,'VP Sales','Male','Mumbai','Active'),
('Geeta Shankar',       'geeta.shankar@talentedge.in',     3,   31,'2019-11-11',1600000,'Sales Manager','Female','Mumbai','Active'),
('Vikram Singh',        'vikram.singh@talentedge.in',      3,   31,'2020-03-09',1550000,'Sales Manager','Male','Mumbai','Active'),
('Pooja Rane',          'pooja.rane@talentedge.in',        3,   32,'2020-07-21', 900000,'Senior Sales Exec','Female','Mumbai','Active'),
('Amit Dubey',          'amit.dubey@talentedge.in',        3,   32,'2020-10-14', 870000,'Senior Sales Exec','Male','Mumbai','Active'),
('Hema Iyer',           'hema.iyer@talentedge.in',         3,   32,'2021-01-18', 820000,'Sales Executive','Female','Mumbai','Active'),
('Suraj Naik',          'suraj.naik@talentedge.in',        3,   32,'2021-04-05', 800000,'Sales Executive','Male','Mumbai','Active'),
('Neelam Joshi',        'neelam.joshi@talentedge.in',      3,   33,'2021-07-12', 830000,'Sales Executive','Female','Mumbai','Active'),
('Prakash Bhat',        'prakash.bhat@talentedge.in',      3,   33,'2021-09-30', 810000,'Sales Executive','Male','Mumbai','Active'),
('Sheetal Rao',         'sheetal.rao@talentedge.in',       3,   33,'2022-01-03', 780000,'Sales Executive','Female','Mumbai','Active'),
('Rajan Kapoor',        'rajan.kapoor@talentedge.in',      3,   33,'2022-04-18', 760000,'Sales Executive','Male','Mumbai','Active'),
('Priyanka Ghosh',      'priyanka.ghosh@talentedge.in',    3,   33,'2022-08-01', 800000,'Senior Sales Exec','Female','Mumbai','Active'),
('Harsh Trivedi',       'harsh.trivedi@talentedge.in',     3,   33,'2022-11-07', 780000,'Sales Executive','Male','Mumbai','Active'),
('Mita Shah',           'mita.shah@talentedge.in',         3,   33,'2023-01-16', 750000,'Sales Executive','Female','Mumbai','Active'),
('Yash Agrawal',        'yash.agrawal@talentedge.in',      3,   33,'2023-05-22', 730000,'Sales Executive','Male','Mumbai','Active'),
('Smita Deshpande',     'smita.deshpande@talentedge.in',   3,   33,'2023-08-14', 720000,'Sales Executive','Female','Mumbai','Active'),
 
-- ── MARKETING (dept 4) ────────────────────────────────────
('Kiran Bhatt',         'kiran.bhatt@talentedge.in',       4, NULL,'2019-07-01',2400000,'Marketing Director','Female','Mumbai','Active'),
('Abhishek Roy',        'abhishek.roy@talentedge.in',      4,   47,'2020-02-17',1400000,'Marketing Manager','Male','Mumbai','Active'),
('Tanvi Menon',         'tanvi.menon@talentedge.in',       4,   47,'2020-06-09',1350000,'Marketing Manager','Female','Mumbai','Active'),
('Soham Dey',           'soham.dey@talentedge.in',         4,   48,'2021-03-01', 850000,'Marketing Analyst','Male','Mumbai','Active'),
('Anjali Verma',        'anjali.verma@talentedge.in',      4,   48,'2021-06-14', 820000,'Marketing Analyst','Female','Mumbai','Active'),
('Tejas Kulkarni',      'tejas.kulkarni@talentedge.in',    4,   49,'2021-10-05', 880000,'Content Strategist','Male','Mumbai','Active'),
('Richa Bansal',        'richa.bansal@talentedge.in',      4,   49,'2022-02-21', 860000,'Content Strategist','Female','Mumbai','Active'),
('Gaurav Nair',         'gaurav.nair@talentedge.in',       4,   48,'2022-06-13', 840000,'Marketing Analyst','Male','Mumbai','Active'),
('Pallavi Singh',       'pallavi.singh@talentedge.in',     4,   48,'2022-09-27', 810000,'Marketing Analyst','Female','Mumbai','Active'),
('Dev Rao',             'dev.rao@talentedge.in',           4,   47,'2023-01-30',1100000,'Marketing Manager','Male','Mumbai','Active'),
 
-- ── HUMAN RESOURCES (dept 5) ──────────────────────────────
('Sunita Patel',        'sunita.patel@talentedge.in',      5, NULL,'2019-04-15',2000000,'HR Director','Female','Pune','Active'),
('Mahesh Gaikwad',      'mahesh.gaikwad@talentedge.in',    5,   57,'2019-12-02',1200000,'HR Manager','Male','Pune','Active'),
('Rashmi Joshi',        'rashmi.joshi@talentedge.in',      5,   57,'2020-04-13', 900000,'HR Business Partner','Female','Pune','Active'),
('Nitin Kulkarni',      'nitin.kulkarni@talentedge.in',    5,   58,'2020-09-07', 850000,'Recruiter','Male','Pune','Active'),
('Shalini Das',         'shalini.das@talentedge.in',       5,   58,'2021-01-25', 820000,'Recruiter','Female','Pune','Active'),
('Vikas Shetty',        'vikas.shetty@talentedge.in',      5,   57,'2021-05-17', 950000,'HR Business Partner','Male','Pune','Active'),
('Prachi More',         'prachi.more@talentedge.in',       5,   57,'2022-02-28', 780000,'HR Executive','Female','Pune','Active'),
('Sandip Kamble',       'sandip.kamble@talentedge.in',     5,   58,'2022-08-10', 760000,'Recruiter','Male','Pune','Active'),
('Leena Sawant',        'leena.sawant@talentedge.in',      5,   58,'2023-03-06', 740000,'Recruiter','Female','Pune','Active'),
('Ashok Thosar',        'ashok.thosar@talentedge.in',      5,   57,'2023-07-19', 870000,'HR Business Partner','Male','Pune','Active'),
 
-- ── FINANCE (dept 6) ──────────────────────────────────────
('Veena Krishnamurthy', 'veena.k@talentedge.in',           6, NULL,'2019-05-20',2200000,'Finance Director','Female','Pune','Active'),
('Rajeev Lal',          'rajeev.lal@talentedge.in',        6,   67,'2020-01-06',1400000,'Finance Manager','Male','Pune','Active'),
('Shilpa Apte',         'shilpa.apte@talentedge.in',       6,   67,'2020-05-11',1350000,'Finance Manager','Female','Pune','Active'),
('Sanjay Mukherjee',    'sanjay.mukherjee@talentedge.in',  6,   68,'2020-10-26',1000000,'Senior Financial Analyst','Male','Pune','Active'),
('Gauri Ghosh',         'gauri.ghosh@talentedge.in',       6,   68,'2021-02-08', 950000,'Financial Analyst','Female','Pune','Active'),
('Hemant Joshi',        'hemant.joshi@talentedge.in',      6,   69,'2021-06-01', 970000,'Financial Analyst','Male','Pune','Active'),
('Aarti Patil',         'aarti.patil@talentedge.in',       6,   69,'2021-09-13', 930000,'Financial Analyst','Female','Pune','Active'),
('Ravi Deshpande',      'ravi.deshpande@talentedge.in',    6,   68,'2022-02-14', 880000,'Financial Analyst','Male','Pune','Active'),
('Smriti Sharma',       'smriti.sharma@talentedge.in',     6,   68,'2022-07-04', 860000,'Financial Analyst','Female','Pune','Active'),
('Pankaj Goel',         'pankaj.goel@talentedge.in',       6,   67,'2023-01-09',1100000,'Senior Financial Analyst','Male','Pune','Active'),
 
-- ── OPERATIONS (dept 7) ───────────────────────────────────
('Sunil Pawar',         'sunil.pawar@talentedge.in',       7, NULL,'2019-06-10',2100000,'Operations Director','Male','Hyderabad','Active'),
('Kavitha Reddy',       'kavitha.reddy@talentedge.in',     7,   77,'2020-02-24',1300000,'Ops Manager','Female','Hyderabad','Active'),
('Sriram Rao',          'sriram.rao@talentedge.in',        7,   77,'2020-07-13',1250000,'Ops Manager','Male','Hyderabad','Active'),
('Nandini Srinivasan',  'nandini.s@talentedge.in',         7,   78,'2021-01-04', 850000,'Ops Executive','Female','Hyderabad','Active'),
('Suresh Kumar',        'suresh.kumar@talentedge.in',      7,   78,'2021-03-22', 830000,'Ops Executive','Male','Hyderabad','Active'),
('Latha Narayanan',     'latha.narayanan@talentedge.in',   7,   79,'2021-07-07', 820000,'Ops Executive','Female','Hyderabad','Active'),
('Ramu Pillai',         'ramu.pillai@talentedge.in',       7,   79,'2021-10-18', 800000,'Ops Executive','Male','Hyderabad','Active'),
('Suma Krishnan',       'suma.krishnan@talentedge.in',     7,   78,'2022-03-01', 840000,'Ops Executive','Female','Hyderabad','Active'),
('Manohar Das',         'manohar.das@talentedge.in',       7,   78,'2022-06-20', 815000,'Ops Executive','Male','Hyderabad','Active'),
('Bhavani Iyer',        'bhavani.iyer@talentedge.in',      7,   79,'2023-02-27', 790000,'Ops Executive','Female','Hyderabad','Active'),
 
-- ── DATA & ANALYTICS (dept 8) ─────────────────────────────
('Arjun Mehta',         'arjun.mehta@talentedge.in',       8, NULL,'2019-09-01',2700000,'Head of Analytics','Male','Bangalore','Active'),
('Divyanka Shah',       'divyanka.shah@talentedge.in',     8,   87,'2020-03-16',1600000,'Analytics Manager','Female','Bangalore','Active'),
('Roshan Patel',        'roshan.patel@talentedge.in',      8,   87,'2020-08-03',1550000,'Analytics Manager','Male','Bangalore','Active'),
('Chaitali Das',        'chaitali.das@talentedge.in',      8,   88,'2021-01-19',1150000,'Data Scientist','Female','Bangalore','Active'),
('Harish Nair',         'harish.nair@talentedge.in',       8,   88,'2021-04-12',1100000,'Data Scientist','Male','Bangalore','Active'),
('Ritesh Bose',         'ritesh.bose@talentedge.in',       8,   89,'2021-08-23',1050000,'Data Analyst','Male','Bangalore','Active'),
('Smitha Rao',          'smitha.rao@talentedge.in',        8,   89,'2021-11-08',1000000,'Data Analyst','Female','Bangalore','Active'),
('Gaurav Sharma',       'gaurav.sharma@talentedge.in',     8,   88,'2022-03-14',1200000,'Senior Data Scientist','Male','Bangalore','Active'),
('Preethi Menon',       'preethi.menon@talentedge.in',     8,   88,'2022-06-27',1150000,'Data Scientist','Female','Bangalore','Active'),
('Aakash Srivastava',   'aakash.s@talentedge.in',          8,   89,'2022-10-10', 950000,'Data Analyst','Male','Bangalore','Active'),
('Deepthi Krishnan',    'deepthi.k@talentedge.in',         8,   89,'2023-01-30', 920000,'Data Analyst','Female','Bangalore','Active'),
('Naveen Reddy',        'naveen.reddy@talentedge.in',      8,   87,'2023-05-08',1300000,'Analytics Manager','Male','Bangalore','Active'),
 
-- ── CUSTOMER SUCCESS (dept 9) ─────────────────────────────
('Padma Venkatesh',     'padma.v@talentedge.in',           9, NULL,'2019-10-01',1900000,'CS Director','Female','Chennai','Active'),
('Rajiv Thomas',        'rajiv.thomas@talentedge.in',      9,   99,'2020-04-06',1200000,'CS Manager','Male','Chennai','Active'),
('Suma Balaji',         'suma.balaji@talentedge.in',       9,   99,'2020-09-14',1150000,'CS Manager','Female','Chennai','Active'),
('Vinod Kumar',         'vinod.kumar@talentedge.in',       9,  100,'2021-02-01', 800000,'CS Executive','Male','Chennai','Active'),
('Geetha Natarajan',    'geetha.n@talentedge.in',          9,  100,'2021-05-19', 780000,'CS Executive','Female','Chennai','Active'),
('Senthil Rajan',       'senthil.rajan@talentedge.in',     9,  101,'2021-09-07', 790000,'CS Executive','Male','Chennai','Active'),
('Bhavana Suresh',      'bhavana.suresh@talentedge.in',    9,  101,'2022-01-24', 770000,'CS Executive','Female','Chennai','Active'),
('Kiran Subramanian',   'kiran.sub@talentedge.in',         9,  100,'2022-05-09', 810000,'Senior CS Exec','Male','Chennai','Active'),
('Mythili Ramesh',      'mythili.ramesh@talentedge.in',    9,  100,'2022-08-22', 790000,'Senior CS Exec','Female','Chennai','Active'),
('Pradeep Arumugam',    'pradeep.a@talentedge.in',         9,  101,'2023-03-13', 750000,'CS Executive','Male','Chennai','Active'),
 
-- ── LEGAL & COMPLIANCE (dept 10) ─────────────────────────
('Nalini Varma',        'nalini.varma@talentedge.in',     10, NULL,'2019-11-01',2300000,'Legal Director','Female','Delhi','Active'),
('Anil Batra',          'anil.batra@talentedge.in',       10,  109,'2020-05-04',1500000,'Senior Legal Counsel','Male','Delhi','Active'),
('Shweta Gupta',        'shweta.gupta@talentedge.in',     10,  109,'2020-10-19',1450000,'Senior Legal Counsel','Female','Delhi','Active'),
('Sunil Arora',         'sunil.arora@talentedge.in',      10,  110,'2021-03-15',1050000,'Legal Counsel','Male','Delhi','Active'),
('Kavita Sharma',       'kavita.sharma@talentedge.in',    10,  110,'2021-07-28',1000000,'Legal Counsel','Female','Delhi','Active'),
('Deepak Malhotra',     'deepak.malhotra@talentedge.in',  10,  111,'2022-01-17', 900000,'Compliance Analyst','Male','Delhi','Active'),
('Rekha Gupta',         'rekha.gupta@talentedge.in',      10,  111,'2022-05-02', 870000,'Compliance Analyst','Female','Delhi','Active'),
('Mandeep Singh',       'mandeep.singh@talentedge.in',    10,  110,'2022-09-26',1100000,'Senior Legal Counsel','Male','Delhi','Active'),
('Seema Bhatia',        'seema.bhatia@talentedge.in',     10,  110,'2023-02-06',1050000,'Legal Counsel','Female','Delhi','Active'),
('Tarun Anand',         'tarun.anand@talentedge.in',      10,  109,'2023-06-12',1300000,'Senior Legal Counsel','Male','Delhi','Active'),
 
-- ── EXITED EMPLOYEES (status = Inactive) ─────────────────
('Amit Yadav',          'amit.yadav@talentedge.in',        1,    2,'2020-07-01',1180000,'Software Engineer','Male','Bangalore','Inactive'),
('Sara John',           'sara.john@talentedge.in',         3,   32,'2021-03-15', 870000,'Sales Executive','Female','Mumbai','Inactive'),
('Ravi Nambiar',        'ravi.nambiar@talentedge.in',      1,    9,'2021-09-01',1380000,'Senior Engineer','Male','Bangalore','Inactive'),
('Lata Menon',          'lata.menon@talentedge.in',        6,   68,'2021-07-20', 880000,'Financial Analyst','Female','Pune','Inactive'),
('Dev Saxena',          'dev.saxena@talentedge.in',        2,   22,'2022-01-10',1120000,'Product Manager','Male','Bangalore','Inactive'),
('Anita Rao',           'anita.rao@talentedge.in',         4,   48,'2022-04-05', 850000,'Marketing Analyst','Female','Mumbai','Inactive'),
('Manoj Kumar',         'manoj.kumar@talentedge.in',       8,   88,'2022-06-30',1100000,'Data Scientist','Male','Bangalore','Inactive'),
('Priya Tiwari',        'priya.tiwari@talentedge.in',      1,    2,'2022-10-01',1350000,'Senior Engineer','Female','Bangalore','Inactive'),
('Gaurav Jain',         'gaurav.jain@talentedge.in',       3,   33,'2023-01-31', 810000,'Sales Executive','Male','Mumbai','Inactive'),
('Deepa Krishnan',      'deepa.krishnan@talentedge.in',    9,  100,'2023-04-30', 790000,'CS Executive','Female','Chennai','Inactive'),
('Rohit Verma',         'rohit.verma@talentedge.in',       1,    9,'2023-06-15',1200000,'Software Engineer','Male','Bangalore','Inactive'),
('Meena Rajan',         'meena.rajan@talentedge.in',       5,   57,'2023-07-31', 870000,'HR Business Partner','Female','Pune','Inactive'),
('Arpit Soni',          'arpit.soni@talentedge.in',        2,   23,'2023-08-15', 960000,'Product Manager','Male','Bangalore','Inactive'),
('Vandana Pillai',      'vandana.pillai@talentedge.in',    7,   78,'2023-09-30', 820000,'Ops Executive','Female','Hyderabad','Inactive'),
('Saurabh Gupta',       'saurabh.gupta@talentedge.in',     8,   89,'2023-10-31', 980000,'Data Analyst','Male','Bangalore','Inactive'),
('Radha Sharma',        'radha.sharma@talentedge.in',      4,   49,'2023-11-30', 840000,'Content Strategist','Female','Mumbai','Inactive'),
('Kamal Narayan',       'kamal.narayan@talentedge.in',     6,   68,'2023-12-31',1050000,'Senior Financial Analyst','Male','Pune','Inactive'),
('Sunanda Nair',        'sunanda.nair@talentedge.in',      1,    2,'2024-01-15',1450000,'Engineering Manager','Female','Bangalore','Inactive'),
('Tarun Bhat',          'tarun.bhat@talentedge.in',        3,   32,'2024-02-29', 920000,'Senior Sales Exec','Male','Mumbai','Inactive'),
('Usha Iyengar',        'usha.iyengar@talentedge.in',     10,  110,'2024-03-31',1070000,'Legal Counsel','Female','Delhi','Inactive');
 
 
-- ============================================================
--  INSERT PERFORMANCE REVIEWS
-- ============================================================
 
INSERT INTO performance_reviews (emp_id, review_year, review_quarter, rating, reviewer_id) VALUES
-- Engineering team
(3,2022,4,4.8,2),(4,2022,4,4.5,2),(5,2022,4,3.2,2),(6,2022,4,4.6,2),
(7,2022,4,3.8,2),(8,2022,4,3.5,2),(10,2022,4,4.9,9),(11,2022,4,3.6,9),
(12,2022,4,4.4,9),(13,2022,4,3.1,9),(14,2022,4,4.2,9),(15,2022,4,3.9,9),
(3,2023,4,4.9,2),(4,2023,4,4.6,2),(5,2023,4,3.5,2),(6,2023,4,4.8,2),
(7,2023,4,3.7,2),(8,2023,4,3.3,2),(10,2023,4,5.0,9),(11,2023,4,3.4,9),
(12,2023,4,4.5,9),(13,2023,4,3.0,9),(14,2023,4,4.1,9),(15,2023,4,4.0,9),
(16,2023,4,3.8,9),(17,2023,4,2.9,9),(18,2023,4,4.3,9),(19,2023,4,3.6,9),
-- Product team
(22,2022,4,4.7,21),(23,2022,4,4.5,21),(24,2022,4,3.8,22),(25,2022,4,3.6,22),
(26,2022,4,4.2,23),(27,2022,4,3.9,23),(28,2022,4,4.0,23),
(22,2023,4,4.8,21),(23,2023,4,4.6,21),(24,2023,4,4.0,22),(25,2023,4,3.7,22),
(26,2023,4,4.3,23),(27,2023,4,4.0,23),(28,2023,4,4.1,23),(29,2023,4,3.5,21),
(30,2023,4,3.3,29),
-- Sales team
(32,2022,4,4.6,31),(33,2022,4,4.4,31),(34,2022,4,3.9,32),(35,2022,4,3.7,32),
(36,2022,4,3.5,32),(37,2022,4,3.3,32),(38,2022,4,3.8,33),(39,2022,4,3.6,33),
(40,2022,4,3.4,33),
(32,2023,4,4.7,31),(33,2023,4,4.5,31),(34,2023,4,4.0,32),(35,2023,4,3.8,32),
(36,2023,4,3.6,32),(37,2023,4,3.4,32),(38,2023,4,3.9,33),(39,2023,4,3.7,33),
(40,2023,4,3.5,33),(41,2023,4,3.3,33),(42,2023,4,4.1,33),(43,2023,4,3.2,33),
-- Marketing
(48,2022,4,4.5,47),(49,2022,4,4.3,47),(50,2022,4,3.6,48),(51,2022,4,3.4,48),
(52,2022,4,3.8,49),(53,2022,4,3.6,49),
(48,2023,4,4.6,47),(49,2023,4,4.4,47),(50,2023,4,3.7,48),(51,2023,4,3.5,48),
-- Data & Analytics
(88,2022,4,4.9,87),(89,2022,4,4.7,87),(90,2022,4,4.5,88),(91,2022,4,4.3,88),
(92,2022,4,3.8,89),(93,2022,4,3.6,89),
(88,2023,4,5.0,87),(89,2023,4,4.8,87),(90,2023,4,4.7,88),(91,2023,4,4.5,88),
(92,2023,4,4.0,89),(93,2023,4,3.8,89),(94,2023,4,4.6,88),(95,2023,4,4.4,88),
(96,2023,4,3.9,89),(97,2023,4,3.7,89),(98,2023,4,4.8,87);
 
 
-- ============================================================
--  INSERT LEAVES
-- ============================================================
 
INSERT INTO leaves (emp_id, leave_type, start_date, end_date, status) VALUES
(3,'sick','2023-02-06','2023-02-07','approved'),
(4,'casual','2023-04-10','2023-04-11','approved'),
(5,'earned','2023-06-01','2023-06-10','approved'),
(6,'sick','2023-01-20','2023-01-22','approved'),
(10,'earned','2023-07-03','2023-07-12','approved'),
(11,'sick','2023-03-14','2023-03-15','approved'),
(12,'maternity','2023-05-01','2023-08-01','approved'),
(22,'casual','2023-08-21','2023-08-22','approved'),
(24,'sick','2023-09-04','2023-09-06','approved'),
(32,'earned','2023-10-02','2023-10-11','approved'),
(36,'sick','2023-02-13','2023-02-14','approved'),
(40,'casual','2023-05-08','2023-05-08','approved'),
(57,'sick','2023-03-20','2023-03-21','approved'),
(59,'maternity','2023-06-15','2023-09-15','approved'),
(67,'earned','2023-11-06','2023-11-10','approved'),
(70,'sick','2023-04-03','2023-04-04','approved'),
(77,'casual','2023-07-17','2023-07-18','approved'),
(88,'earned','2023-08-14','2023-08-18','approved'),
(90,'sick','2023-01-09','2023-01-10','approved'),
(99,'paternity','2023-09-11','2023-09-25','approved'),
(4,'earned','2022-12-26','2023-01-02','approved'),
(6,'unpaid','2023-10-16','2023-10-20','approved'),
(47,'casual','2023-11-13','2023-11-14','approved'),
(87,'sick','2023-12-04','2023-12-05','approved'),
(109,'earned','2023-06-19','2023-06-23','approved');
 
 
-- ============================================================
--  INSERT ATTRITION  (email subquery — always safe)
-- ============================================================
 
INSERT INTO attrition (emp_id, exit_date, exit_reason, exit_type) VALUES
((SELECT emp_id FROM employees WHERE email='amit.yadav@talentedge.in'),
 '2022-09-30','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='sara.john@talentedge.in'),
 '2022-12-15','dissatisfied with pay','voluntary'),
((SELECT emp_id FROM employees WHERE email='ravi.nambiar@talentedge.in'),
 '2023-02-28','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='lata.menon@talentedge.in'),
 '2022-08-31','personal reasons','voluntary'),
((SELECT emp_id FROM employees WHERE email='dev.saxena@talentedge.in'),
 '2022-11-30','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='anita.rao@talentedge.in'),
 '2023-06-30','dissatisfied with pay','voluntary'),
((SELECT emp_id FROM employees WHERE email='manoj.kumar@talentedge.in'),
 '2022-07-31','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='priya.tiwari@talentedge.in'),
 '2023-09-30','conflict with manager','voluntary'),
((SELECT emp_id FROM employees WHERE email='gaurav.jain@talentedge.in'),
 '2023-12-31','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='deepa.krishnan@talentedge.in'),
 '2023-05-31','dissatisfied with pay','voluntary'),
((SELECT emp_id FROM employees WHERE email='rohit.verma@talentedge.in'),
 '2023-07-31','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='meena.rajan@talentedge.in'),
 '2023-09-30','lack of growth','voluntary'),
((SELECT emp_id FROM employees WHERE email='arpit.soni@talentedge.in'),
 '2023-10-31','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='vandana.pillai@talentedge.in'),
 '2023-12-15','personal reasons','voluntary'),
((SELECT emp_id FROM employees WHERE email='saurabh.gupta@talentedge.in'),
 '2024-01-31','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='radha.sharma@talentedge.in'),
 '2024-02-29','dissatisfied with pay','voluntary'),
((SELECT emp_id FROM employees WHERE email='kamal.narayan@talentedge.in'),
 '2024-03-31','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='sunanda.nair@talentedge.in'),
 '2024-01-31','conflict with manager','voluntary'),
((SELECT emp_id FROM employees WHERE email='tarun.bhat@talentedge.in'),
 '2024-02-29','better opportunity','voluntary'),
((SELECT emp_id FROM employees WHERE email='usha.iyengar@talentedge.in'),
 '2024-03-31','lack of growth','voluntary');
 
-- ============================================================
--  INSERT HIRING PIPELINE
-- ============================================================
 
INSERT INTO hiring (dept_id, job_title, applied_date, stage, offer_date, joined_date, source) VALUES
(1,'Software Engineer',   '2023-01-05','joined',   '2023-01-28','2023-02-15','LinkedIn'),
(1,'Software Engineer',   '2023-01-08','rejected',  NULL,         NULL,        'Naukri'),
(1,'Senior Engineer',     '2023-01-15','joined',   '2023-02-20','2023-03-06','Referral'),
(1,'Junior Engineer',     '2023-02-01','screening', NULL,         NULL,        'Campus'),
(1,'Software Engineer',   '2023-02-10','joined',   '2023-03-05','2023-03-20','LinkedIn'),
(1,'Senior Engineer',     '2023-03-01','interview', NULL,         NULL,        'Agency'),
(1,'Junior Engineer',     '2023-03-15','joined',   '2023-04-10','2023-04-25','Campus'),
(1,'Software Engineer',   '2023-04-01','offer',    '2023-05-01', NULL,        'LinkedIn'),
(2,'Product Manager',     '2023-01-10','joined',   '2023-02-08','2023-02-22','LinkedIn'),
(2,'Associate PM',        '2023-01-18','rejected',  NULL,         NULL,        'Naukri'),
(2,'Senior PM',           '2023-02-05','joined',   '2023-03-10','2023-03-25','Referral'),
(2,'Product Manager',     '2023-03-01','interview', NULL,         NULL,        'Agency'),
(3,'Sales Executive',     '2023-01-12','joined',   '2023-01-30','2023-02-10','Naukri'),
(3,'Senior Sales Exec',   '2023-01-20','joined',   '2023-02-15','2023-03-01','Referral'),
(3,'Sales Executive',     '2023-02-08','rejected',  NULL,         NULL,        'LinkedIn'),
(3,'Sales Executive',     '2023-03-05','joined',   '2023-03-28','2023-04-10','Naukri'),
(3,'Sales Executive',     '2023-04-01','screening', NULL,         NULL,        'Company Website'),
(4,'Marketing Analyst',   '2023-01-14','joined',   '2023-02-12','2023-02-27','LinkedIn'),
(4,'Marketing Manager',   '2023-02-01','joined',   '2023-03-08','2023-03-22','Referral'),
(4,'Content Strategist',  '2023-02-20','rejected',  NULL,         NULL,        'Agency'),
(4,'Marketing Analyst',   '2023-03-10','interview', NULL,         NULL,        'Naukri'),
(5,'Recruiter',           '2023-01-16','joined',   '2023-02-10','2023-02-24','LinkedIn'),
(5,'HR Business Partner', '2023-02-14','joined',   '2023-03-15','2023-04-01','Referral'),
(5,'Recruiter',           '2023-03-01','screening', NULL,         NULL,        'Campus'),
(6,'Financial Analyst',   '2023-01-19','joined',   '2023-02-18','2023-03-04','LinkedIn'),
(6,'Senior Fin Analyst',  '2023-02-06','joined',   '2023-03-12','2023-03-27','Referral'),
(6,'Financial Analyst',   '2023-03-14','rejected',  NULL,         NULL,        'Agency'),
(7,'Ops Executive',       '2023-01-22','joined',   '2023-02-20','2023-03-06','Naukri'),
(7,'Ops Executive',       '2023-02-17','screening', NULL,         NULL,        'Company Website'),
(8,'Data Analyst',        '2023-01-11','joined',   '2023-02-09','2023-02-23','LinkedIn'),
(8,'Data Scientist',      '2023-01-24','joined',   '2023-02-28','2023-03-15','Referral'),
(8,'Data Analyst',        '2023-02-12','rejected',  NULL,         NULL,        'Naukri'),
(8,'Senior Data Sci',     '2023-03-06','offer',    '2023-04-10', NULL,        'LinkedIn'),
(9,'CS Executive',        '2023-01-17','joined',   '2023-02-14','2023-02-28','Naukri'),
(9,'Senior CS Exec',      '2023-02-21','joined',   '2023-03-20','2023-04-03','Referral'),
(9,'CS Executive',        '2023-03-09','screening', NULL,         NULL,        'Campus'),
(10,'Legal Counsel',      '2023-01-13','joined',   '2023-02-11','2023-02-25','LinkedIn'),
(10,'Sr Legal Counsel',   '2023-02-08','joined',   '2023-03-14','2023-03-28','Referral'),
(10,'Compliance Analyst', '2023-03-20','rejected',  NULL,         NULL,        'Agency');

-- ==================================================================    
-- SUCCESS: Data insertion completed for all tables
-- ==================================================================
 