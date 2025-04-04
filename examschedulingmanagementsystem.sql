-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 06:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examschedulingmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `Lec_ID` char(10) NOT NULL,
  `Sub_Code` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`Lec_ID`, `Sub_Code`) VALUES
('10010010', 'ECP1016'),
('10010010', 'EEM1016'),
('10010056', 'THI2211'),
('10010056', 'TOS6113'),
('10010056', 'TPR2251'),
('10012001', 'UDL3612'),
('10020011', 'UCL3612'),
('10025008', 'BDB3024'),
('10025008', 'BME1014'),
('10025008', 'DBS5024'),
('10030078', 'DWD5034'),
('10030510', 'ECT1016'),
('10036002', 'TOP2121'),
('10036002', 'TPR2251'),
('10040021', 'TCL3161'),
('10050032', 'BBB1014'),
('10050034', 'ECP1016'),
('10050034', 'ECT1026'),
('10050921', 'UPI3712'),
('10054306', 'DBD5024'),
('10054306', 'DCS5144'),
('10060021', 'TCL3161'),
('10060021', 'UEQ3612'),
('10078009', 'TDB6113'),
('10078009', 'TMA1111'),
('10078009', 'TML2221');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Book_Code` varchar(6) NOT NULL,
  `Book_Date` date NOT NULL,
  `Book_Stime` time NOT NULL,
  `Book_Etime` time NOT NULL,
  `Venue_Code` varchar(8) NOT NULL,
  `Sub_Code` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Book_Code`, `Book_Date`, `Book_Stime`, `Book_Etime`, `Venue_Code`, `Sub_Code`) VALUES
('MBO206', '2023-07-14', '10:30:00', '13:00:00', 'MEMR0001', 'TMA1111'),
('MBO213', '2023-07-26', '08:30:00', '10:30:00', 'MCMR0001', 'TOS6113'),
('MBO230', '2023-08-15', '10:00:00', '12:00:00', 'MBMR1022', 'BDB3024'),
('MBO235', '2023-08-25', '14:00:00', '17:30:00', 'MLMR0002', 'ECT1026'),
('MBO271', '2023-09-08', '08:00:00', '10:00:00', 'MSMX0001', 'EEM1016'),
('MBO295', '2023-09-19', '09:30:00', '12:00:00', 'MSMX0003', 'UEQ3612'),
('MBO307', '2023-09-27', '16:00:00', '18:00:00', 'MAMR2001', 'BME1014'),
('MBO310', '2023-09-29', '08:00:00', '10:00:00', 'MNCR1001', 'TOP2121'),
('MBO365', '2023-10-19', '13:00:00', '17:00:00', 'MLMR0002', 'ECT1016'),
('MBO371', '2023-10-23', '11:00:00', '13:30:00', 'MCMR0001', 'UCL3612'),
('MBO386', '2023-11-07', '09:00:00', '11:30:00', 'MSMX0002', 'ECP1016'),
('MBO392', '2023-11-17', '09:00:00', '14:00:00', 'MNCR1001', 'THI2211'),
('MBO398', '2023-11-29', '10:30:00', '12:30:00', 'MAMR2014', 'BMR1014'),
('MBO411', '2023-12-06', '15:00:00', '17:00:00', 'MAMR2001', 'BBB1014'),
('MBO444', '2023-12-29', '09:00:00', '11:30:00', 'MEMR0001', 'TCL3161'),
('MBO458', '2024-01-04', '19:30:00', '22:00:00', 'MCMR0001', 'UDL3612'),
('MBO467', '2024-01-12', '09:00:00', '11:00:00', 'MSMX0004', 'ECT1016'),
('MBO473', '2024-01-23', '11:30:00', '15:00:00', 'MSMX0002', 'TML2221');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Fac_Code` varchar(4) NOT NULL,
  `Fac_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Fac_Code`, `Fac_Name`) VALUES
('FET', 'Faculty of Engineering & Technology'),
('FIST', 'Faculty of Information Science & Technology'),
('FOB', 'Faculty of Business'),
('FOL', 'Faculty of Law');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `Lec_ID` char(10) NOT NULL,
  `Lec_Name` varchar(50) DEFAULT NULL,
  `Lec_Address` varchar(150) DEFAULT NULL,
  `Lec_Ctnum` varchar(12) DEFAULT NULL,
  `Fac_Code` varchar(4) NOT NULL,
  `Lec_Email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`Lec_ID`, `Lec_Name`, `Lec_Address`, `Lec_Ctnum`, `Fac_Code`, `Lec_Email`) VALUES
