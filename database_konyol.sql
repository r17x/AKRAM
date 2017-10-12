-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2017 at 12:43 AM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 5.6.31-4+ubuntu16.04.1+deb.sury.org+4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gammu2`
--

-- --------------------------------------------------------

--
-- Table structure for table `gammu`
--

CREATE TABLE `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`) VALUES
('2017-08-18 16:05:51', '2017-07-21 22:27:36', '004800750062002E0020004F00750074006C00650074002F0047007200610070006100720069002F00500065006E006A00750061006C002000750074006B002000640061007000610074006B0061006E0020003100300020004400690067006900740020004B004F00440045005F00490044002000640061006E00200061006B0074006900660061007300690020006C006100790061006E0061006E00200070007200610062006100790061007200200041006E00640061002C002000640067006E0020006B006900720069006D00200053004D00530020006B006500740069006B00200050004F005300490044003C00730070006100730069003E003100300020004400690067006900740020004B004F00440045005F004900440020006B006900720069006D0020006B', '1818', 'Default_No_Compression', '0500033A0201', '+6281100000', 1, 'Hub. Outlet/Grapari/Penjual utk dapatkan 10 Digit KODE_ID dan aktifasi layanan prabayar Anda, dgn kirim SMS ketik POSID<spasi>10 Digit KODE_ID kirim k', 1, '', 'false'),
('2017-08-18 16:05:51', '2017-07-21 22:27:37', '00650020003100380031003800200028004300740068003A00200050004F005300490044002000310032003300340035003600370038003900300029', '1818', 'Default_No_Compression', '0500033A0202', '+6281100000', 1, 'e 1818 (Cth: POSID 1234567890)', 2, '', 'false'),
('2017-08-18 16:05:51', '2017-07-22 02:24:21', '004E006F006D006F007200200041006E00640061002000740065006C00610068002000640069006900730069002000640065006E00670061006E0020006E006F006D006F007200200053004E00200037003000370032003200310030003200340032003000300031003100320035003100350031002E', 'MKIOS', 'Default_No_Compression', '', '+6281100000', -1, 'Nomor Anda telah diisi dengan nomor SN 7072210242001125151.', 3, '', 'false'),
('2017-08-18 16:05:51', '2017-07-22 02:25:46', '0054006500720069006D00610020006B0061007300690068002000740065006C006100680020006D0065006C0061006B0075006B0061006E002000690073006900200075006C0061006E0067002E002000420065006C0069002000500061006B0065007400200043006F006D0062006F0020004D0061006E006900610020003100300030006D006E0074002B003500300053004D0053002B0035004D0042002000640067002000630061007200610020006B006500740069006B00200043004D0020004F004E0020006B006900720069006D0020006B006500200038003900390039002E0020004800610072006700610020006D0075006C00610069002000520070002000320037003500300020006B00650063002E0020005000610070007500610020', 'TELKOMSEL', 'Default_No_Compression', '0807010300032A0201', '+6281100000', 1, 'Terima kasih telah melakukan isi ulang. Beli Paket Combo Mania 100mnt+50SMS+5MB dg cara ketik CM ON kirim ke 8999. Harga mulai Rp 2750 kec. Papua ', 4, '', 'false'),
('2017-08-18 16:05:51', '2017-07-22 02:25:46', '004D0061006C0075006B0075002E00200049006E0066006F003A003100380038', 'TELKOMSEL', 'Default_No_Compression', '0807010300032A0202', '+6281100000', 1, 'Maluku. Info:188', 5, '', 'false'),
('2017-08-18 16:46:20', '2017-08-18 15:46:14', '005000650072006D0069006E007400610061006E00200043006F006C006C00650063007400200053004D005300200041006E006400610020006400690074006F006C0061006B0020002B0036003200380031003300350035003600390037003500350030002E', '88330', 'Default_No_Compression', '', '+6281100000', -1, 'Permintaan Collect SMS Anda ditolak +6281355697550.', 6, '', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `karpeg`
--

CREATE TABLE `karpeg` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` enum('dikirim','diproses','dijawab','') NOT NULL DEFAULT 'dikirim',
  `dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karpeg`
--