('10010010', 'Edmund Poy Jia Tong', '290, Jalan Perak 2, Taman Bukit Indah, 81000 Kulai, Johor', '010-8479930', 'FET', 'edmund@mmu.edu.my'),
('10010056', 'Edward Anthony Masen', '34, Jalan Ros 2, Batu Gajah, 77300 Merlimau, Melaka', '010-6941314', 'FIST', 'edward@mmu.edu.my'),
('10012001', 'Muhammad Syahmi bin Hassim', '55, Jalan Bunga Kekwa 7, Taman Perak, 71800 Nilai, Negeri Sembilan', '010-8619250', 'FOL', 'syahmi@mmu.edu.my'),
('10020011', 'Liew Xin Tong', '308, Jalan Intan 5, Taman Matahari, 80200 Danga Bay, Johor', '018-7627072', 'FOL', 'xtliew@mmu.edu.my'),
('10025008', 'Michelle Lai Xue Yee', '301, Jalan Besar, Kampung Merbau, 32400 Ayer Tawar, Perak', '012-7112205', 'FOB', 'xylai@mmu.edu.my'),
('10030078', 'Lee Wai Siew', '89, Jalan Mangga 3, Kampung Jelapang, 21450, Chalok, Terengganu', '017-3428510', 'FOB', 'wslee@mmu.edu.my'),
('10030510', 'Tjeong Kae Fu', '78, Jalan Anggerik 4, Taman Aman, 12300 Butterworth, Pulau Pinang', '011-94127878', 'FET', 'kftjeong@mmu.edu.my'),
('10036002', 'Lim Yew Wei', '32, Jalan Orkid 6, Taman Dusun, 01504 Kangar, PerliS', '010-7590413', 'FIST', 'ywlim@mmu.edu.my'),
('10040021', 'Leonard Chang Kok Qiang', '35, Jalan Orkid, Taman Indah, 73000 Tampin, Negeri Sembilan', '010-7781202', 'FOL', 'leonard@mmu.edu.my'),
('10050032', 'Nur Elisya Nabila binti Azlan', '28, Jalan Bunga Matahari, Kampung Melayu, 05710 Alor Setar, Kedah', '016-5463211', 'FOB', 'nurelisya@mmu.edu.my'),
('10050034', 'Chia Yi Feng', '107, Jalan Durian 4, Kampung Pedas, 71400, Rembau, Negeri Sembilan', '010-8409902', 'FET', 'yfchia@mmu.edu.my'),
('10050921', 'Joel Jeyamaran a/l Sathya Maran', '81, Jalan Borneo, Borneo Paradise, 88200 Kota Kinabalu, Sabah', '012-7080681', 'FOL', 'joeljeyamaran@mmu.edu.my'),
('10054306', 'Aziera Natasya Binti Isham Muddin', '58, Jalan Bunga Mawar 9, 81100 Bandar Dato Onn, Johor', '010-5568088', 'FOB', 'aziera@mmu.edu.my'),
('10060021', 'Tan Suh Shy', '101, Jalan TT5, Taman Titi, 71650 Titi, Negeri Sembilan', '012-5130208', 'FOL', 'sstan@mmu.edu.my'),
('10078009', 'Hari Tharan a/l Sree Thren', '76, Jalan Gereja, Taman Emas, 32400 Ayer Tawar, Perak', '011-78004563', 'FIST', 'haritharan@mmu.edu.my');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Std_ID` char(10) NOT NULL,
  `Sub_Code` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Std_ID`, `Sub_Code`) VALUES
('1211108211', 'BBB1014'),
('1211108211', 'BDB3024'),
('1211108211', 'BME1014'),
('1211108211', 'BMR1014'),
('1211109079', 'TCP6114'),
('1211109079', 'TDB6113'),
('1211109079', 'TMA1111'),
('1211109079', 'TOS6113'),
('1211109425', 'TCP6114'),
('1211109425', 'TDB6113'),
('1211109425', 'TMA1111'),
('1211109425', 'TOS6113'),
('1211109457', 'TCP6114'),
('1211109457', 'TDB6113'),
('1211109457', 'TMA1111'),
('1211109457', 'TOS6113'),
('1211109738', 'TCP6114'),
('1211109738', 'TDB6113'),
('1211109738', 'TMA1111'),
('1211109738', 'TOS6113'),
('1211109997', 'TCP6114'),
('1211109997', 'TDB6113'),
('1211109997', 'TMA1111'),
('1211109997', 'TOS6113'),
('1211110647', 'TCP6114'),
('1211110647', 'TDB6113'),
('1211110647', 'TMA1111'),
('1211110647', 'TOS6113'),
('1211111161', 'BBB1014'),
('1211111161', 'BDB3024'),
('1211111161', 'BME1014'),
('1211111161', 'BMR1014'),
('1211111431', 'UCL3612'),
('1211111431', 'UDL3612'),
('1211111431', 'UEQ3612'),
('1211111431', 'UPI3712'),
('1211111545', 'UCL3612'),
('1211111545', 'UDL3612'),
('1211111545', 'UEQ3612'),
('1211111545', 'UPI3712'),
('1211111620', 'BBB1014'),
('1211111620', 'BDB3024'),
('1211111620', 'BME1014'),
('1211111620', 'BMR1014'),
('1211111730', 'TCP6114'),
('1211111730', 'TDB6113'),
('1211111730', 'TMA1111'),
('1211111730', 'TOS6113'),
('1211116788', 'TCP6114'),
('1211116788', 'TDB6113'),
('1211116788', 'TMA1111'),
('1211116788', 'TOS6113'),
('1211156395', 'TCP6114'),
('1211156395', 'TDB6113'),
('1211156395', 'TMA1111'),
('1211156395', 'TOS6113'),
('1211163749', 'UCL3612'),
('1211163749', 'UDL3612'),
('1211163749', 'UEQ3612'),
('1211163749', 'UPI3712'),
('1211163849', 'UCL3612'),
('1211163849', 'UDL3612'),
('1211163849', 'UEQ3612'),
('1211163849', 'UPI3712'),
('1211164820', 'BBB1014'),
('1211164820', 'BDB3024'),
('1211164820', 'BME1014'),
('1211164820', 'BMR1014'),
('1211164920', 'UCL3612'),
('1211164920', 'UDL3612'),
('1211164920', 'UEQ3612'),
('1211164920', 'UPI3712'),
('1211175830', 'TCP6114'),
('1211175830', 'TDB6113'),
('1211175830', 'TMA1111'),
('1211175830', 'TOS6113'),
('1221106113', 'DBD5024'),
('1221106113', 'DBS5024'),
('1221106113', 'DCS5144'),
('1221106113', 'DWD5034'),
('1221108316', 'ECP1016'),
('1221108316', 'ECT1016'),
('1221108316', 'ECT1026'),
('1221108316', 'EEM1016'),
('1221109172', 'DBD5024'),
('1221109172', 'DBS5024'),
('1221109172', 'DCS5144'),
('1221109172', 'DWD5034'),
('1221109328', 'THI2211'),
('1221109328', 'TML2221'),
('1221109328', 'TOP2121'),
('1221109328', 'TPR2251'),
('1221163823', 'DBD5024'),
('1221163823', 'DBS5024'),
('1221163823', 'DCS5144'),
('1221163823', 'DWD5034'),
('1221164829', 'UCL3612'),
('1221164829', 'UDL3612'),
('1221164829', 'UEQ3612'),
('1221164829', 'UPI3712'),
('1221165739', 'UCL3612'),
('1221165739', 'UDL3612'),
('1221165739', 'UEQ3612'),
('1221165739', 'UPI3712'),
('1221167492', 'DBD5024'),
('1221167492', 'DBS5024'),
('1221167492', 'DCS5144'),
('1221167492', 'DWD5034'),
('1221170890', 'ECP1016'),
('1221170890', 'ECT1016'),
('1221170890', 'ECT1026'),
('1221170890', 'EEM1016'),
('1221174903', 'UCL3612'),
('1221174903', 'UDL3612'),
('1221174903', 'UEQ3612'),
('1221174903', 'UPI3712'),
('1221176290', 'DBD5024'),
('1221176290', 'DBS5024'),
('1221176290', 'DCS5144'),
('1221176290', 'DWD5034'),
('1221176320', 'ECP1016'),
('1221176320', 'ECT1016'),
('1221176320', 'ECT1026'),
('1221176320', 'EEM1016'),
('1221180457', 'UCL3612'),
('1221180457', 'UDL3612'),
('1221180457', 'UEQ3612'),
('1221180457', 'UPI3712'),
('1221180462', 'ECP1016'),
('1221180462', 'ECT1016'),
('1221180462', 'ECT1026'),
('1221180462', 'EEM1016'),
('1221190438', 'ECP1016'),
('1221190438', 'ECT1016'),
('1221190438', 'ECT1026'),
('1221190438', 'EEM1016'),
('1231106320', 'DBD5024'),
('1231106320', 'DBS5024'),
('1231106320', 'DCS5144'),
('1231106320', 'DWD5034'),
('1231107235', 'UCL3612'),
('1231107235', 'UDL3612'),
('1231107235', 'UEQ3612'),
('1231107235', 'UPI3712'),
('1231109211', 'THI2211'),
('1231109211', 'TML2221'),
('1231109211', 'TOP2121'),
('1231109211', 'TPR2251'),
('1231109254', 'ECP1016'),
('1231109254', 'ECT1016'),
('1231109254', 'ECT1026'),
('1231109254', 'EEM1016'),
('1231110439', 'UCL3612'),
('1231110439', 'UDL3612'),
('1231110439', 'UEQ3612'),
('1231110439', 'UPI3712'),
('1231110671', 'DBD5024'),
('1231110671', 'DBS5024'),
('1231110671', 'DCS5144'),
('1231110671', 'DWD5034'),
('1231110780', 'UCL3612'),
('1231110780', 'UDL3612'),
('1231110780', 'UEQ3612'),
('1231110780', 'UPI3712'),
('1231111903', 'DBD5024'),
('1231111903', 'DBS5024'),
('1231111903', 'DCS5144'),
('1231111903', 'DWD5034'),
('1231145307', 'UCL3612'),
('1231145307', 'UDL3612'),
('1231145307', 'UEQ3612'),
('1231145307', 'UPI3712'),
('1231152803', 'DBD5024'),
('1231152803', 'DBS5024'),
('1231152803', 'DCS5144'),
('1231152803', 'DWD5034'),
('1231164824', 'DBD5024'),
('1231164824', 'DBS5024'),
('1231164824', 'DCS5144'),
('1231164824', 'DWD5034'),
('1231174923', 'BBB1014'),
('1231174923', 'BDB3024'),
('1231174923', 'BME1014'),
('1231174923', 'BMR1014'),
('1231174930', 'DBD5024'),
('1231174930', 'DBS5024'),
('1231174930', 'DCS5144'),
('1231174930', 'DWD5034');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Std_ID` char(10) NOT NULL,
  `Std_Name` varchar(50) DEFAULT NULL,
  `Std_Birth` date DEFAULT NULL,
  `Std_IC` varchar(14) DEFAULT NULL,
  `Std_Ctnum` varchar(12) DEFAULT NULL,
  `Std_Address` varchar(150) DEFAULT NULL,
  `Fac_Code` varchar(4) NOT NULL,
  `Std_Nation` varchar(20) DEFAULT NULL,
  `Std_Grade` decimal(4,2) DEFAULT NULL,
  `Std_InMonth` varchar(2) DEFAULT NULL,
  `Std_Email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Std_ID`, `Std_Name`, `Std_Birth`, `Std_IC`, `Std_Ctnum`, `Std_Address`, `Fac_Code`, `Std_Nation`, `Std_Grade`, `Std_InMonth`, `Std_Email`) VALUES
('1211108211', 'Joey Xu', '2004-03-16', 'EF7800400', '011-45560920', 'C-15-02, Jalan D1, Ixora Apartment, 75450, Bukit Beruang, Melaka', 'FOB', 'Chinese', 2.87, '8', '1211108211@student.mmu.edu.my'),
('1211109079', 'Goh Peng Yuan', '2004-05-07', '040507-04-0295', '010-2069712', '97, Jalan Seri Telok Emas 1, Taman Telok Emas, 75460 Melaka', 'FIST', 'Malaysian', 3.89, '8', '1211109079@student.mmu.edu.my'),
('1211109372', 'Syafiq Khuzairy bin Hazrul Nizam', '2004-02-23', 'S865498E', '011-45392367', 'A-04-02, Jalan D1, Ixora Apartment, 75450, Bukit Beruang, Melaka', 'FET', 'Singaporean', 3.87, '8', '1211109372@student.mmu.edu.my'),
('1211109425', 'Chan Jia Xuan', '2004-04-18', '040418-01-0780', '010-8369090', '287, Jalan Perak 3, Taman Bersatu, 81000 Kulai, Johor', 'FIST', 'Malaysian', 3.55, '8', '1211109425@student.mmu.edu.my'),
('1211109457', 'Do Wai Lung', '2004-03-31', '040331-01-0147', '011-10599609', '28, Jalan Berlian 5, Taman Berlian, 83700 Yong Peng, Johor', 'FIST', 'Malaysian', 4.00, '8', '1211109457@student.mmu.edu.my'),
('1211109738', 'Phung Yi Xuan', '2004-05-30', '040530-01-0262', '010-8809679', 'D-15-01, Jalan D1, Ixora Apartment, 75450 Bukit Beruang, Melaka', 'FIST', 'Malaysian', 3.90, '8', '1211109738@student.mmu.edu.my'),
('1211109997', 'Tan Zhi Heng', '2004-09-22', '040922-01-8425', '016-9023909', 'JC 2209 Jalan Bukit Beruang, Fasa 9 Bukit Beruang 75450, Melaka', 'FIST', 'Malaysian', 3.76, '8', '1211109997@student.mmu.edu.my'),
('1211110647', 'Chong Zhi Tian', '2004-11-19', '041119-05-0058', '011-10988136', '6772, Taman Clonlee, 73000 Tampin, Negeri Sembilan', 'FIST', 'Malaysian', 3.99, '8', '1211110647@student.mmu.edu.my'),
('1211111161', 'Lim Jia Xin', '2004-06-02', '040602-04-0146', '011-15358776', '29, Jalan Orkid 2, Taman Ampang, 73000 Tampin, Negeri Sembilan', 'FOB', 'Malaysian', 2.99, '8', '1211111161@student.mmu.edu.my'),
('1211111431', 'Siti Nur Shakinah binti Sulaiman', '2004-04-02', '040402-01-4322', '010-4322891', '32, Jalan Bakti 2, Kampung Melayu, 81000 Kulai, Johor', 'FOL', 'Malaysian', 3.36, '8', '1211111431@student.mmu.edu.my'),
('1211111545', 'Li Ping Ho', '2004-01-26', 'EF1260892', '011-92014532', 'B-16-02, Jalan D1, Ixora Apartment, 75450, Bukit Beruang, Melaka', 'FOL', 'Chinese', 3.54, '8', '1211111545@student.mmu.edu.my'),
('1211111620', 'Anies Sofea binti Mohd Najib', '2004-11-27', '041127-08-3340', '016-89329903', '23, Jalan Lumut 4, Lumut, 32000 Sitiawan, Perak', 'FOB', 'Malaysian', 3.32, '8', '1211111620@student.mmu.edu.my'),
('1211111730', 'Chang Hui Ming', '2004-09-29', '040929-05-0426', '017-6830201', '101, Jalan TT5, Taman Titi, 71650 Titi, Negeri Sembilan', 'FIST', 'Malaysian', 3.87, '8', '1211111730@student.mmu.edu.my'),
('1211116788', 'Yip Xin Ran', '2004-10-29', '041029-05-0234', '011-10874720', '12, Jalan Titan, Taman Lily, 71650, Kuala Klawang, Negeri Sembilan', 'FIST', 'Malaysian', 3.98, '8', '1211116788@student.mmu.edu.my'),
('1211156395', 'Siti Nurjannati Binti Omar', '2004-11-25', '041125-12-4738', '010-78546620', '48, Jalan Selatan, Kampung Nelayan Baru, 88460, Kota Kinabalu, Sabah', 'FIST', 'Malaysian', 3.74, '8', '1211156395@student.mmu.edu.my'),
('1211163749', 'Siow Yi Yik', '2004-05-15', '040515-02-4357', '017-64729463', '47, Jalan Curry, Taman Biru, 09000, Kulim, Kedah', 'FOL', 'Malaysian', 2.67, '8', '1211163749@student.mmu.edu.my'),
('1211163849', 'Pan How Wen', '2003-10-23', '031023-03-4673', '011-46380048', '45, Jalan Cermin, Taman Khazaniah, 18500, Machang, Kelantan', 'FOL', 'Malaysian', 3.33, '8', '1211163849@student.mmu.edu.my'),
('1211164820', 'Adam Iskandar Bin Mohd Zailani', '2004-03-21', '040321-07-5749', '011-56693307', '07, Jalan Seri Murni, Kampung Alor Merah, 13800, Butterworth, Pulau Pinang', 'FOB', 'Malaysian', 2.89, '8', '1211164820@student.mmu.edu.my'),
('1211164920', 'Lee Jin Lan', '2004-04-12', '040412-13-5438', '012-74920539', '73, Jalan Nyatoh, Taman Ngri, 93300, Kuching, Sarawak', 'FOL', 'Malaysian', 3.79, '8', '1211164920@student.mmu.edu.my'),
('1211175830', 'Yap Eu Cheng', '2003-07-16', '030716-03-5733', '011-46384729', '89, Jalan Hamzah Kanan, Taman Sri Aman, 15050, Kota Bharu, Kelantan', 'FIST', 'Malaysian', 3.01, '8', '1211175830@student.mmu.edu.my'),
('1221103456', 'Gan Chin Shan', '2003-11-07', '031107-04-1190', '011-56575401', '303, Jalan Mangga 4, Taman Emas, 81000 Kulai, Johor', 'FOL', 'Malaysian', 4.00, '3', '1221103456@student.mmu.edu.my'),
('1221106113', 'Siow Shan Yen', '2003-08-03', '030803-05-0088', '010-4521091', '57, Jalan Miri 4, Taman Intan, 02000 Kuala Perlis, Perlis', 'FOB', 'Malaysian', 3.71, '3', '1221106113@student.mmu.edu.my'),
('1221108316', 'Danish Assafi bin Nor Saidi', '2004-06-14', '040614-02-1137', '012-6554002', '18, Jalan Butik 1, Kampung Bagan Sena, 09010 Kulim, Kedah', 'FET', 'Malaysian', 3.62, '3', '1221108216@student.mmu.edu.my'),
('1221109172', 'Shaqir Ikhwan bin Sali', '2003-10-28', 'S5683290E', '011-32953770', 'C-17-02, Jalan D1, Ixora Apartment, 75450 Bukit Beruang, Melaka', 'FOB', 'Singaporean', 3.61, '3', '1221109172@student.mmu.edu.my'),
('1221109328', 'Jia Heak Tang', '2003-07-24', 'EI34675091', '011-34299012', 'A-18-3A, Jalan D1, Ixora Apartment, 75450, Bukit Beruang, Melaka', 'FIST', 'Chinese', 3.21, '3', '1221109328@student.mmu.edu.my'),
('1221163823', 'Siow Lee Sin', '2004-09-01', '040901-05-3412', '012-37462739', '79, Jalan Hitam, Taman Awan, 71600, Kuala Klawang, Negeri Sembilan', 'FOB', 'Malaysian', 3.00, '3', '1221163823@student.mmu.edu.my'),
('1221164829', 'Nur Syamimi Hadirah Binti Ahmad Hashim', '2004-02-06', '040206-11-4572', '016-9844730', '103, Jalan Air Jernih, Kampung Kota Lama, 20300, Kuala Terengganu, Terengganu', 'FOL', 'Malaysian', 3.36, '3', '1221164829@student.mmu.edu.my'),
('1221165739', 'Leow Sheng Nan', '2003-12-21', '031221-12-3681', '017-36294028', '64, Jalan Plaza, Taman Utaman, 88300, Kota Kinabalu, Sabah', 'FOL', 'Malaysian', 3.69, '3', '1221165739@student.mmu.edu.my'),
('1221167492', 'Siow Xin Yue', '2003-07-12', '030712-02-4378', '012-47385829', '73, Jalan Emas, Kampung Berjaya, 05150, Alor Setar, Kedah', 'FOB', 'Malaysian', 3.57, '3', '1221167492@student.mmu.edu.my'),
('1221170890', 'Muhammad Zainul Aizat bin Zamri', '2003-11-12', '031112-02-1163', '019-4582100', '91, Jalan Ampang 3, Kampung Dusun, 09000 Kulim, Kedah', 'FET', 'Malaysian', 3.66, '3', '1221170890@student.mmu.edu.my'),
('1221174903', 'Chen Yi Xuan', '2004-03-26', '040326-13-5734', '010-74929472', '28, Jalan Johari Sunchar, Kampung Duyoh, 94000, Bau, Sarawak', 'FOL', 'Malaysian', 2.48, '3', '1221174903@student.mmu.edu.my'),
('1221176290', 'Lim Sheng Wei', '2004-07-29', '040729-05-3789', '012-46374729', '52, Jalan Titan, Taman Lily, 71650, Kuala Klawang, Negeri Sembilan', 'FOB', 'Malaysian', 3.97, '3', '1221176290@student.mmu.edu.my'),
('1221176320', 'Norhashimah binti Iros', '2003-07-31', '030731-10-0202', '012-7865433', '65, Jalan Timah 7, Taman Sentosa, 40400 Shah Alam, Selangor', 'FET', 'Malaysian', 3.12, '3', '1221176320@student.mmu.edu.my'),
('1221180457', 'Siow Hui Shan', '2004-07-21', '040721-08-1330', '012-6329265', '42, Jalan Hosapa, 71650 Titi, Negeri Sembilan', 'FOL', 'Malaysian', 3.66, '3', '1221180457@student.mmu.edu.my'),
('1221180462', 'Ng Chong Ming', '2004-01-31', '040131-07-3113', '010-67340992', '178, Jalan Rambutan 2, Bandar Sunway, 13700 Perai, Pulau Pinang', 'FET', 'Malaysian', 3.43, '3', '1221180462@student.mmu.edu.my'),
('1221190438', 'Lim Keng Aik', '2003-10-12', '031012-11-4331', '012-7411030', '53, Jalan Chendering 8, Taman Bahagia, 21080 Kuala Terengganu, Terengganu', 'FET', 'Malaysian', 3.30, '3', '1221190438@student.mmu.edu.my'),
('1231106320', 'Wong Jun Wen', '2004-04-23', 'S7502169E', '011-32251904', 'B-09-3A, Jalan D1, Ixora Apartment, 75450, Bukit Beruang, Melaka', 'FOB', 'Singaporean', 3.53, '10', '1231106320@student.mmu.edu.my'),
('1231107235', 'Muhammad Haziq bin Hairolnizam', '2004-12-13', '041212-03-8119', '012-8430277', '90, Jalan Gajah 8, Kampung Pauh, 18500 Machang, Kelantan', 'FOL', 'Malaysian', 3.42, '10', '1231107235@student.mme.edu.my'),
('1231109211', 'Edryana Sofea binti Mizan', '2004-09-24', 'S4583791E', '011-34278455', 'B-03-01, Jalan D1, Ixora Apartment, 75450, Bukit Beruang, Melaka', 'FIST', 'Singaporean', 3.72, '10', '1231109211@student.mmu.edu.my'),
('1231109254', 'Kai Jie Chen', '2003-11-05', 'EI5489721', '011-24017885', 'D-16-08, Jalan D1, Ixora Apartment, 75450 Bukit Beruang, Melaka', 'FET', 'Chinese', 3.94, '10', '1231109254@student.mmu.edu.my'),
('1231110439', 'Yau Kiem Leong', '2004-08-29', '040829-04-9135', '016-7903650', '37, Jalan Bakti, Taman Aman, 77300 Merlimau, Melaka', 'FOL', 'Malaysian', 3.47, '10', '1231110439@student.mmu.edu.my'),
('1231110671', 'Fitri Risya Alya binti Zainal', '2004-02-18', '040218-08-2110', '016-4520173', '74, Jalan Mewah 2, Kampung Aru, 36800 Kampung Gajah, Perak', 'FOB', 'Malaysian', 3.41, '10', '1231110671@student.mmu.edu.my'),
('1231110780', 'Mohammad Daish bin Mohammad Hisam', '2004-11-03', 'S4587329E', '011-39926017', 'C-10-01, Jalan D1, Ixora Apartment, 75450, Bukit Beruang, Melaka', 'FOL', 'Singaporean', 3.28, '10', '1231110780@student.mmu.edu.my'),
('1231111903', 'Xiang Ying Zeng', '2003-12-23', 'EF8490246', '011-41195006', 'D-15-07, Jalan D1, Ixora Apartment, 75450 Bukit Beruang, Melaka', 'FOB', 'Chinese', 3.19, '10', '1231111903@student.mmu.edu.my'),
('1231145307', 'Chin You Cheng', '2004-02-21', '040221-08-3473', '012-46384620', '36, Jalan Aman, Taman Bahagia, 32000, Lumut, Perak', 'FOL', 'Malaysian', 3.62, '10', '1231145307@student.mmu.edu.my'),
('1231146580', 'Low Chen Kian', '2004-06-27', '040627-10-4625', '011-46284927', '32, Jalan Hijau, Taman Seni, 40400, Shah Alam, Selangor', 'FOL', 'Malaysian', 2.50, '10', '1231146580@student.mmu.edu.my'),
('1231152803', 'Calvin Chin Cai Wei', '2003-05-17', '030517-02-4623', '012-64920962', '21, Jalan Berempat, Kampung Pinang, 08210, Sik, Kedah', 'FOB', 'Malaysian', 2.35, '10', '1231152803@student.mmu.edu.my'),
('1231164824', 'Lee Yee Shean', '2003-10-28', '031028-03-4694', '011-47298492', '36, Jalan Batu 4, Taman Sri Jaya, 16250, Wakaf Bharu, Kelantan', 'FOB', 'Malaysian', 3.23, '10', '1231164824@student.mmu.edu.my'),
('1231174923', 'Puteri Mayang Nur Zulaikha Binti Mohammad Radzi', '2004-11-04', '041104-11-4734', '010-6557830', '01, Jalan Istana Kolam, Kampung Aur, 20000, Kuala Terengganu, Terengganu', 'FOB', 'Malaysian', 2.42, '10', '1231174923@student.mmu.edu.my'),
('1231174930', 'Wong Zhi Peng', '2004-07-27', '040727-12-4639', '012-47296392', '83, Jalan Belia, Taman Bukit Nenas, 88100, Kota Kinabalu, Sabah', 'FOB', 'Malaysian', 2.83, '10', '1231174930@student.mmu.edu.my');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Sub_Code` varchar(9) NOT NULL,
  `Sub_Name` varchar(45) DEFAULT NULL,
  `Fac_Code` varchar(4) NOT NULL,
  `Credit_Hour` int(1) DEFAULT NULL,
  `Ex_Time` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Sub_Code`, `Sub_Name`, `Fac_Code`, `Credit_Hour`, `Ex_Time`) VALUES
('BBB1014', 'Understanding Management', 'FOB', 3, 2.0),
('BDB3024', 'Digital Business', 'FOB', 3, 2.0),
('BME1014', 'Introductory Microeconomics', 'FOB', 3, 2.0),
('BMR1014', 'Fundamentals of Marketing', 'FOB', 3, 2.0),
('DBD5024', 'Business System Development', 'FOB', 4, 2.0),
('DBS5024', 'E-Commerce', 'FOB', 3, 2.0),
('DCS5144', 'Intro to Information Systems', 'FOB', 3, 2.0),
('DWD5034', 'Web Design', 'FOB', 4, 2.0),
('ECP1016', 'Computer & Program Design', 'FET', 5, 2.5),
('ECT1016', 'Circuit Theory', 'FET', 4, 2.0),
('ECT1026', 'Field Theory', 'FET', 4, 2.0),
('EEM1016', 'Engineering Mathematics I', 'FET', 4, 2.0),
('TCL3161', 'Cyber Law', 'FOL', 4, 2.0),
('TCP6114', 'Computer Programming', 'FIST', 5, 2.0),
('TDB6113', 'Database System', 'FIST', 4, 2.0),
('THI2211', 'Human Computer Interaction', 'FIST', 3, 2.0),
('TMA1111', 'Mathematical Techniques', 'FIST', 4, 2.5),
('TML2221', 'Machine Learning', 'FIST', 3, 2.0),
('TOP2121', 'Object-Oriented Programming', 'FIST', 3, 2.0),
('TOS6113', 'Operating System', 'FIST', 4, 2.0),
('TPR2251', 'Pattern Recognition', 'FIST', 3, 2.0),
('UCL3612', 'Company Law I', 'FOL', 3, 2.5),
('UDL3612', 'Land Law I', 'FOL', 3, 2.5),
('UEQ3612', 'Equity & Trust I', 'FOL', 3, 2.5),
('UPI3712', 'Public International Law', 'FOL', 4, 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `Venue_Code` varchar(8) NOT NULL,
  `Venue_Name` varchar(30) DEFAULT NULL,
  `Venue_Capacity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`Venue_Code`, `Venue_Name`, `Venue_Capacity`) VALUES