INSERT INTO `karpeg` (`id`, `nama`, `nip`, `pangkat`, `phone`, `status`, `dibuat`) VALUES
(1, '23212', '1213', '1231', '234', 'dikirim', '2017-08-18 20:15:20'),
(2, '23212', '1213', '1231', '234', 'dikirim', '2017-08-18 20:30:43'),
(3, 'Akram', '08821', 'GOLONGAN 2', '081355697550', 'dikirim', '2017-08-18 20:40:59'),
(4, 'Akram EditC', '08821', 'GOLONGAN 2', '081355697550', 'dikirim', '2017-08-18 20:50:52'),
(5, 'adysurya', '19283198', 'i', '081355697550', 'dikirim', '2017-10-12 15:10:28'),
(6, 'Akram', '123', 'asdf', '+6282191971283', 'dikirim', '2017-10-12 17:35:44'),
(7, 'Akram', '123', 'asdf', '+6282191971283', 'dikirim', '2017-10-12 17:36:41'),
(8, 'Akram', '123', 'asdf', '+6282191971283', 'dikirim', '2017-10-12 17:37:14'),
(9, 'surya', 'surya', 'surya', '+6281355697550', 'dikirim', '2017-10-12 17:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SendingDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SendBefore` time NOT NULL DEFAULT '23:59:59',
  `SendAfter` time NOT NULL DEFAULT '00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  `Retries` int(3) DEFAULT '0',
  `Priority` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `outbox_multipart`
--

CREATE TABLE `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeOut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `IMSI` varchar(35) NOT NULL,
  `NetCode` varchar(10) DEFAULT 'ERROR',
  `NetName` varchar(35) DEFAULT 'ERROR',
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '-1',
  `Signal` int(11) NOT NULL DEFAULT '-1',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`ID`, `UpdatedInDB`, `InsertIntoDB`, `TimeOut`, `Send`, `Receive`, `IMEI`, `IMSI`, `NetCode`, `NetName`, `Client`, `Battery`, `Signal`, `Sent`, `Received`) VALUES
('', '2017-08-18 19:19:27', '2017-08-18 19:18:26', '2017-08-18 19:19:37', 'yes', 'yes', '867989012656266', '510104332745971', '510 10', 'TELKOMSEL', 'Gammu 1.38.4, Linux, kernel 4.4.0-92-generic (#115-Ubuntu SMP Thu Aug 10 09:04:33 UTC 2017), GCC 5.4', 0, 51, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SendingDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `DeliveryDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `SenderID`, `SequencePosition`, `Status`, `StatusError`, `TPMR`, `RelativeValidity`, `CreatorID`) VALUES
('2017-08-18 16:05:54', '2017-08-18 14:58:29', '2017-08-18 16:05:54', NULL, '006800610069', '+6281355697550', 'Default_No_Compression', '', '+6281100000', -1, 'hai', 1, '', 1, 'SendingOKNoReport', -1, 40, 255, 'Gammu 1.38.4'),
('2017-08-18 16:09:53', '2017-08-18 16:07:26', '2017-08-18 16:09:53', NULL, '006800610069', '+6281355697550', 'Default_No_Compression', '', '+6281100000', -1, 'hai', 3, '', 1, 'SendingOKNoReport', -1, 42, 255, 'Gammu 1.38.4'),
('2017-08-18 16:11:23', '2017-08-18 16:11:04', '2017-08-18 16:11:23', NULL, '006800610069', '+6281355697550', 'Default_No_Compression', '', '+6281100000', -1, 'hai', 4, '', 1, 'SendingOKNoReport', -1, 43, 255, 'Gammu 1.38.4'),
('2017-08-18 16:16:26', '2017-08-18 15:03:03', '2017-08-18 16:16:26', NULL, '006800610069', '+6281355697550', 'Default_No_Compression', '', '+6281100000', -1, 'hai', 2, '', 1, 'SendingOKNoReport', -1, 44, 255, 'Gammu 1.38.4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gammu`
--
ALTER TABLE `gammu`
  ADD PRIMARY KEY (`Version`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `karpeg`
--
ALTER TABLE `karpeg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbox`
--
ALTER TABLE `outbox`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  ADD KEY `outbox_sender` (`SenderID`(250));

--
-- Indexes for table `outbox_multipart`
--
ALTER TABLE `outbox_multipart`
  ADD PRIMARY KEY (`ID`,`SequencePosition`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`IMEI`);

--
-- Indexes for table `sentitems`
--
ALTER TABLE `sentitems`
  ADD PRIMARY KEY (`ID`,`SequencePosition`),
  ADD KEY `sentitems_date` (`DeliveryDateTime`),
  ADD KEY `sentitems_tpmr` (`TPMR`),
  ADD KEY `sentitems_dest` (`DestinationNumber`),
  ADD KEY `sentitems_sender` (`SenderID`(250));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `karpeg`
--
ALTER TABLE `karpeg`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `outbox`
--
ALTER TABLE `outbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