('MAMR2001', 'FOB Studio B', 150),
('MAMR2014', 'FOB Studio A', 150),
('MBMR1022', 'CDP Building', 200),
('MCMR0001', 'Exam Hall', 500),
('MEMR0001', 'Main Hall', 450),
('MLMR0001', 'FET Building', 40),
('MLMR0002', 'FET Building', 40),
('MNCR1001', 'FIST C Building', 40),
('MNCR1002', 'FIST C Building', 40),
('MNCR1003', 'FIST C Building', 40),
('MNCR1004', 'FIST C Building', 40),
('MSMX0001', 'Central Lecture Complex', 300),
('MSMX0002', 'Central Lecture Complex', 300),
('MSMX0003', 'Central Lecture Complex', 300),
('MSMX0004', 'Central Lecture Complex', 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`Lec_ID`,`Sub_Code`),
  ADD KEY `Sub_Code` (`Sub_Code`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Book_Code`),
  ADD KEY `Venue_Code` (`Venue_Code`),
  ADD KEY `Sub_Code` (`Sub_Code`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Fac_Code`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`Lec_ID`),
  ADD KEY `Fac_Code` (`Fac_Code`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Std_ID`,`Sub_Code`),
  ADD KEY `Sub_Code` (`Sub_Code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Std_ID`),
  ADD KEY `Fac_Code` (`Fac_Code`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Sub_Code`),
  ADD KEY `Fac_Code` (`Fac_Code`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`Venue_Code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`Lec_ID`) REFERENCES `lecturer` (`Lec_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`Sub_Code`) REFERENCES `subject` (`Sub_Code`) ON UPDATE CASCADE;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Venue_Code`) REFERENCES `venue` (`Venue_Code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Sub_Code`) REFERENCES `subject` (`Sub_Code`) ON UPDATE CASCADE;

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`Fac_Code`) REFERENCES `faculty` (`Fac_Code`) ON UPDATE CASCADE;

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`Std_ID`) REFERENCES `student` (`Std_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`Sub_Code`) REFERENCES `subject` (`Sub_Code`) ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Fac_Code`) REFERENCES `faculty` (`Fac_Code`) ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`Fac_Code`) REFERENCES `faculty` (`Fac_Code`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
