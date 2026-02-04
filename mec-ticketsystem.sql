-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2026 at 04:48 AM
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
-- Database: `mec-ticketsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-02f7e855d1c5a24052cb91b6c6d0c2da51fd421b', 'i:2;', 1770132336),
('laravel-cache-02f7e855d1c5a24052cb91b6c6d0c2da51fd421b:timer', 'i:1770132336;', 1770132336),
('laravel-cache-0b3ccd1a1f9824bde3636a92c73e9f50', 'i:13;', 1770173558),
('laravel-cache-0b3ccd1a1f9824bde3636a92c73e9f50:timer', 'i:1770173558;', 1770173558),
('laravel-cache-1329d8d85755fd0113fb7d3501d3b5ba', 'i:4;', 1770173497),
('laravel-cache-1329d8d85755fd0113fb7d3501d3b5ba:timer', 'i:1770173497;', 1770173497),
('laravel-cache-3c5456a20b9e5034d97d3d86f7eeeb9c', 'i:2;', 1770132952),
('laravel-cache-3c5456a20b9e5034d97d3d86f7eeeb9c:timer', 'i:1770132952;', 1770132952),
('laravel-cache-46ba1fc9571cdae3f951fb63e2ba48f4', 'i:2;', 1770173156),
('laravel-cache-46ba1fc9571cdae3f951fb63e2ba48f4:timer', 'i:1770173156;', 1770173156),
('laravel-cache-49266ff53b843b5f71cab15502e5d479', 'i:2;', 1770130614),
('laravel-cache-49266ff53b843b5f71cab15502e5d479:timer', 'i:1770130614;', 1770130614),
('laravel-cache-4db3546f09d80f0c71850c818385bbf8', 'i:4;', 1770171988),
('laravel-cache-4db3546f09d80f0c71850c818385bbf8:timer', 'i:1770171988;', 1770171988),
('laravel-cache-57dFro4R2S5ldbbY', 's:7:\"forever\";', 2085446850),
('laravel-cache-5d74df5d6f49b56f9b63dc5a74c2c9a2', 'i:1;', 1770173822),
('laravel-cache-5d74df5d6f49b56f9b63dc5a74c2c9a2:timer', 'i:1770173822;', 1770173822),
('laravel-cache-5ECz0DUuU8hU0RCD', 's:7:\"forever\";', 2085446651),
('laravel-cache-6Sv2DYbDwSgZcrAV', 's:7:\"forever\";', 2085120903),
('laravel-cache-765f15a0ae2c6ca74653898cd105b409', 'i:2;', 1770130496),
('laravel-cache-765f15a0ae2c6ca74653898cd105b409:timer', 'i:1770130496;', 1770130496),
('laravel-cache-80Vw7CmcTr7ZA8cX', 's:7:\"forever\";', 2085015022),
('laravel-cache-86f2b7a80e51ddf01c3d5617d9d00d7e', 'i:10;', 1770132964),
('laravel-cache-86f2b7a80e51ddf01c3d5617d9d00d7e:timer', 'i:1770132963;', 1770132963),
('laravel-cache-8cbbf989cab25e6f547540adb330edc6', 'i:6;', 1770173254),
('laravel-cache-8cbbf989cab25e6f547540adb330edc6:timer', 'i:1770173254;', 1770173254),
('laravel-cache-8d08ac7238fe5768ef887478bfe98f84', 'i:15;', 1770173558),
('laravel-cache-8d08ac7238fe5768ef887478bfe98f84:timer', 'i:1770173558;', 1770173558),
('laravel-cache-8ffc99eb27530a38d7f1c220fea253ab', 'i:1;', 1770166365),
('laravel-cache-8ffc99eb27530a38d7f1c220fea253ab:timer', 'i:1770166365;', 1770166365),
('laravel-cache-9bc2bb9000d92308aa4f2e6ab47eacca', 'i:2;', 1770129216),
('laravel-cache-9bc2bb9000d92308aa4f2e6ab47eacca:timer', 'i:1770129216;', 1770129216),
('laravel-cache-a75f3f172bfb296f2e10cbfc6dfc1883', 'i:30;', 1770090230),
('laravel-cache-a75f3f172bfb296f2e10cbfc6dfc1883:timer', 'i:1770090230;', 1770090230),
('laravel-cache-a9kjrPFisaBr4DOG', 's:7:\"forever\";', 2085095512),
('laravel-cache-admin_designator_ids', 'a:4:{i:0;i:1;i:1;i:3;i:2;i:4;i:3;i:7;}', 1770173487),
('laravel-cache-admin_login_session:65jIbfkqqToN1y4nihB808JYBtVbZZRkALuNzwIFKATXRKyo5as8DisQb4vaS7ob', 's:27:\"larksigmuondbabao@gmail.com\";', 1770173706),
('laravel-cache-admin_login_session:hhIGe97oWeK7weQtmZL8mpqgpL12cp0jMVB7KrRDLRir9H3Aee6fTZGUUCsT16UQ', 's:23:\"zabdieljairus@gmail.com\";', 1769592570),
('laravel-cache-admin_login_session:rZUPiPB1rFZV8yjAkix9EeLNNt5cQIzJ6qnSAUzDgT5J5MfKyrC4YUvNYhvBfDZQ', 's:23:\"zabdieljairus@gmail.com\";', 1769656329),
('laravel-cache-admin_password_reset_session:Cy75a42MzCiZSnG45XH6aLczpDhjP4qD4vyiTQVaAxRo6IzkuLPdjxVKQF9RLLJt', 'a:3:{s:11:\"admin_email\";s:23:\"zabdieljairus@gmail.com\";s:14:\"target_user_id\";i:2;s:17:\"target_user_email\";s:23:\"zabdieltumang@gmail.com\";}', 1769593393),
('laravel-cache-admin_password_reset_session:EV4CgSmdf3VtGMvTv4uvJ9jy6O9Avq1d0VFh3xmf3TBvq3qDsiFHx7xv3VQplr0p', 'a:3:{s:11:\"admin_email\";s:17:\"az28fps@gmail.com\";s:14:\"target_user_id\";i:7;s:17:\"target_user_email\";s:17:\"az28fps@gmail.com\";}', 1769754317),
('laravel-cache-admin_password_session:2cnEMclqrD8rCehPmUFTs3a3rasSdANZHSVv5yha8Q2euBZqIr97eS0jBvfw9XzP', 's:17:\"az28fps@gmail.com\";', 1770128363),
('laravel-cache-admin_password_session:61XTmPuGSCN4wDxPx32AAsF2HMHyWHNK4NGhpCijOPIcjmhR7DyHYau08FRVdoLJ', 's:23:\"zabdieljairus@gmail.com\";', 1769741117),
('laravel-cache-admin_password_session:9HRTr1l9eGvde98VawwLJUG32tg6QUDaiT4F0ayyqDJSqZSPojyznchkOtgijvPK', 's:17:\"az28fps@gmail.com\";', 1769741694),
('laravel-cache-admin_password_session:hdg6AvVEeBgoKy7vJFYfSpW24lqrD60vAedsHIIANWV2a72WWlU4ZImSmvO62b0l', 's:26:\"capstonemetapass@gmail.com\";', 1770129846),
('laravel-cache-admin_password_session:iVL4TaJu0eTvuPs3rZwZ8qEuSKrK8KjEYVbPISuv5RgrMapja6Cp4CN6tBbay80N', 's:17:\"az28fps@gmail.com\";', 1770166829),
('laravel-cache-admin_password_session:J7RgwPDBkYQcvhQXXguYtFI6CyHSzmpYE4DgngmsDxzxP9Qf9ltUw9mzX0Zap5L7', 's:23:\"zabdieljairus@gmail.com\";', 1769735951),
('laravel-cache-admin_password_session:PylcJJ5v1NO6khPbvoFv00OtDdZGRu320Dx4LmbtKOOmQwn9rncMdAhWXQOcA0ZE', 's:23:\"zabdieljairus@gmail.com\";', 1769592427),
('laravel-cache-admin_password_session:srdulJzL3rAuQEUDNhckoIAKExs8ZSMNZjyZf26BiexJYiz1GatncVrmDtgznmI2', 's:26:\"capstonemetapass@gmail.com\";', 1770129935),
('laravel-cache-admin_password_session:zRyusUjJYcyVBa6J2JgPvVh3RLJYoyIBFq1ICLnvSXljgpTEkrkNo1zvNdJVOS1b', 's:23:\"zabdieljairus@gmail.com\";', 1769735638),
('laravel-cache-b2f0fabd2348a3030e21c2f8221a69292ce4da37', 'i:6;', 1770132555),
('laravel-cache-b2f0fabd2348a3030e21c2f8221a69292ce4da37:timer', 'i:1770132555;', 1770132555),
('laravel-cache-change_password_session:4LC71r86tenDwW1j5rqzzwKZHW5YqZIowitF5qmN2TX2CVbOxKYRrxOqZiYinizO', 's:17:\"az28fps@gmail.com\";', 1769756912),
('laravel-cache-change_password_session:casV3tfnYou7TKyqS3s67msQU1vwq4bGd6oN9GVxqFa9YiB1Pn3UzJiVJKhmzetP', 's:22:\"tyrelcruzps4@gmail.com\";', 1770171303),
('laravel-cache-change_password_session:f3aS7z71QUUKTe4AmF1hOVZxevoCvSN9FE0gx15NG9kUrdRpz66o9A4pneuccct9', 's:17:\"az28fps@gmail.com\";', 1769743032),
('laravel-cache-change_password_session:LdeLbQIUQNr0NFwRRThaJsujkFZYEOgyOJnJjHTuczOXM0FbCdnkhowNgiOCPo36', 's:17:\"az28fps@gmail.com\";', 1769754072),
('laravel-cache-change_password_session:NEhAcLnAE0jCBDrgcF09BAfoTAbMXegmNGTnfu3pvUIltEaiI8VJD8282efB3HK0', 's:17:\"az28fps@gmail.com\";', 1769742964),
('laravel-cache-change_password_session:ow1GMbEbjXMhKEKuub4i34Zhqw3sjM0sPCsmKxlPRp29M5oYXgrtw6IZKjD1eKsS', 's:17:\"az28fps@gmail.com\";', 1769742998),
('laravel-cache-change_password_session:QPhWLmbZ3MZNdsdBDZ4dj2COs4qNlN6e1dRVApJJZ232NamIJjwqp9ncyPDyJlqd', 's:17:\"az28fps@gmail.com\";', 1769742987),
('laravel-cache-change_password_session:QrWmbN2vhnma3HzsWNUysQMXZ8HE8AB27CrADIJHFR40leIqNeXVGk3oB3B7sRDB', 's:17:\"az28fps@gmail.com\";', 1769742980),
('laravel-cache-change_password_session:riANtNRJ8lMyLcsO0SE9DAr00OWnMzOD7HkUYCESty1FpSMg14AlS2BqW7sdTCol', 's:17:\"az28fps@gmail.com\";', 1769743001),
('laravel-cache-change_password_session:tBzGorqeNXiPL1jVqfD8Pb9sP4BzYBwHwKU5ow3QLdrSR7eafHbXewWebaDr8wMs', 's:17:\"az28fps@gmail.com\";', 1769754227),
('laravel-cache-change_password_session:TyB0RFZf9VYUDtjtaCwaQR8kbnaWkCu1E1iNxiOBD2o86ejXzXvn6c7lDghekxKM', 's:17:\"az28fps@gmail.com\";', 1769754128),
('laravel-cache-change_password_session:tYUkTgeElJYYGs4E6qRcXwJV88BitHRFQzo1bXLlkcEN6HQ8bQUeeoVkDYV43eMp', 's:17:\"az28fps@gmail.com\";', 1769742984),
('laravel-cache-change_password_session:UB9DCvRJCnvKWK8neoP60jfboxgGwRsE9OfwnsiTrANhINUZqeSsp3DAnujlVkgG', 's:17:\"az28fps@gmail.com\";', 1769743012),
('laravel-cache-change_password_session:vbPmlsgVV8avezhjNQi2GY5ElIePnsI7kvY3tGGDcF0sZgz1kla0y0X9meqDOujE', 's:17:\"az28fps@gmail.com\";', 1769754161),
('laravel-cache-change_password_session:vviNsFrNXUxW70WZhJMgpMmu1ztsEe0XpX8RYfObrV3AT35V3NPH7uZNZPPXYXA0', 's:17:\"az28fps@gmail.com\";', 1769742969),
('laravel-cache-change_password_session:VyZmMkrPaW8WB2COkeWberBqxab9PT677TVsRdZpsSWJChOVJR3a4YL60eVxjQAI', 's:17:\"az28fps@gmail.com\";', 1769742977),
('laravel-cache-change_password_session:xTuvRHraFMaoaZs7PD7oIKCcx6GzcoRVfHZ7u4MajlWOvnrT7Ere3naZ3s62nelM', 's:17:\"az28fps@gmail.com\";', 1769754235),
('laravel-cache-change_password_session:yACsIiNQRuJGkTPK5e8kps6CVD7qeE64ksajhqG0KQyIICnoZEsyGnVjKa4jtszS', 's:17:\"az28fps@gmail.com\";', 1769743055),
('laravel-cache-change_password_session:YdBGFsLBBRxkLY9Mr78hrQtzuxO7RcP2mt4tl2NYXFOc23QDPw3HupyWxOQJjsA5', 's:17:\"az28fps@gmail.com\";', 1769754061),
('laravel-cache-change_password_verified_session:TK9KITJBFp87WDZwn8XUthpr5NZS193ohECiqPmG4NHjvoHPJHhiKYyUAB4tCGNW', 'i:3;', 1769655583),
('laravel-cache-cs89JJGHvZfO5uMx', 's:7:\"forever\";', 2085116364),
('laravel-cache-d1b2a71c2ac25438862edb55279be996', 'i:2;', 1770173772),
('laravel-cache-d1b2a71c2ac25438862edb55279be996:timer', 'i:1770173772;', 1770173772),
('laravel-cache-D2Fbhf8vG23xG26F', 's:7:\"forever\";', 2085123239),
('laravel-cache-d9545296ca69758ad22bcd90692a9fd0', 'i:8;', 1770132766),
('laravel-cache-d9545296ca69758ad22bcd90692a9fd0:timer', 'i:1770132765;', 1770132766),
('laravel-cache-dd0d26af0a7f0b04ebf4b20eb36f215e', 'i:3;', 1770132472),
('laravel-cache-dd0d26af0a7f0b04ebf4b20eb36f215e:timer', 'i:1770132471;', 1770132471),
('laravel-cache-e45444ecc678a271a6330f468a373360', 'i:3;', 1770087658),
('laravel-cache-e45444ecc678a271a6330f468a373360:timer', 'i:1770087658;', 1770087658),
('laravel-cache-e707377d7b6bcc08964c0f6ddf38cc3f', 'i:3;', 1770128579),
('laravel-cache-e707377d7b6bcc08964c0f6ddf38cc3f:timer', 'i:1770128579;', 1770128579),
('laravel-cache-e822c2bfdf2df711178c026cfad0dea4', 'i:3;', 1770132964),
('laravel-cache-e822c2bfdf2df711178c026cfad0dea4:timer', 'i:1770132963;', 1770132963),
('laravel-cache-Edwh9rau4LoeTeMg', 's:7:\"forever\";', 2085118338),
('laravel-cache-eKdMi2PN1m7T20mm', 's:7:\"forever\";', 2084945059),
('laravel-cache-flOrQtEBjhshHHsB', 's:7:\"forever\";', 2084944656),
('laravel-cache-gd8FDtqY4AN1gNT0', 's:7:\"forever\";', 2085101087),
('laravel-cache-JVYKccfTEw2bVVlU', 's:7:\"forever\";', 2084950587),
('laravel-cache-meYCaDYrKL1gNMeJ', 's:7:\"forever\";', 2084946655),
('laravel-cache-p7um1t4VTjB0GVlu', 's:7:\"forever\";', 2085014930),
('laravel-cache-password_reset_session:3gLEYMRXA5vX4mD16srw7dHNULdJ6UGBOWcME4ngJ3KuI5Rg53AOSRly1vmWFI5H', 's:23:\"zabdieljairus@gmail.com\";', 1769741139),
('laravel-cache-password_reset_session:cNtI5NkZxRrMwnjbUCDV3Kr0NEQoEpZeVrAz08RyXPYQ4sCxTIQuldTaClRs6xJR', 's:23:\"zabdieljairus@gmail.com\";', 1769735966),
('laravel-cache-system_request_link_session:0AWOYptdRo8k0VypAb1xjb8JIglJ67ckhuRM4qSfX0Pp2NtCIBgYsit6mYGnIjCF', 'a:2:{s:7:\"link_id\";i:5;s:7:\"user_id\";i:3;}', 1770090698),
('laravel-cache-system_request_link_session:72I9fTgjQJ5quQqneerOycfMTlycMvUbkgeXdYO3S0ztMa4wpzk3xtcFxXoYbQng', 'a:2:{s:7:\"link_id\";i:1;s:7:\"user_id\";i:3;}', 1770117956),
('laravel-cache-system_request_link_session:L7CqDwEXJdkrl02v9YzcujP5hN154mI6nX6DHI5i37Jg4YLttBib0B5GBBG5ar54', 'a:2:{s:7:\"link_id\";i:3;s:7:\"user_id\";i:2;}', 1770132930),
('laravel-cache-system_request_link_session:Lfhtpws8zjBVId920uXTx026vMD0M7yz0J63jbLGzRApErQq2ruteCJidkaHr9mO', 'a:2:{s:7:\"link_id\";i:3;s:7:\"user_id\";i:2;}', 1770132968),
('laravel-cache-system_request_link_session:nMQR9ZXHh4H7ZpmSTRufmoUprKKcvM31YnvPqQoGejtoRqum6QLhymr9VfcDNua6', 'a:2:{s:7:\"link_id\";i:4;s:7:\"user_id\";i:3;}', 1770089620),
('laravel-cache-system_request_link_session:PXTdkRxRz0MAXHAGxGLJfzNnvADqfhAx7Aa6mYOX3KCnTSijrSEDwE8on42DLbgo', 'a:2:{s:7:\"link_id\";i:4;s:7:\"user_id\";i:3;}', 1770089707),
('laravel-cache-system_request_link_session:sKl5cd2Oot8EH8JwyNYKmoR80m5zh6zoDoQPiEIsbmWOXD8HELyBIYe5YbiWGs68', 'a:2:{s:7:\"link_id\";i:2;s:7:\"user_id\";i:2;}', 1770134001),
('laravel-cache-system_request_link_session:SVyWGRinXvZ9zRPiDPIZ2bXCOP4VEbNjFdFosogFMvjVBbQqFnQ2Z4D7wi965oWh', 'a:2:{s:7:\"link_id\";i:3;s:7:\"user_id\";i:2;}', 1770133132),
('laravel-cache-system_request_link_session:tfeOAmXIg4xLdfiRDMy7gPtMp2SKJOOryGczQS7r735wZw1UPeYvnueEMwiEvfNx', 'a:2:{s:7:\"link_id\";i:4;s:7:\"user_id\";i:1;}', 1770134282),
('laravel-cache-system_request_link_session:vRSGnew1IgE2gebZSmad3jidzxfZhMyUoSmyJf5YIEe2Rb1UgBvPHMOSLHteEsWm', 'a:2:{s:7:\"link_id\";i:7;s:7:\"user_id\";i:1;}', 1770114327),
('laravel-cache-system_request_link_session:yPir7E2ThFR8xgGexC2MB4EsgxUrrC1iVWzfON1FnVIiVqfjTEqURgfuwseF9gHb', 'a:2:{s:7:\"link_id\";i:3;s:7:\"user_id\";i:2;}', 1770132845),
('laravel-cache-V2OONRfwxWjkNKeC', 's:7:\"forever\";', 2085112058),
('laravel-cache-wzykWrtdyB8Dmtzk', 's:7:\"forever\";', 2085120595),
('laravel-cache-xb1sNLbi9eGEf4b0', 's:7:\"forever\";', 2084865465),
('mec-optima-cache-0b3ccd1a1f9824bde3636a92c73e9f50', 'i:10;', 1770176562),
('mec-optima-cache-0b3ccd1a1f9824bde3636a92c73e9f50:timer', 'i:1770176562;', 1770176562),
('mec-optima-cache-1329d8d85755fd0113fb7d3501d3b5ba', 'i:1;', 1770176769),
('mec-optima-cache-1329d8d85755fd0113fb7d3501d3b5ba:timer', 'i:1770176768;', 1770176769),
('mec-optima-cache-1e490b169fd81b4df8018ecf66b0e598', 'i:1;', 1770174208),
('mec-optima-cache-1e490b169fd81b4df8018ecf66b0e598:timer', 'i:1770174208;', 1770174208),
('mec-optima-cache-46ba1fc9571cdae3f951fb63e2ba48f4', 'i:3;', 1770173992),
('mec-optima-cache-46ba1fc9571cdae3f951fb63e2ba48f4:timer', 'i:1770173992;', 1770173992),
('mec-optima-cache-4db3546f09d80f0c71850c818385bbf8', 'i:3;', 1770175398),
('mec-optima-cache-4db3546f09d80f0c71850c818385bbf8:timer', 'i:1770175398;', 1770175398),
('mec-optima-cache-5d74df5d6f49b56f9b63dc5a74c2c9a2', 'i:2;', 1770176776),
('mec-optima-cache-5d74df5d6f49b56f9b63dc5a74c2c9a2:timer', 'i:1770176776;', 1770176776),
('mec-optima-cache-86f2b7a80e51ddf01c3d5617d9d00d7e', 'i:22;', 1770176758),
('mec-optima-cache-86f2b7a80e51ddf01c3d5617d9d00d7e:timer', 'i:1770176758;', 1770176758),
('mec-optima-cache-8cbbf989cab25e6f547540adb330edc6', 'i:2;', 1770175848),
('mec-optima-cache-8cbbf989cab25e6f547540adb330edc6:timer', 'i:1770175848;', 1770175848),
('mec-optima-cache-8d08ac7238fe5768ef887478bfe98f84', 'i:1;', 1770175011),
('mec-optima-cache-8d08ac7238fe5768ef887478bfe98f84:timer', 'i:1770175010;', 1770175011),
('mec-optima-cache-8ffc99eb27530a38d7f1c220fea253ab', 'i:4;', 1770175018),
('mec-optima-cache-8ffc99eb27530a38d7f1c220fea253ab:timer', 'i:1770175018;', 1770175018),
('mec-optima-cache-admin_designator_ids', 'a:4:{i:0;i:1;i:1;i:3;i:2;i:4;i:3;i:7;}', 1770175061),
('mec-optima-cache-CdqHv79pGLb51Et7', 's:7:\"forever\";', 2085534173),
('mec-optima-cache-d1b2a71c2ac25438862edb55279be996', 'i:5;', 1770176767),
('mec-optima-cache-d1b2a71c2ac25438862edb55279be996:timer', 'i:1770176767;', 1770176767),
('mec-optima-cache-dNFCM5j9rnK9MmpC', 's:7:\"forever\";', 2085534184),
('mec-optima-cache-dvl0nq1e5FktRvtP', 's:7:\"forever\";', 2085535230),
('mec-optima-cache-f15c04f9651a56f4ff4f9a73e917f4c6', 'i:3;', 1770174083),
('mec-optima-cache-f15c04f9651a56f4ff4f9a73e917f4c6:timer', 'i:1770174082;', 1770174082),
('mec-optima-cache-fWekOyT3g1c4AFA2', 's:7:\"forever\";', 2085534951),
('mec-optima-cache-kb_entries_for_suggestions', 'a:4:{i:0;a:6:{s:2:\"id\";i:1;s:5:\"title\";s:42:\"mobile display not responsive. please help\";s:7:\"concern\";s:51:\"Mobile display on my phone is not properly aligned.\";s:8:\"solution\";s:52:\"i already fixed the responsiveness of mobile layout.\";s:8:\"keywords\";a:4:{i:0;s:14:\"mobile display\";i:1;s:17:\"responsive layout\";i:2;s:9:\"alignment\";i:3;s:13:\"mobile device\";}s:8:\"category\";s:12:\"ui-interface\";}i:1;a:6:{s:2:\"id\";i:2;s:5:\"title\";s:66:\"i can\'t login to my account. it says admin has locked your account\";s:7:\"concern\";s:42:\"error says \"Admin has Locked your account\"\";s:8:\"solution\";s:136:\"The account was found to be locked by the administrator. The account has now been unlocked, and the user is able to log in successfully.\";s:8:\"keywords\";a:5:{i:0;s:5:\"login\";i:1;s:12:\"account lock\";i:2;s:13:\"administrator\";i:3;s:14:\"unlock account\";i:4;s:12:\"user account\";}s:8:\"category\";s:14:\"authentication\";}i:2;a:6:{s:2:\"id\";i:4;s:5:\"title\";s:59:\"OTP not being sent to my email after system says \"OTP sent\"\";s:7:\"concern\";s:106:\"I am trying to login, but I am not receiving any OTP after system says \"OTP has been sent to your account\"\";s:8:\"solution\";s:63:\"The issue has resolved by attaching the otp to the linked email\";s:8:\"keywords\";a:6:{i:0;s:3:\"OTP\";i:1;s:5:\"login\";i:2;s:5:\"email\";i:3;s:7:\"account\";i:4;s:14:\"authentication\";i:5;s:17:\"verification code\";}s:8:\"category\";s:3:\"otp\";}i:3;a:6:{s:2:\"id\";i:5;s:5:\"title\";s:31:\"I can\'t connect to the internet\";s:7:\"concern\";s:78:\"I can\'t connect to the internet even though my laptop is connected to the wifi\";s:8:\"solution\";s:240:\"You can try to resolve your problem by:\n- Checking your lan cable if it is working (If only you are using a lan cable).\n-  Try to Restart your Laptop\'s Wifi.\n\nIf these two steps didn\'t solve your problem. Please Contact support immediately.\";s:8:\"keywords\";a:5:{i:0;s:19:\"internet connection\";i:1;s:4:\"wifi\";i:2;s:9:\"lan cable\";i:3;s:14:\"restart laptop\";i:4;s:15:\"contact support\";}s:8:\"category\";s:7:\"general\";}}', 1770178361),
('mec-optima-cache-Zw7Ql2b4TEoZY32l', 's:7:\"forever\";', 2085533928);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'account-management', 1, '2025-12-16 23:21:53', '2025-12-16 23:21:53'),
(2, 'authentication', 1, '2025-12-16 23:22:00', '2025-12-16 23:22:00'),
(3, 'communication', 1, '2025-12-16 23:22:12', '2025-12-16 23:22:12'),
(4, 'file-management', 1, '2025-12-16 23:22:20', '2025-12-16 23:22:20'),
(5, 'general', 1, '2025-12-16 23:22:31', '2025-12-16 23:22:31'),
(6, 'system-error', 1, '2025-12-16 23:22:53', '2025-12-16 23:22:53'),
(7, 'performance', 1, '2025-12-16 23:23:04', '2025-12-16 23:23:04'),
(8, 'permissions', 1, '2025-12-16 23:23:11', '2025-12-16 23:23:11'),
(9, 'ui-interface', 1, '2025-12-16 23:23:23', '2025-12-16 23:23:23'),
(10, 'otp', 1, '2026-02-03 06:52:44', '2026-02-03 06:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `document_stats`
--

CREATE TABLE `document_stats` (
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `title_length` int(11) NOT NULL DEFAULT 0,
  `concern_length` int(11) NOT NULL DEFAULT 0,
  `solution_length` int(11) NOT NULL DEFAULT 0,
  `total_length` int(11) NOT NULL DEFAULT 0 COMMENT 'Total word count across all fields',
  `indexed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_stats`
--

INSERT INTO `document_stats` (`document_id`, `title_length`, `concern_length`, `solution_length`, `total_length`, `indexed_at`, `created_at`, `updated_at`) VALUES
(1, 6, 9, 8, 23, '2026-02-03 04:46:14', NULL, NULL),
(2, 13, 7, 25, 45, '2026-02-03 06:43:29', NULL, NULL),
(4, 12, 22, 12, 46, '2026-02-03 06:57:43', NULL, NULL),
(5, 6, 15, 44, 65, '2026-02-03 19:11:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_entries`
--

CREATE TABLE `knowledge_base_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `concern` text NOT NULL,
  `solution` text NOT NULL,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Array of keywords for search' CHECK (json_valid(`keywords`)),
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('draft','approved','archived') NOT NULL DEFAULT 'draft',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `usage_count` int(11) NOT NULL DEFAULT 0 COMMENT 'How many times this entry was used in Ask for Assistance',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `ai_confidence` decimal(5,2) DEFAULT NULL COMMENT 'Original AI confidence score (0-100) for keywords/synonyms/category extraction',
  `confidence` decimal(5,2) DEFAULT 100.00 COMMENT 'Current confidence for ranking (0-100). Updated when developer edits.',
  `human_verified` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'True if developer edited keywords/synonyms',
  `verification_status` enum('ai_generated','developer_verified','fully_developer_verified','manual') NOT NULL DEFAULT 'manual' COMMENT 'How the entry was created/verified',
  `ai_feedback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ai_feedback`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledge_base_entries`
--

INSERT INTO `knowledge_base_entries` (`id`, `ticket_id`, `title`, `concern`, `solution`, `keywords`, `category_id`, `status`, `created_by`, `approved_by`, `approved_at`, `usage_count`, `last_used_at`, `ai_confidence`, `confidence`, `human_verified`, `verification_status`, `ai_feedback`, `created_at`, `updated_at`) VALUES
(1, 1, 'mobile display not responsive. please help', 'Mobile display on my phone is not properly aligned.', 'i already fixed the responsiveness of mobile layout.', '[\"mobile display\",\"responsive layout\",\"alignment\",\"mobile device\"]', 9, 'approved', 3, 3, '2026-02-03 02:50:31', 1, '2026-02-03 02:52:28', 88.00, 95.00, 1, 'ai_generated', '{\"type\":\"developer_required\",\"message\":\"This issue requires developer assistance. The similar resolved tickets indicate that this type of problem needs to be fixed by a developer (the mobile layout responsiveness was directly fixed by the developer). Please contact support or create a ticket so a developer can adjust the mobile layout for you.\",\"synthesized_from\":[{\"kb_entry_id\":1,\"ticket_number\":\"2026-00001\",\"title\":\"mobile display not responsive. please help\"}],\"generated_at\":\"2026-02-03T12:46:14+00:00\",\"query\":\"mubayl rispansiv\"}', '2026-02-03 02:50:31', '2026-02-03 04:46:14'),
(2, 2, 'i can\'t login to my account. it says admin has locked your account', 'error says \"Admin has Locked your account\"', 'The account was found to be locked by the administrator. The account has now been unlocked, and the user is able to log in successfully.', '[\"login\",\"account lock\",\"administrator\",\"unlock account\",\"user account\"]', 2, 'approved', 8, 8, '2026-02-03 06:43:29', 0, NULL, 98.00, 98.00, 1, 'ai_generated', NULL, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(4, 3, 'OTP not being sent to my email after system says \"OTP sent\"', 'I am trying to login, but I am not receiving any OTP after system says \"OTP has been sent to your account\"', 'The issue has resolved by attaching the otp to the linked email', '[\"OTP\",\"login\",\"email\",\"account\",\"authentication\",\"verification code\"]', 10, 'approved', 8, 8, '2026-02-03 06:53:24', 1, '2026-02-03 06:56:53', 96.00, 96.00, 1, 'ai_generated', '{\"type\":\"developer_required\",\"message\":\"This issue requires developer assistance. The similar resolved ticket indicates that this type of problem (OTP not being sent even though the system says it was sent) was fixed on the backend by attaching or correcting the OTP linkage to the registered email, which only a developer or system administrator can do. Please contact MEC\\/BEATS support or create a ticket so a developer can check and fix the OTP-email linkage for your account.\",\"synthesized_from\":[{\"kb_entry_id\":4,\"ticket_number\":\"2026-00003\",\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\"}],\"generated_at\":\"2026-02-03T14:57:43+00:00\",\"query\":\"OTP not being sent on my email. I am using BEATS system\"}', '2026-02-03 06:53:24', '2026-02-03 06:57:43'),
(5, 8, 'I can\'t connect to the internet', 'I can\'t connect to the internet even though my laptop is connected to the wifi', 'You can try to resolve your problem by:\n- Checking your lan cable if it is working (If only you are using a lan cable).\n-  Try to Restart your Laptop\'s Wifi.\n\nIf these two steps didn\'t solve your problem. Please Contact support immediately.', '[\"internet connection\",\"wifi\",\"lan cable\",\"restart laptop\",\"contact support\"]', 5, 'approved', 3, 3, '2026-02-03 18:46:26', 0, NULL, 96.00, 95.00, 1, 'developer_verified', '{\"type\":\"actionable_steps\",\"steps\":[\"Step 1: Check if other websites or online apps are loading on the same device to confirm if your internet is working.\",\"Step 2: If you are using Wi\\u2011Fi, turn your laptop\\u2019s Wi\\u2011Fi off, wait 10 seconds, then turn it back on and try loading BEATS again.\",\"Step 3: If you are using a LAN cable, check that the cable is firmly connected to both your laptop and the router\\/switch, then try loading BEATS again.\",\"Step 4: Restart your laptop, reconnect to the internet, and then try accessing the BEATS system once more.\",\"Step 5: If BEATS still does not load but other websites work, take a screenshot of the error (if any) and contact MEC support for further checking.\"],\"synthesized_from\":[{\"kb_entry_id\":5,\"ticket_number\":\"2026-00008\",\"title\":\"I can\'t connect to the internet\"}],\"generated_at\":\"2026-02-04T03:11:26+00:00\",\"query\":\"BEATS system is not loading. I don\'t know if it is because of my internet connection\"}', '2026-02-03 18:46:26', '2026-02-03 19:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_entry_histories`
--

CREATE TABLE `knowledge_base_entry_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kb_entry_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `action` text NOT NULL,
  `changes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`changes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledge_base_entry_histories`
--

INSERT INTO `knowledge_base_entry_histories` (`id`, `kb_entry_id`, `user_id`, `event_type`, `title`, `description`, `action`, `changes`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'saved', 'Saved to OptiPedia', 'Entry created and added to OptiPedia', 'Initially submitted to OptiPedia.', NULL, '2026-02-03 02:50:31', '2026-02-03 02:50:31'),
(2, 1, 3, 'edited', 'Edited the Ticket', 'Confidence was modified.', 'Changed the Confidence.', '[{\"field\":\"confidence\",\"old_value\":\"88.00\",\"new_value\":95}]', '2026-02-03 02:53:02', '2026-02-03 02:53:02'),
(3, 1, 3, 'edited', 'Edited Synonyms', 'Synonyms for \'mobile display\' were modified.', 'Updated synonyms for keyword \'mobile display\'.', '[{\"field\":\"synonyms\",\"key_term\":\"mobile display\",\"old_value\":[\"phone screen\",\"mobile screen\",\"device display\"],\"new_value\":[\"phone screen\",\"mobile screen\",\"device display\",\"ui display\"]}]', '2026-02-03 03:09:23', '2026-02-03 03:09:23'),
(4, 1, 3, 'edited', 'Edited the Ticket', 'Ai feedback was modified.', 'Changed the Ai feedback.', '[{\"field\":\"ai_feedback\",\"old_value\":null,\"new_value\":\"{\\\"type\\\":\\\"developer_required\\\",\\\"message\\\":\\\"This issue requires developer assistance. The similar resolved tickets indicate that this type of problem needs to be fixed by a developer (the mobile layout responsiveness was directly fixed by the developer). Please contact support or create a ticket so a developer can adjust the mobile layout for you.\\\",\\\"synthesized_from\\\":[{\\\"kb_entry_id\\\":1,\\\"ticket_number\\\":\\\"2026-00001\\\",\\\"title\\\":\\\"mobile display not responsive. please help\\\"}],\\\"generated_at\\\":\\\"2026-02-03T12:46:14+00:00\\\",\\\"query\\\":\\\"mubayl rispansiv\\\"}\"}]', '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(5, 2, 8, 'saved', 'Saved to OptiPedia', 'Entry created and added to OptiPedia', 'Initially submitted to OptiPedia.', NULL, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(7, 4, 8, 'saved', 'Saved to OptiPedia', 'Entry created and added to OptiPedia', 'Initially submitted to OptiPedia.', NULL, '2026-02-03 06:53:24', '2026-02-03 06:53:24'),
(8, 4, 8, 'edited', 'Edited Synonyms', 'Synonyms for \'OTP\' were modified.', 'Updated synonyms for keyword \'OTP\'.', '[{\"field\":\"synonyms\",\"key_term\":\"OTP\",\"old_value\":[\"one-time password\",\"one time pin\",\"2FA code\"],\"new_value\":[\"one-time password\",\"one time pin\",\"2FA code\",\"otp-request\"]}]', '2026-02-03 06:55:27', '2026-02-03 06:55:27'),
(9, 4, 2, 'edited', 'Edited the Ticket', 'Ai feedback was modified.', 'Changed the Ai feedback.', '[{\"field\":\"ai_feedback\",\"old_value\":null,\"new_value\":\"{\\\"type\\\":\\\"developer_required\\\",\\\"message\\\":\\\"This issue requires developer assistance. The similar resolved ticket indicates that this type of problem (OTP not being sent even though the system says it was sent) was fixed on the backend by attaching or correcting the OTP linkage to the registered email, which only a developer or system administrator can do. Please contact MEC\\\\\\/BEATS support or create a ticket so a developer can check and fix the OTP-email linkage for your account.\\\",\\\"synthesized_from\\\":[{\\\"kb_entry_id\\\":4,\\\"ticket_number\\\":\\\"2026-00003\\\",\\\"title\\\":\\\"OTP not being sent to my email after system says \\\\\\\"OTP sent\\\\\\\"\\\"}],\\\"generated_at\\\":\\\"2026-02-03T14:57:43+00:00\\\",\\\"query\\\":\\\"OTP not being sent on my email. I am using BEATS system\\\"}\"}]', '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(10, 5, 3, 'saved', 'Saved to OptiPedia', 'Entry created and added to OptiPedia', 'Initially submitted to OptiPedia.', NULL, '2026-02-03 18:46:26', '2026-02-03 18:46:26'),
(11, 5, 3, 'edited', 'Edited the Ticket', 'Ai feedback was modified.', 'Changed the Ai feedback.', '[{\"field\":\"ai_feedback\",\"old_value\":null,\"new_value\":\"{\\\"type\\\":\\\"actionable_steps\\\",\\\"steps\\\":[\\\"Step 1: Check if other websites or online apps are loading on the same device to confirm if your internet is working.\\\",\\\"Step 2: If you are using Wi\\\\u2011Fi, turn your laptop\\\\u2019s Wi\\\\u2011Fi off, wait 10 seconds, then turn it back on and try loading BEATS again.\\\",\\\"Step 3: If you are using a LAN cable, check that the cable is firmly connected to both your laptop and the router\\\\\\/switch, then try loading BEATS again.\\\",\\\"Step 4: Restart your laptop, reconnect to the internet, and then try accessing the BEATS system once more.\\\",\\\"Step 5: If BEATS still does not load but other websites work, take a screenshot of the error (if any) and contact MEC support for further checking.\\\"],\\\"synthesized_from\\\":[{\\\"kb_entry_id\\\":5,\\\"ticket_number\\\":\\\"2026-00008\\\",\\\"title\\\":\\\"I can\'t connect to the internet\\\"}],\\\"generated_at\\\":\\\"2026-02-04T03:11:26+00:00\\\",\\\"query\\\":\\\"BEATS system is not loading. I don\'t know if it is because of my internet connection\\\"}\"}]', '2026-02-03 19:11:26', '2026-02-03 19:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_usages`
--

CREATE TABLE `knowledge_base_usages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_number` varchar(255) NOT NULL COMMENT 'Format: REF2025-00001',
  `knowledge_base_entry_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `method` enum('semantic','ai') NOT NULL COMMENT 'Search method used: semantic or AI OPTIMA',
  `query` varchar(255) DEFAULT NULL COMMENT 'User''s search query',
  `solution_worked` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Whether the solution resolved the user''s issue',
  `resolved_at` timestamp NULL DEFAULT NULL COMMENT 'When the solution was confirmed to work',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledge_base_usages`
--

INSERT INTO `knowledge_base_usages` (`id`, `reference_number`, `knowledge_base_entry_id`, `user_id`, `method`, `query`, `solution_worked`, `resolved_at`, `created_at`, `updated_at`) VALUES
(1, 'REF2026-00001', 1, 3, 'semantic', NULL, 1, '2026-02-03 02:52:28', '2026-02-03 02:52:28', '2026-02-03 02:52:28'),
(2, 'REF2026-00002', 4, 2, 'semantic', NULL, 1, '2026-02-03 06:56:53', '2026-02-03 06:56:53', '2026-02-03 06:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_20_073459_create_otps_table', 1),
(5, '2025_11_20_073611_add_permissions_status_route_access_to_users_table', 1),
(6, '2025_11_25_001432_create_tickets_table', 1),
(7, '2025_11_25_001502_create_ticket_assignments_table', 1),
(8, '2025_11_25_001517_create_ticket_returns_table', 1),
(9, '2025_11_25_001524_create_ticket_histories_table', 1),
(10, '2025_11_27_025323_create_knowledge_base_entries_table', 1),
(11, '2025_12_10_054319_add_accepted_at_to_ticket_assignments_table', 1),
(12, '2025_12_10_054330_add_accepted_at_to_ticket_assignments_table', 1),
(13, '2025_12_10_054359_add_accepted_at_to_ticket_assignments_table', 1),
(14, '2025_12_10_062835_add_system_name_and_ai_suggestion_to_tickets_table', 1),
(15, '2025_12_10_071251_create_systems_table', 1),
(16, '2025_12_11_000000_add_ticket_number_to_tickets_table', 1),
(17, '2025_12_11_000001_backfill_ticket_numbers', 1),
(18, '2025_12_11_000002_reassign_ticket_numbers_by_creation_order', 1),
(19, '2025_12_11_000003_add_user_id_and_department_to_users_table', 1),
(20, '2025_12_11_000004_create_user_activities_table', 1),
(21, '2025_12_11_000005_backfill_user_ids', 1),
(22, '2025_12_12_061852_create_knowledge_base_usages_table', 1),
(23, '2025_12_12_072557_add_confidence_fields_to_knowledge_base_entries_table', 1),
(24, '2025_12_15_020139_add_icon_to_systems_table', 1),
(25, '2025_12_15_020213_add_attachment_to_tickets_table', 1),
(26, '2025_12_16_061638_create_categories_table', 1),
(27, '2025_12_16_063518_remove_description_from_categories_table', 1),
(28, '2025_12_17_000001_add_system_id_to_tickets_table', 2),
(29, '2025_12_19_054849_add_verification_status_and_category_id_to_knowledge_base_entries_table', 3),
(30, '2026_01_05_032515_add_profile_picture_to_users_table', 4),
(31, '2026_01_07_070923_create_search_index_tables', 5),
(32, '2026_01_09_083441_add_open_status_to_tickets_table', 6),
(33, '2026_01_12_015913_create_notifications_table', 7),
(34, '2026_01_14_060611_create_knowledge_base_entry_histories_table', 8),
(35, '2026_01_15_000001_add_index_to_accepted_at_in_ticket_assignments', 9),
(36, '2026_01_15_000002_add_composite_indexes_to_tickets', 9),
(37, '2026_01_15_000003_add_composite_index_to_ticket_assignments', 9),
(38, '2026_01_19_083720_add_ai_feedback_to_knowledge_base_entries_table', 9),
(39, '2026_01_20_000001_add_information_route_to_users', 10),
(40, '2026_01_23_030317_add_audit_fields_to_ticket_histories_table', 11),
(41, '2026_01_23_080734_add_cancelled_status_to_tickets_table', 12),
(42, '2026_01_26_000001_create_system_request_links_table', 13),
(43, '2026_01_26_000002_create_system_request_forms_table', 13),
(44, '2026_01_26_000003_create_system_request_tickets_table', 13),
(45, '2026_01_27_000001_add_type_to_system_request_links_table', 14),
(46, '2026_01_27_000002_add_encrypted_token_to_system_request_links_table', 15),
(47, '2026_02_03_000002_add_priority_level_to_tickets_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Additional data like ticket_id, kb_entry_id, etc.' CHECK (json_valid(`data`)),
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `title`, `message`, `data`, `is_read`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00001 has been created: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(2, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00001 has been created: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(3, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00001 has been created: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(4, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00001 has been created: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(5, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00001 is waiting for assignment: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"ticket_title\":\"mobile display not responsive\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(6, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00001 is waiting for assignment: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"ticket_title\":\"mobile display not responsive\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(7, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00001 is waiting for assignment: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"ticket_title\":\"mobile display not responsive\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(8, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00001 is waiting for assignment: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"ticket_title\":\"mobile display not responsive\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(9, 1, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00001 has been assigned to: Zab Developer, Developer User, Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[7,6,3]}', 0, NULL, '2026-02-03 02:41:17', '2026-02-03 02:41:17'),
(10, 3, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00001 has been assigned to: Zab Developer, Developer User, Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[7,6,3]}', 0, NULL, '2026-02-03 02:41:17', '2026-02-03 02:41:17'),
(11, 4, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00001 has been assigned to: Zab Developer, Developer User, Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[7,6,3]}', 0, NULL, '2026-02-03 02:41:17', '2026-02-03 02:41:17'),
(12, 7, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00001 has been assigned to: Zab Developer, Developer User, Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[7,6,3]}', 0, NULL, '2026-02-03 02:41:17', '2026-02-03 02:41:17'),
(13, 7, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00001: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:41:17', '2026-02-03 02:41:17'),
(14, 6, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00001: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:41:17', '2026-02-03 02:41:17'),
(15, 3, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00001: mobile display not responsive', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:41:17', '2026-02-03 02:41:17'),
(16, 1, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00001 has been accepted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:42:55', '2026-02-03 02:42:55'),
(17, 3, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00001 has been accepted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:42:55', '2026-02-03 02:42:55'),
(18, 4, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00001 has been accepted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:42:55', '2026-02-03 02:42:55'),
(19, 7, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00001 has been accepted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:42:55', '2026-02-03 02:42:55'),
(20, 1, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00001 has been returned by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\",\"remark\":\"please make it clear. details are not that clear\"}', 0, NULL, '2026-02-03 02:44:58', '2026-02-03 02:44:58'),
(21, 3, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00001 has been returned by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\",\"remark\":\"please make it clear. details are not that clear\"}', 0, NULL, '2026-02-03 02:44:58', '2026-02-03 02:44:58'),
(22, 4, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00001 has been returned by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\",\"remark\":\"please make it clear. details are not that clear\"}', 0, NULL, '2026-02-03 02:44:58', '2026-02-03 02:44:58'),
(23, 7, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00001 has been returned by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\",\"remark\":\"please make it clear. details are not that clear\"}', 0, NULL, '2026-02-03 02:44:58', '2026-02-03 02:44:58'),
(24, 3, 'ticket_returned', 'Your Ticket Has Been Returned', 'Your ticket #2026-00001 has been returned by Zab Admin. Reason: please make it clear. details are not that clear', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\",\"remark\":\"please make it clear. details are not that clear\"}', 0, NULL, '2026-02-03 02:44:58', '2026-02-03 02:44:58'),
(25, 3, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00001 has been resubmitted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"resubmitted_by\":\"Zab Admin\",\"remark\":\"i already provided more proof\"}', 0, NULL, '2026-02-03 02:45:47', '2026-02-03 02:45:47'),
(26, 6, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00001 has been resubmitted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"resubmitted_by\":\"Zab Admin\",\"remark\":\"i already provided more proof\"}', 0, NULL, '2026-02-03 02:45:47', '2026-02-03 02:45:47'),
(27, 7, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00001 has been resubmitted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"resubmitted_by\":\"Zab Admin\",\"remark\":\"i already provided more proof\"}', 0, NULL, '2026-02-03 02:45:47', '2026-02-03 02:45:47'),
(28, 1, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00001 has been resubmitted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"resubmitted_by\":\"Zab Admin\",\"remark\":\"i already provided more proof\"}', 0, NULL, '2026-02-03 02:45:47', '2026-02-03 02:45:47'),
(29, 3, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00001 has been resubmitted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"resubmitted_by\":\"Zab Admin\",\"remark\":\"i already provided more proof\"}', 0, NULL, '2026-02-03 02:45:47', '2026-02-03 02:45:47'),
(30, 4, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00001 has been resubmitted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"resubmitted_by\":\"Zab Admin\",\"remark\":\"i already provided more proof\"}', 0, NULL, '2026-02-03 02:45:47', '2026-02-03 02:45:47'),
(31, 7, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00001 has been resubmitted by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"resubmitted_by\":\"Zab Admin\",\"remark\":\"i already provided more proof\"}', 0, NULL, '2026-02-03 02:45:47', '2026-02-03 02:45:47'),
(32, 1, 'ticket_assigned', 'Ticket Reassigned', 'Ticket #2026-00001 has been reassigned to: Zab Developer, Zab Admin, Tyrel Developer (removed: Developer User)', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[7,3,8],\"removed_developer_ids\":{\"1\":6},\"protected_developer_ids\":[],\"is_reassignment\":true}', 0, NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(33, 3, 'ticket_assigned', 'Ticket Reassigned', 'Ticket #2026-00001 has been reassigned to: Zab Developer, Zab Admin, Tyrel Developer (removed: Developer User)', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[7,3,8],\"removed_developer_ids\":{\"1\":6},\"protected_developer_ids\":[],\"is_reassignment\":true}', 0, NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(34, 4, 'ticket_assigned', 'Ticket Reassigned', 'Ticket #2026-00001 has been reassigned to: Zab Developer, Zab Admin, Tyrel Developer (removed: Developer User)', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[7,3,8],\"removed_developer_ids\":{\"1\":6},\"protected_developer_ids\":[],\"is_reassignment\":true}', 0, NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(35, 7, 'ticket_assigned', 'Ticket Reassigned', 'Ticket #2026-00001 has been reassigned to: Zab Developer, Zab Admin, Tyrel Developer (removed: Developer User)', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[7,3,8],\"removed_developer_ids\":{\"1\":6},\"protected_developer_ids\":[],\"is_reassignment\":true}', 0, NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(36, 7, 'ticket_assigned', 'Ticket Reassigned', 'You have been assigned to ticket #2026-00001: mobile display not responsive. please help', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(37, 3, 'ticket_assigned', 'Ticket Reassigned', 'You have been assigned to ticket #2026-00001: mobile display not responsive. please help', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(38, 8, 'ticket_assigned', 'Ticket Reassigned', 'You have been assigned to ticket #2026-00001: mobile display not responsive. please help', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(39, 6, 'ticket_unassigned', 'Ticket Unassigned', 'You have been unassigned from ticket #2026-00001: mobile display not responsive. please help', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"unassigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:47:54', '2026-02-03 02:47:54'),
(40, 1, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00001 has been resolved by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:49:08', '2026-02-03 02:49:08'),
(41, 3, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00001 has been resolved by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:49:08', '2026-02-03 02:49:08'),
(42, 4, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00001 has been resolved by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:49:08', '2026-02-03 02:49:08'),
(43, 7, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00001 has been resolved by Zab Admin', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 02:49:08', '2026-02-03 02:49:08'),
(44, 3, 'ticket_resolved', 'Your Ticket Has Been Resolved', 'Your ticket #2026-00001 has been resolved by Zab Admin. A solution has been provided - please view the details.', '{\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"developer_id\":3,\"developer_name\":\"Zab Admin\",\"solution\":\"i already fixed the responsiveness of mobile layout.\"}', 0, NULL, '2026-02-03 02:49:08', '2026-02-03 02:49:08'),
(45, 1, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: mobile display not responsive. please help', '{\"kb_entry_id\":1,\"title\":\"mobile display not responsive. please help\",\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 02:50:31', '2026-02-03 02:50:31'),
(46, 3, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: mobile display not responsive. please help', '{\"kb_entry_id\":1,\"title\":\"mobile display not responsive. please help\",\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 02:50:31', '2026-02-03 02:50:31'),
(47, 4, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: mobile display not responsive. please help', '{\"kb_entry_id\":1,\"title\":\"mobile display not responsive. please help\",\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 02:50:31', '2026-02-03 02:50:31'),
(48, 7, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: mobile display not responsive. please help', '{\"kb_entry_id\":1,\"title\":\"mobile display not responsive. please help\",\"ticket_id\":1,\"ticket_number\":\"2026-00001\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 02:50:31', '2026-02-03 02:50:31'),
(49, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00002 has been created: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(50, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00002 has been created: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(51, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00002 has been created: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(52, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00002 has been created: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(53, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00002 is waiting for assignment: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"ticket_title\":\"i can\'t login to my account. it says admin has locked your account\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(54, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00002 is waiting for assignment: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"ticket_title\":\"i can\'t login to my account. it says admin has locked your account\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(55, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00002 is waiting for assignment: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"ticket_title\":\"i can\'t login to my account. it says admin has locked your account\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(56, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00002 is waiting for assignment: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"ticket_title\":\"i can\'t login to my account. it says admin has locked your account\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(57, 1, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00002 has been assigned to: Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8]}', 0, NULL, '2026-02-03 06:41:20', '2026-02-03 06:41:20'),
(58, 3, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00002 has been assigned to: Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8]}', 0, NULL, '2026-02-03 06:41:20', '2026-02-03 06:41:20'),
(59, 4, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00002 has been assigned to: Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8]}', 0, NULL, '2026-02-03 06:41:20', '2026-02-03 06:41:20'),
(60, 7, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00002 has been assigned to: Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8]}', 0, NULL, '2026-02-03 06:41:20', '2026-02-03 06:41:20'),
(61, 8, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00002: i can\'t login to my account. it says admin has locked your account', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"assigned_by\":\"Lark Babao\"}', 0, NULL, '2026-02-03 06:41:20', '2026-02-03 06:41:20'),
(62, 1, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00002 has been accepted by Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:41:38', '2026-02-03 06:41:38'),
(63, 3, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00002 has been accepted by Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:41:38', '2026-02-03 06:41:38'),
(64, 4, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00002 has been accepted by Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:41:38', '2026-02-03 06:41:38'),
(65, 7, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00002 has been accepted by Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:41:38', '2026-02-03 06:41:38'),
(66, 1, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00002 has been resolved by Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:42:59', '2026-02-03 06:42:59'),
(67, 3, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00002 has been resolved by Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:42:59', '2026-02-03 06:42:59'),
(68, 4, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00002 has been resolved by Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:42:59', '2026-02-03 06:42:59'),
(69, 7, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00002 has been resolved by Tyrel Cruz', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:42:59', '2026-02-03 06:42:59'),
(70, 2, 'ticket_resolved', 'Your Ticket Has Been Resolved', 'Your ticket #2026-00002 has been resolved by Tyrel Cruz. A solution has been provided - please view the details.', '{\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"solution\":\"The account was found to be locked by the administrator. The account has now been unlocked, and the user is able to log in successfully.\"}', 0, NULL, '2026-02-03 06:42:59', '2026-02-03 06:42:59'),
(71, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00003 has been created: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Zabdiel User\",\"created_by_id\":9}', 0, NULL, '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(72, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00003 has been created: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Zabdiel User\",\"created_by_id\":9}', 0, NULL, '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(73, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00003 has been created: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Zabdiel User\",\"created_by_id\":9}', 0, NULL, '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(74, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00003 has been created: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Zabdiel User\",\"created_by_id\":9}', 0, NULL, '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(75, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00003 is waiting for assignment: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"ticket_title\":\"OTP not being sent to my email\",\"created_by\":\"Zabdiel User\",\"created_by_id\":9,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(76, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00003 is waiting for assignment: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"ticket_title\":\"OTP not being sent to my email\",\"created_by\":\"Zabdiel User\",\"created_by_id\":9,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(77, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00003 is waiting for assignment: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"ticket_title\":\"OTP not being sent to my email\",\"created_by\":\"Zabdiel User\",\"created_by_id\":9,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(78, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00003 is waiting for assignment: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"ticket_title\":\"OTP not being sent to my email\",\"created_by\":\"Zabdiel User\",\"created_by_id\":9,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(79, 1, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: i can\'t login to my account. it says admin has locked your account', '{\"kb_entry_id\":2,\"title\":\"i can\'t login to my account. it says admin has locked your account\",\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(80, 3, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: i can\'t login to my account. it says admin has locked your account', '{\"kb_entry_id\":2,\"title\":\"i can\'t login to my account. it says admin has locked your account\",\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(81, 4, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: i can\'t login to my account. it says admin has locked your account', '{\"kb_entry_id\":2,\"title\":\"i can\'t login to my account. it says admin has locked your account\",\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(82, 7, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: i can\'t login to my account. it says admin has locked your account', '{\"kb_entry_id\":2,\"title\":\"i can\'t login to my account. it says admin has locked your account\",\"ticket_id\":2,\"ticket_number\":\"2026-00002\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(83, 1, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00003 has been assigned to: Tyrel Cruz, Developer User, Zab Tumang, Zab Admin', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8,6,7,3]}', 0, NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(84, 3, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00003 has been assigned to: Tyrel Cruz, Developer User, Zab Tumang, Zab Admin', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8,6,7,3]}', 0, NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(85, 4, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00003 has been assigned to: Tyrel Cruz, Developer User, Zab Tumang, Zab Admin', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8,6,7,3]}', 0, NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(86, 7, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00003 has been assigned to: Tyrel Cruz, Developer User, Zab Tumang, Zab Admin', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8,6,7,3]}', 0, NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(87, 8, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00003: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"assigned_by\":\"Lark Babao\"}', 0, NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(88, 6, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00003: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"assigned_by\":\"Lark Babao\"}', 0, NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(89, 7, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00003: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"assigned_by\":\"Lark Babao\"}', 0, NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(90, 3, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00003: OTP not being sent to my email', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"assigned_by\":\"Lark Babao\"}', 0, NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(91, 1, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00003 has been accepted by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:45:26', '2026-02-03 06:45:26'),
(92, 3, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00003 has been accepted by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:45:26', '2026-02-03 06:45:26'),
(93, 4, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00003 has been accepted by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:45:26', '2026-02-03 06:45:26'),
(94, 7, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00003 has been accepted by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:45:26', '2026-02-03 06:45:26'),
(95, 1, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00003 has been returned by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.\"}', 0, NULL, '2026-02-03 06:46:25', '2026-02-03 06:46:25'),
(96, 3, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00003 has been returned by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.\"}', 0, NULL, '2026-02-03 06:46:25', '2026-02-03 06:46:25'),
(97, 4, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00003 has been returned by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.\"}', 0, NULL, '2026-02-03 06:46:25', '2026-02-03 06:46:25'),
(98, 7, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00003 has been returned by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.\"}', 0, NULL, '2026-02-03 06:46:25', '2026-02-03 06:46:25'),
(99, 9, 'ticket_returned', 'Your Ticket Has Been Returned', 'Your ticket #2026-00003 has been returned by Tyrel Cruz. Reason: Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.\"}', 0, NULL, '2026-02-03 06:46:25', '2026-02-03 06:46:25'),
(100, 3, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\"}', 0, NULL, '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(101, 6, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\"}', 0, NULL, '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(102, 7, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\"}', 0, NULL, '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(103, 8, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\"}', 0, NULL, '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(104, 1, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\"}', 0, NULL, '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(105, 3, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\"}', 0, NULL, '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(106, 4, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\"}', 0, NULL, '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(107, 7, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\"}', 0, NULL, '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(108, 1, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00003 has been returned by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close\"}', 0, NULL, '2026-02-03 06:50:15', '2026-02-03 06:50:15'),
(109, 3, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00003 has been returned by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close\"}', 0, NULL, '2026-02-03 06:50:15', '2026-02-03 06:50:15'),
(110, 4, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00003 has been returned by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close\"}', 0, NULL, '2026-02-03 06:50:15', '2026-02-03 06:50:15'),
(111, 7, 'ticket_returned', 'Ticket Returned', 'Ticket #2026-00003 has been returned by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close\"}', 0, NULL, '2026-02-03 06:50:15', '2026-02-03 06:50:15'),
(112, 9, 'ticket_returned', 'Your Ticket Has Been Returned', 'Your ticket #2026-00003 has been returned by Tyrel Cruz. Reason: Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"remark\":\"Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close\"}', 0, NULL, '2026-02-03 06:50:15', '2026-02-03 06:50:15'),
(113, 3, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"The issue has been solved. thank you sir.\"}', 0, NULL, '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(114, 6, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"The issue has been solved. thank you sir.\"}', 0, NULL, '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(115, 7, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"The issue has been solved. thank you sir.\"}', 0, NULL, '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(116, 8, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"The issue has been solved. thank you sir.\"}', 0, NULL, '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(117, 1, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"The issue has been solved. thank you sir.\"}', 0, NULL, '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(118, 3, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"The issue has been solved. thank you sir.\"}', 0, NULL, '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(119, 4, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"The issue has been solved. thank you sir.\"}', 0, NULL, '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(120, 7, 'ticket_resubmitted', 'Ticket Resubmitted', 'Ticket #2026-00003 has been resubmitted by Zabdiel User', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"resubmitted_by\":\"Zabdiel User\",\"remark\":\"The issue has been solved. thank you sir.\"}', 0, NULL, '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(121, 1, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00003 has been resolved by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:51:28', '2026-02-03 06:51:28'),
(122, 3, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00003 has been resolved by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:51:28', '2026-02-03 06:51:28'),
(123, 4, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00003 has been resolved by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:51:28', '2026-02-03 06:51:28'),
(124, 7, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00003 has been resolved by Tyrel Cruz', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', 0, NULL, '2026-02-03 06:51:28', '2026-02-03 06:51:28'),
(125, 9, 'ticket_resolved', 'Your Ticket Has Been Resolved', 'Your ticket #2026-00003 has been resolved by Tyrel Cruz. A solution has been provided - please view the details.', '{\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\",\"solution\":\"The issue has resolved by attaching the otp to the linked email\"}', 0, NULL, '2026-02-03 06:51:28', '2026-02-03 06:51:28'),
(126, 1, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":3,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:52:29', '2026-02-03 06:52:29'),
(127, 3, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":3,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:52:29', '2026-02-03 06:52:29'),
(128, 4, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":3,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:52:29', '2026-02-03 06:52:29'),
(129, 7, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":3,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:52:29', '2026-02-03 06:52:29'),
(130, 1, 'kb_deleted', 'Knowledge Base Entry Deleted', 'Knowledge base entry has been deleted: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":3,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"deleted_by\":\"Tyrel Cruz\",\"deleted_by_id\":8}', 0, NULL, '2026-02-03 06:53:02', '2026-02-03 06:53:02'),
(131, 3, 'kb_deleted', 'Knowledge Base Entry Deleted', 'Knowledge base entry has been deleted: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":3,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"deleted_by\":\"Tyrel Cruz\",\"deleted_by_id\":8}', 0, NULL, '2026-02-03 06:53:02', '2026-02-03 06:53:02'),
(132, 4, 'kb_deleted', 'Knowledge Base Entry Deleted', 'Knowledge base entry has been deleted: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":3,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"deleted_by\":\"Tyrel Cruz\",\"deleted_by_id\":8}', 0, NULL, '2026-02-03 06:53:02', '2026-02-03 06:53:02'),
(133, 7, 'kb_deleted', 'Knowledge Base Entry Deleted', 'Knowledge base entry has been deleted: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":3,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"deleted_by\":\"Tyrel Cruz\",\"deleted_by_id\":8}', 0, NULL, '2026-02-03 06:53:02', '2026-02-03 06:53:02'),
(134, 1, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":4,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:53:25', '2026-02-03 06:53:25'),
(135, 3, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":4,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:53:25', '2026-02-03 06:53:25'),
(136, 4, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":4,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:53:25', '2026-02-03 06:53:25'),
(137, 7, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: OTP not being sent to my email after system says \"OTP sent\"', '{\"kb_entry_id\":4,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"ticket_id\":3,\"ticket_number\":\"2026-00003\",\"created_by\":\"Tyrel Cruz\",\"created_by_id\":8}', 0, NULL, '2026-02-03 06:53:25', '2026-02-03 06:53:25'),
(138, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00004 has been created: OTP not being sent on my email. I am using BEATS system', '{\"ticket_id\":4,\"ticket_number\":\"2026-00004\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 06:58:53', '2026-02-03 06:58:53'),
(139, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00004 has been created: OTP not being sent on my email. I am using BEATS system', '{\"ticket_id\":4,\"ticket_number\":\"2026-00004\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 06:58:53', '2026-02-03 06:58:53'),
(140, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00004 has been created: OTP not being sent on my email. I am using BEATS system', '{\"ticket_id\":4,\"ticket_number\":\"2026-00004\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 06:58:53', '2026-02-03 06:58:53'),
(141, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00004 has been created: OTP not being sent on my email. I am using BEATS system', '{\"ticket_id\":4,\"ticket_number\":\"2026-00004\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 06:58:53', '2026-02-03 06:58:53'),
(142, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00004 is waiting for assignment: OTP not being sent on my email. I am using BEATS system', '{\"ticket_id\":4,\"ticket_number\":\"2026-00004\",\"ticket_title\":\"OTP not being sent on my email. I am using BEATS system\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:58:54', '2026-02-03 06:58:54'),
(143, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00004 is waiting for assignment: OTP not being sent on my email. I am using BEATS system', '{\"ticket_id\":4,\"ticket_number\":\"2026-00004\",\"ticket_title\":\"OTP not being sent on my email. I am using BEATS system\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:58:54', '2026-02-03 06:58:54'),
(144, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00004 is waiting for assignment: OTP not being sent on my email. I am using BEATS system', '{\"ticket_id\":4,\"ticket_number\":\"2026-00004\",\"ticket_title\":\"OTP not being sent on my email. I am using BEATS system\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:58:54', '2026-02-03 06:58:54'),
(145, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00004 is waiting for assignment: OTP not being sent on my email. I am using BEATS system', '{\"ticket_id\":4,\"ticket_number\":\"2026-00004\",\"ticket_title\":\"OTP not being sent on my email. I am using BEATS system\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 06:58:54', '2026-02-03 06:58:54');
INSERT INTO `notifications` (`id`, `user_id`, `type`, `title`, `message`, `data`, `is_read`, `read_at`, `created_at`, `updated_at`) VALUES
(146, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00005 has been created: New System / Enhancement Request', '{\"ticket_id\":5,\"ticket_number\":\"2026-00005\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(147, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00005 has been created: New System / Enhancement Request', '{\"ticket_id\":5,\"ticket_number\":\"2026-00005\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(148, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00005 has been created: New System / Enhancement Request', '{\"ticket_id\":5,\"ticket_number\":\"2026-00005\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(149, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00005 has been created: New System / Enhancement Request', '{\"ticket_id\":5,\"ticket_number\":\"2026-00005\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(150, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00005 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":5,\"ticket_number\":\"2026-00005\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(151, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00005 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":5,\"ticket_number\":\"2026-00005\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(152, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00005 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":5,\"ticket_number\":\"2026-00005\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(153, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00005 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":5,\"ticket_number\":\"2026-00005\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(154, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00006 has been created: New System / Enhancement Request', '{\"ticket_id\":6,\"ticket_number\":\"2026-00006\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(155, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00006 has been created: New System / Enhancement Request', '{\"ticket_id\":6,\"ticket_number\":\"2026-00006\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(156, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00006 has been created: New System / Enhancement Request', '{\"ticket_id\":6,\"ticket_number\":\"2026-00006\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(157, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00006 has been created: New System / Enhancement Request', '{\"ticket_id\":6,\"ticket_number\":\"2026-00006\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2}', 0, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(158, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00006 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":6,\"ticket_number\":\"2026-00006\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(159, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00006 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":6,\"ticket_number\":\"2026-00006\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(160, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00006 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":6,\"ticket_number\":\"2026-00006\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(161, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00006 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":6,\"ticket_number\":\"2026-00006\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Zabdiel Jairus\",\"created_by_id\":2,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(162, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00007 has been created: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"created_by\":\"Lark Babao\",\"created_by_id\":1}', 0, NULL, '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(163, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00007 has been created: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"created_by\":\"Lark Babao\",\"created_by_id\":1}', 0, NULL, '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(164, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00007 has been created: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"created_by\":\"Lark Babao\",\"created_by_id\":1}', 0, NULL, '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(165, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00007 has been created: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"created_by\":\"Lark Babao\",\"created_by_id\":1}', 0, NULL, '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(166, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00007 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Lark Babao\",\"created_by_id\":1,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(167, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00007 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Lark Babao\",\"created_by_id\":1,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(168, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00007 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Lark Babao\",\"created_by_id\":1,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(169, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00007 is waiting for assignment: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"ticket_title\":\"New System \\/ Enhancement Request\",\"created_by\":\"Lark Babao\",\"created_by_id\":1,\"status\":\"open\"}', 0, NULL, '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(170, 1, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00007 has been assigned to: Tyrel Cruz', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8]}', 0, NULL, '2026-02-03 07:34:41', '2026-02-03 07:34:41'),
(171, 3, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00007 has been assigned to: Tyrel Cruz', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8]}', 0, NULL, '2026-02-03 07:34:41', '2026-02-03 07:34:41'),
(172, 4, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00007 has been assigned to: Tyrel Cruz', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8]}', 0, NULL, '2026-02-03 07:34:41', '2026-02-03 07:34:41'),
(173, 7, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00007 has been assigned to: Tyrel Cruz', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"assigned_by\":\"Lark Babao\",\"assigned_by_id\":1,\"developer_ids\":[8]}', 0, NULL, '2026-02-03 07:34:41', '2026-02-03 07:34:41'),
(174, 8, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00007: New System / Enhancement Request', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"assigned_by\":\"Lark Babao\"}', 0, NULL, '2026-02-03 07:34:41', '2026-02-03 07:34:41'),
(175, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00008 has been created: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(176, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00008 has been created: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(177, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00008 has been created: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(178, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00008 has been created: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(179, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00008 is waiting for assignment: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"ticket_title\":\"I can\'t connect to the internet\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(180, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00008 is waiting for assignment: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"ticket_title\":\"I can\'t connect to the internet\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(181, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00008 is waiting for assignment: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"ticket_title\":\"I can\'t connect to the internet\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(182, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00008 is waiting for assignment: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"ticket_title\":\"I can\'t connect to the internet\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(183, 1, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00008 has been assigned to: Zab Admin, Zab Tumang, Tyrel Cruz', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[3,7,8]}', 0, NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(184, 3, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00008 has been assigned to: Zab Admin, Zab Tumang, Tyrel Cruz', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[3,7,8]}', 0, NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(185, 4, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00008 has been assigned to: Zab Admin, Zab Tumang, Tyrel Cruz', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[3,7,8]}', 0, NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(186, 7, 'ticket_assigned', 'Ticket Assigned', 'Ticket #2026-00008 has been assigned to: Zab Admin, Zab Tumang, Tyrel Cruz', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"assigned_by\":\"Zab Admin\",\"assigned_by_id\":3,\"developer_ids\":[3,7,8]}', 0, NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(187, 3, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00008: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(188, 7, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00008: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(189, 8, 'ticket_assigned', 'New Ticket Assigned', 'You have been assigned to ticket #2026-00008: I can\'t connect to the internet', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"assigned_by\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(190, 1, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00008 has been accepted by Zab Admin', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:37:13', '2026-02-03 18:37:13'),
(191, 3, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00008 has been accepted by Zab Admin', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:37:13', '2026-02-03 18:37:13'),
(192, 4, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00008 has been accepted by Zab Admin', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:37:13', '2026-02-03 18:37:13'),
(193, 7, 'ticket_accepted', 'Ticket Accepted', 'Ticket #2026-00008 has been accepted by Zab Admin', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:37:13', '2026-02-03 18:37:13'),
(194, 1, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00008 has been resolved by Zab Admin', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:40:53', '2026-02-03 18:40:53'),
(195, 3, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00008 has been resolved by Zab Admin', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:40:53', '2026-02-03 18:40:53'),
(196, 4, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00008 has been resolved by Zab Admin', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:40:53', '2026-02-03 18:40:53'),
(197, 7, 'ticket_resolved', 'Ticket Resolved', 'Ticket #2026-00008 has been resolved by Zab Admin', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', 0, NULL, '2026-02-03 18:40:53', '2026-02-03 18:40:53'),
(198, 3, 'ticket_resolved', 'Your Ticket Has Been Resolved', 'Your ticket #2026-00008 has been resolved by Zab Admin. A solution has been provided - please view the details.', '{\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"developer_id\":3,\"developer_name\":\"Zab Admin\",\"solution\":\"You can try to resolve your problem by:\\n- Checking your lan cable if it is working (If only you are using a lan cable).\\n-  Try to Restart your Laptop\'s Wifi.\\n\\nIf these two steps didn\'t solve your problem. Please Contact support immediately.\"}', 0, NULL, '2026-02-03 18:40:53', '2026-02-03 18:40:53'),
(199, 1, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: I can\'t connect to the internet', '{\"kb_entry_id\":5,\"title\":\"I can\'t connect to the internet\",\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 18:46:27', '2026-02-03 18:46:27'),
(200, 3, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: I can\'t connect to the internet', '{\"kb_entry_id\":5,\"title\":\"I can\'t connect to the internet\",\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 18:46:27', '2026-02-03 18:46:27'),
(201, 4, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: I can\'t connect to the internet', '{\"kb_entry_id\":5,\"title\":\"I can\'t connect to the internet\",\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 18:46:27', '2026-02-03 18:46:27'),
(202, 7, 'kb_saved', 'Knowledge Base Entry Saved', 'A new knowledge base entry has been saved to OptiPedia: I can\'t connect to the internet', '{\"kb_entry_id\":5,\"title\":\"I can\'t connect to the internet\",\"ticket_id\":8,\"ticket_number\":\"2026-00008\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 18:46:27', '2026-02-03 18:46:27'),
(203, 1, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00009 has been created: BEATS system is not loading. I don\'t know if it is because of my internet connection', '{\"ticket_id\":9,\"ticket_number\":\"2026-00009\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 19:12:41', '2026-02-03 19:12:41'),
(204, 3, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00009 has been created: BEATS system is not loading. I don\'t know if it is because of my internet connection', '{\"ticket_id\":9,\"ticket_number\":\"2026-00009\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 19:12:41', '2026-02-03 19:12:41'),
(205, 4, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00009 has been created: BEATS system is not loading. I don\'t know if it is because of my internet connection', '{\"ticket_id\":9,\"ticket_number\":\"2026-00009\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 19:12:41', '2026-02-03 19:12:41'),
(206, 7, 'ticket_created', 'New Ticket Created', 'A new ticket #2026-00009 has been created: BEATS system is not loading. I don\'t know if it is because of my internet connection', '{\"ticket_id\":9,\"ticket_number\":\"2026-00009\",\"created_by\":\"Zab Admin\",\"created_by_id\":3}', 0, NULL, '2026-02-03 19:12:41', '2026-02-03 19:12:41'),
(207, 1, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00009 is waiting for assignment: BEATS system is not loading. I don\'t know if it is because of my internet connection', '{\"ticket_id\":9,\"ticket_number\":\"2026-00009\",\"ticket_title\":\"BEATS system is not loading. I don\'t know if it is because of my internet connection\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 19:12:42', '2026-02-03 19:12:42'),
(208, 3, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00009 is waiting for assignment: BEATS system is not loading. I don\'t know if it is because of my internet connection', '{\"ticket_id\":9,\"ticket_number\":\"2026-00009\",\"ticket_title\":\"BEATS system is not loading. I don\'t know if it is because of my internet connection\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 19:12:42', '2026-02-03 19:12:42'),
(209, 4, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00009 is waiting for assignment: BEATS system is not loading. I don\'t know if it is because of my internet connection', '{\"ticket_id\":9,\"ticket_number\":\"2026-00009\",\"ticket_title\":\"BEATS system is not loading. I don\'t know if it is because of my internet connection\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 19:12:42', '2026-02-03 19:12:42'),
(210, 7, 'unassigned_ticket', 'Unassigned Ticket', 'Ticket #2026-00009 is waiting for assignment: BEATS system is not loading. I don\'t know if it is because of my internet connection', '{\"ticket_id\":9,\"ticket_number\":\"2026-00009\",\"ticket_title\":\"BEATS system is not loading. I don\'t know if it is because of my internet connection\",\"created_by\":\"Zab Admin\",\"created_by_id\":3,\"status\":\"open\"}', 0, NULL, '2026-02-03 19:12:42', '2026-02-03 19:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(255) NOT NULL DEFAULT 'login',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `email`, `otp`, `expires_at`, `type`, `created_at`, `updated_at`) VALUES
(236, 'zabdieljairus@gmail.com', '$2y$12$fkEyJGfznUQ3a.8zqcXqrei0SySmjmaR07JbNi/RAEMp1K/kmTMg2', '2026-01-29 18:40:39', 'password_reset', '2026-01-29 18:35:39', '2026-01-29 18:35:39'),
(245, 'az28fps@gmail.com', '$2y$12$.Y.fxSsGSfIiQ4zLxdaG3e8Ob4Jaw52st8U0L.0QjB25WajTy88DS', '2026-01-29 22:15:20', 'admin_password_reset', '2026-01-29 22:10:20', '2026-01-29 22:10:20'),
(286, 'tyrelcruzps4@gmail.com', '$2y$12$K8h6xPVoUiQ5GS0emHRpSOPQRiO.Lw6h/Fxu7ZY5tuDjAvLTC4Zgu', '2026-02-03 18:10:03', 'change_password', '2026-02-03 18:05:03', '2026-02-03 18:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_index`
--

CREATE TABLE `search_index` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term` varchar(255) NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `field_type` enum('title','concern','solution','keyword') NOT NULL DEFAULT 'concern',
  `term_frequency` int(11) NOT NULL DEFAULT 1 COMMENT 'How many times term appears in this field',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_index`
--

INSERT INTO `search_index` (`id`, `term`, `document_id`, `field_type`, `term_frequency`, `created_at`, `updated_at`) VALUES
(177, 'mobile', 1, 'title', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(178, 'display', 1, 'title', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(179, 'not', 1, 'title', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(180, 'responsive', 1, 'title', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(181, 'please', 1, 'title', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(182, 'help', 1, 'title', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(183, 'mobile', 1, 'concern', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(184, 'display', 1, 'concern', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(185, 'my', 1, 'concern', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(186, 'phone', 1, 'concern', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(187, 'not', 1, 'concern', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(188, 'properly', 1, 'concern', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(189, 'aligned', 1, 'concern', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(190, 'already', 1, 'solution', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(191, 'fixed', 1, 'solution', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(192, 'responsiveness', 1, 'solution', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(193, 'mobile', 1, 'solution', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(194, 'layout', 1, 'solution', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(195, 'mobiledisplay', 1, 'keyword', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(196, 'responsivelayout', 1, 'keyword', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(197, 'alignment', 1, 'keyword', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(198, 'mobiledevice', 1, 'keyword', 1, '2026-02-03 04:46:14', '2026-02-03 04:46:14'),
(199, 'login', 2, 'title', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(200, 'my', 2, 'title', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(201, 'account', 2, 'title', 2, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(202, 'it', 2, 'title', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(203, 'says', 2, 'title', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(204, 'admin', 2, 'title', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(205, 'locked', 2, 'title', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(206, 'your', 2, 'title', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(207, 'error', 2, 'concern', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(208, 'says', 2, 'concern', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(209, 'admin', 2, 'concern', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(210, 'locked', 2, 'concern', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(211, 'your', 2, 'concern', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(212, 'account', 2, 'concern', 1, '2026-02-03 06:43:29', '2026-02-03 06:43:29'),
(213, 'account', 2, 'solution', 2, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(214, 'found', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(215, 'locked', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(216, 'administrator', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(217, 'now', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(218, 'unlocked', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(219, 'user', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(220, 'able', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(221, 'log', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(222, 'successfully', 2, 'solution', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(223, 'login', 2, 'keyword', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(224, 'accountlock', 2, 'keyword', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(225, 'administrator', 2, 'keyword', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(226, 'unlockaccount', 2, 'keyword', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(227, 'useraccount', 2, 'keyword', 1, '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(459, 'otp', 4, 'title', 2, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(460, 'not', 4, 'title', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(461, 'sent', 4, 'title', 2, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(462, 'my', 4, 'title', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(463, 'email', 4, 'title', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(464, 'after', 4, 'title', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(465, 'system', 4, 'title', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(466, 'says', 4, 'title', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(467, 'am', 4, 'concern', 2, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(468, 'trying', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(469, 'login', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(470, 'not', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(471, 'receiving', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(472, 'any', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(473, 'otp', 4, 'concern', 2, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(474, 'after', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(475, 'system', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(476, 'says', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(477, 'sent', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(478, 'your', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(479, 'account', 4, 'concern', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(480, 'issue', 4, 'solution', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(481, 'resolved', 4, 'solution', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(482, 'attaching', 4, 'solution', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(483, 'otp', 4, 'solution', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(484, 'linked', 4, 'solution', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(485, 'email', 4, 'solution', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(486, 'otp', 4, 'keyword', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(487, 'login', 4, 'keyword', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(488, 'email', 4, 'keyword', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(489, 'account', 4, 'keyword', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(490, 'authentication', 4, 'keyword', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(491, 'verificationcode', 4, 'keyword', 1, '2026-02-03 06:57:43', '2026-02-03 06:57:43'),
(531, 'connect', 5, 'title', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(532, 'internet', 5, 'title', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(533, 'connect', 5, 'concern', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(534, 'internet', 5, 'concern', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(535, 'even', 5, 'concern', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(536, 'though', 5, 'concern', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(537, 'my', 5, 'concern', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(538, 'laptop', 5, 'concern', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(539, 'connected', 5, 'concern', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(540, 'wifi', 5, 'concern', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(541, 'you', 5, 'solution', 2, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(542, 'try', 5, 'solution', 2, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(543, 'resolve', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(544, 'your', 5, 'solution', 4, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(545, 'problem', 5, 'solution', 2, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(546, 'checking', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(547, 'lan', 5, 'solution', 2, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(548, 'cable', 5, 'solution', 2, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(549, 'if', 5, 'solution', 3, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(550, 'it', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(551, 'working', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(552, 'only', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(553, 'using', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(554, 'restart', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(555, 'laptop', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(556, 'wifi', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(557, 'two', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(558, 'steps', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(559, 'didn', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(560, 'solve', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(561, 'please', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(562, 'contact', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(563, 'support', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(564, 'immediately', 5, 'solution', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(565, 'internetconnection', 5, 'keyword', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(566, 'wifi', 5, 'keyword', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(567, 'lancable', 5, 'keyword', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(568, 'restartlaptop', 5, 'keyword', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26'),
(569, 'contactsupport', 5, 'keyword', 1, '2026-02-03 19:11:26', '2026-02-03 19:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0a1lahqSAadxw3Lipm2fuQfA0r4w1l7bi2zUW0hq', NULL, '172.16.93.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDNoSzA4VzIzcmFUUWZWMW5tdGk0Z1RXNWF0V3BSbE5MTTh4OWVZSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770171920),
('1Iieln4co2Tll3uIzKSauhdKcrpftKaaVJB4HO9u', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnRmOW9rcWFSN1VZNmJ4MXk4OHIxb1ExS2ZwMFl4dG5tU3l3Q2lMQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174372),
('3oB4Y9qJuFEIUDaQl0qpurpyHqA7odWJZYLEhsR5', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnFheGNhYjdQcmV0TFJDR080MnpMQ2tOcGxhODUwVjV6RXpxUTdhRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174172),
('4f0Dacu9vlUigycPGCyRvxYTEwln2PdaoCoTXgG7', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnl1ZUJiYWliUDBVeXJqMDZFOHFnY1lRS2VqMTVpNFZhTGE2Sk0wQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/YWN0PWFib3V0Jm1vZD1ob21lIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770175844),
('5Q6OXjX5ZLNhDxIcpTyMvu2lV1n9eGxaqB3zD5W2', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEljTXV1YjVTVVBrR3liYnRVY2lHaWZVSUlTQTRoWmVUNm9IYW5hMiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770176830),
('5sePVSkh7Unme6AqjU7G0ThxgtXWG142bFNYWpBi', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNk9td0JjakxUdnZzWVFxRWNkamlhM0pacGpOeFJJZVZpZ1lzSGJiSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/cGFnZT1zdGFydCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174883),
('5XifqeiCGaNPpqqXARLohsmoY7rA1ZuriTrn4Rjy', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVZjdXc5YWlGeFFJRWFZZXNrSGZycUJkaUwyUEpHTHhtY3hjMGxNeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770171046),
('6nTbNZxN8cOMnVVZm2JHq5j4QRVMgUfQ4Q6YMMa9', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjd6WjR5UjB5RkRPNVZ1UlpXVFNzTHl6djd5NzdBeUNnb0JyYVZJRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/Z2V0X2FjdGlvbj1nZXRfYm9vdF9jb25mIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770175814),
('6zT1eHs6IFNFP1OvsGD8BL0lO2Bhht2hJLJPaQQc', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkxlYTV5QThFNEp6RjVrQ2JzWTBMbU5PN0hiTTNtYlJZV1R3YlJiOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170801),
('7bad5zplc7bCuHste9QG9RdwKepyoL7xqb29qKlY', NULL, '192.168.88.23', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkJnbldzSmZvNklNdGE1R0tna25nc1FqRkFzdk1WM1ZXWDFtYVFxNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770173906),
('8ZmgeiUk2IuS4HkiuTm13dSJ1hUKTNzkYRI1DbyO', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQVhKRnBvRE5zMzJTR09mcklzQWx4QlM2UGxuS0JROEpXN3ZEbTMxRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770176646),
('bfPza3jySSmdGGON7vBiP78FQfoUoBgMcOau8fTj', NULL, '192.168.88.23', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFF2UUV6cTJ3SFpzZWN6ZTN0QUxiM1p4Wm9tRVpUWFR6U0xuRlpsMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHAiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770175787),
('blX5NDlBzhvAsWg8VuHCBWOdDHopnNWLwfT38dat', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUpreWZNcFlXUTZaS1NhWTdnMUpyYUpQTTBXUkE3ZVFYbVlhRmxRdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMTkyLjE2OC44OC4xMyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170628),
('BRI0dJ5enSI2K8pAcUbhTiC8dBnZXVa40Lpzaxjc', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianVHR0poc012Mk5PT2o2UG51U3R2MWNFc2xKUXptUUlQa0pDZTFacCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/YT1sb2dpbiZjPWFjY2VzcyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175049),
('BzOmlzUg2mvjJy7s5hbqD2HSeYK2AmM9VtoBvDnW', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjlRODF6bkhJTHQwM2hNa2ZPdlltNk5EbUNUQnM3UVJ5Tlh5cDNrMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770173476),
('cB3iSR2Q39t65peeXEnoWCJTTPn2ZNbtoatt9p9m', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUNlQTZpMUlGb3J3QXJEZjVYRVlEWXhRNTJQNjd3U2hpMFI5c0pxdCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170798),
('chVNxzhF2nUVsLhUyZhXwIk8iJNkmBVib41q8MZz', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVppNTNyT3djRlJNcmlXQVo5clBacDBWUGNYNVVUUzllZ1B2QXRwUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Nzg6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/bWVudTE9SGVscCZtZW51Mj0mbWVudTM9Jm1lbnU0PSZwYWdlPW1hc3RlciI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170965),
('DdVeaWTTdkMKZKOKuQPwFMAE6u2mCv22yjx3vSk6', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTBIelhiVDNRNzVYZ0lkWkxzWGZCYUdmSW9aZGwyOXZSNEhIUXB1YSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHAiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770170909),
('DFzvlPUcHcSysfMmtTbQe6v3yq9jEcULx8qTzrBV', NULL, '172.16.88.213', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmV5dExmYXdRRllnSGpvTnAwRWc2R2ZUeldlbkhVaXF6eXJOMmxLaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770173990),
('dhkxKDYsVFdnXW6sjdWYIQdewHo7YdS17Af07nzf', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS21sU29Fa21laEFzS05mbjFsTjdDNlZaeEV2Y2dCOGh5ZUZETDZiMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny8/YWN0aW9uPWFib3V0JnBhZ2U9bG9naW4iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770174963),
('DsSYt2kaH2rQUbNCuSSD0KWTkyPwaoJzIYoKW73u', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHppU3pjclg5OVdEUWpsNElVTE8zSmNCcDhVRjMxc2hIZWtVbTBNVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Nzg6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/YWN0aW9uPXVzZXImY29tbWFuZD1sb2dpbl9wYWdlJm1vZHVsZT11c2VycyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175776),
('eBAWbYtkSYCBIdlOYK8RvDHY8fGM76FhgoJsYDqO', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm9RVVVvVzBkMVBHclZ3ajFzbTlUeFc1azRWRlZRSmkxWERiYTR0aCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770176268),
('EgPuTsl078TaFkwpFVCRcdNpzk3R2RO6NYFszN0L', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkRMWGVyd1lEMkE4SU4xMFpBUldXTlVqdWNxbDVpMld5Y1ZCdFpzQyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/bW9kdWxlPXNpdGUmc2hvdz1ob21lIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770176038),
('Ehe9nqpQOUhKe6UlZQ4sIMWl2A4t0aoXgQBJCVRj', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzg0QndIUThxbkVkNWd3RVlYZFVpWmNlaHJ1TE83eTY3TkZpQ3dMViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/YWN0aW9uPWxvZ2luIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770176021),
('gM9l3jwYOAe6kGo0ILL6C2ZP58oZpXGrOifJDEzB', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUtNTHNPdVQ1enExZFRtTHFaaHdyS1hPeEtIQkUwSTE0cDNjMUNiUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174325),
('IUyTioqEId4uRN8hcuhVA1zOrO92kifqMBrjMew4', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0xLVUp5clBTeFNkalBmZWxYenBzaU1YUG1aMEhMMDNqRFU1cW5tRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174147),
('jKOJe9MaVYcfl2ygLnj0sqcf5bwsOrpz23nUSCvA', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkVoNWxMT05MZDJ5NzVRSlNiSWwzMmg5ek9MaEVMZzVFV1JZb0tFdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vdHBvMS5tZWMucGgiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770176607),
('jZZqBlyQJZxkJfHxBwAzdbfHtl2tsjpY6ED771NE', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakw4NFRabVdkYUo3Y1RoTWVDaU9VcDFBcVh4dFY5OU5ERWlIaUgwbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770176298),
('KE3vxNgnZWECHo51TE0TfTy3wuap4LhK8ZEJj3O3', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVcyODF5ZWw0S0oyTjZDSkRIdzhUbERyQnFSZ1RzUWVGRFRKOGUzUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170805),
('kjSKQOlRGBW3rD8871xjsUFrqnoVZUTCkbiTc004', NULL, '192.168.88.23', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTncxZXVsTlgzUEc3aW9iTk9oMTBHOHg2S1dIbjRHYjhsOFdWdkZGNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174375),
('kM6i8bq4jZxO297gQTCsmohPW1nm0AyRLwDbAcRh', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjVjUjBNczNia0NndVd4SnJJOXNPNnVZU0J5Nk1sTTZJNjR3YjZhbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vdHBvMS5tZWMucGgiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770170999),
('KqYxHORWRs94ZO0mlgbNubXnf7QMPhz0qlDFgp8K', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjBpa0FURjZXYXpEeE5EYU1yNVFhSnRmbHM0M21vcUhpQzlrVTlBbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170801),
('l7yXRipyhQH0GfLAXtsGUshDGZEVR28OtXKgaQHy', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEpZYTBXVlIxZ0htZjdGY0RSZWsyR2NGdklwNjc3d2N2MHBrRmVxeiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny8/cGFnZT1sb2dpbiI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175593),
('lsFDTFmzra5RQIAE8WECK7Z0MLkqM4NEyvdJA5hv', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkhuT3NMMlNlNFlKN1h5UzVKbTQ5NmtrUUdtQkgyVDhsRHZnTjViQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/T1BUX1Nlc3Npb249VlRfUmVxIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770175422),
('mbEvF5d6S5d7p50DR3gNZWBTg5SDas358pmbWr1E', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGxySHNsUUo2YlZsUHA2TTZlb2U5OVpzVklEVlQzVnd0SDN1OGdxZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770171754),
('MddxIr4kE0nAXySwIU8Mw5oZEO1XjGlaXFByjCzN', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFJjYTJncHhwTnNicWZGcGFtelFXWnJvWDV6T2ExRTFZRWZZbWg1SyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/b3dhX2RvPWJhc2UubG9naW5Gb3JtIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770175385),
('n3luX8scyVKu7haTQ2hbCKwuwkmstEQcKxcuJl7E', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUw0Mlc0eFp0VE5LQTBORjU5OHNNN3IzTFg1a0hpb25yNzROZUpwNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTA1OiJodHRwczovLzE5Mi4xNjguODguMTM6NjcvP3dpY2tldCUzQWJvb2ttYXJrYWJsZVBhZ2U9JTNBY29tLnZpZGVvaXEuZnVzaW9uLmNhbWVyYXdlYmFwaS51aS5wYWdlcy5Mb2dpblBhZ2UiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770175979),
('nHcU0Z6wFCwMh120eceWfqarL5w2jLmy8RWhwQ04', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDBmeHQyd0dwS3h1dFhOcjQzcmlabk5QbkJTRDBib3Y4a2NMTzc1dCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHAiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770174325),
('NjtlJkcQUyFXamHs3nEWgLOe95wIUCpKJAzzYULa', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzU2TGNGZjg3dUlnemlBRVV0VHRFR0QwOElNbFpSakxwZDFCbXlpTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170991),
('NPCl3Gs89TKpi3vxDaXjxvI8ajJauKH7OmqOM3ly', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWlGajg1RFJFbDhpdERoN2N3cGg2Y29OSmNUNHV2eWdYcThlc3JuRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/YWN0aW9uPWxvZ2luLmluZGV4Jmhvc3Q9MCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175838),
('O3SAqCMgSNQXLCVXDCt5zUwEQe1CLTT3BiaYS2aj', NULL, '192.168.88.23', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM3c0S21Sekg0dW5KdW1JMTI4VGtkT3NvVTF3S05UVVV5TmtmNGxYbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174372),
('OOVJ2huqtcXgCEA2JUp1DJ6gk84CSMRgWR74n4er', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczFhUFdnbnduQXdzVnBIVWxmd0JBUkxlZkZReVlCMDRKQkpLRUlscyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/bW9kdWxlPVVzZXJzJnBhcmVudD1TZXR0aW5ncyZ2aWV3PVN5c3RlbVNldHVwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770175996),
('OsuEX2AME5iybFlNDsjs4QsQcI8JEJpLE4fIQxWA', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUMxbkdnMk5SUDRhVU1BV2tIMGtuRnpkVlVqWTFYSjFkdHVGZEpZSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174700),
('pIeQz16xuZVnZBJYum2cWly4gXIyiraOZFAB524v', NULL, '172.16.92.208', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0hSd0JBZjh6ZlZJZE9Sem5QVGpOaEl5YUdzZnNERWZmSTJvdTVVRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770168372),
('psLf3IO4zNtQSzhDRnru8kODw9COYEdbBMKDCMnI', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWhMWnB6WWhYd3I0MGt4REhaQWZ5NXpXV2hMT2dVRkVkeTdBb3lYUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny8/dmlldz1ob21lIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770175035),
('pXl1LniE0OAGORGQVfRspWAzlrrGAWIamPHbTZZ7', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk1BSUt5T3kwaHpUZVhKRkxSdzN6SktKVnpkVTFycGRvVHRrTUJ0TyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6OTc6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/YWN0aW9uPUxvZ2luJmxvZ2luX2FjdGlvbj1pbmRleCZsb2dpbl9tb2R1bGU9SG9tZSZtb2R1bGU9VXNlcnMiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770175893),
('qcyEnCZ7z8kSiOKDD8PwWxQCmuKfNzfidRS8Hw7f', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0FoUFRIa3RvOGQ2WnllOExBd01iV2FRRHkyc1ZFZXB6SmZBMTVGWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170802),
('r55qd70VWedtN5v5HkiKDKTaXAwCzCyuT8icyqxa', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEp6THN1TVdncDJzQzN1STV4V241MEFjdlNjSDhCbWQyeE13cTFnUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHAiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770174374),
('RA8VQiKSdC8gJUunn0WkukgJDomt0GyZfn242i8k', NULL, '192.168.88.23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWx5bHJwaVVlVzR2MGhLRlowN0pKeHNsRU54c1haQjF6Y0tEdHB1WiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174699),
('sLjT3refnQd9yxW3K95xiexB4K07dVZgIIbfu1pb', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWRYdTlET2ZWSlAyeUI0dnNWQm9EcWpvYVJsQjlEbWxqZ3pNR096MyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Njg6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/YWN0aW9uPXNob3dsb2dpbiZjb250cm9sbGVyPWxvZ2luIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770175042),
('SRHyDpN2mJaSA3AsFrwr8cHXnaqDafoJEK70v7Pi', NULL, '192.168.88.23', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkxmMmVSOWdOcjJIeExsUERIREkxRDd6RkhzYkw5QkpnSDBqZ1dwcyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175320),
('sVA5yudPeLm9GlpjRKOLQKKX6Qxb05egGQ0A9PP7', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFJVemdaaGdmTlczejRWbVg3dkE4QTZhVG5XZ0Vzd3U1eGRNemFrNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170958),
('tVlfa4RldSjIpd0GIRxaAbr6Ip5lE6dmhLBQmkXz', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1Y2MjZoWlQ1bDlaQUNwSHh2cmx3NnRtbGsyS3Awc2t5cnVySnQwbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny8/YWN0aW9uPWxvZ2luJmNvbnRyb2xsZXI9dXNlciI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175185),
('uCsCcJaGmhCguXJW5AtouTWjbDvS6IzY1x1A0jpr', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2ltajNPeE5oUm10VThuQ2VHellOaE55TEQ4NmJiOExpbkczT2VibyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770176645),
('UDnYA2Wf4iDLwfJCZUIlWagqCTVofJPhPpJgPuQR', NULL, '192.168.88.23', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMHBuenBDTFZpUzVqbDVtVEExSFhZRmpUdU5Pd1gzV0kwZnNjdXV1WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174332),
('UrLlfgo5hfFrZnZ7lJW2VQkl5AJgTWun9iQpVv4J', NULL, '192.168.88.23', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTlZKZzhveU82dEpUVnJNRHlsUGRIU0ZONmFkc1RDVlFNOWpXTE1NdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174397),
('uUuTZw3yo7M9g1X3YtvHgDNMySgTY1AHp0fScMFq', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3hJbm12YVZvaG9UTXJqbkgyZEZpZ3RkdVVGaTdsVjFjd3dMdFFqMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny8/YWN0aW9uPWxvZ2luJmNvbnRyb2xsZXI9YXV0aCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175185),
('VeWQXeSRvasdQukjmFr3bslgVzCZhsASobT4wQsz', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE01TkI2c0pwdURMRmxUZEZxbHhyT2VjWkV3Vm5wNFdpS0huZllyWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vdHBvMS5tZWMucGgiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770174350),
('VFwYEPrGHRQDnhUTrapH2JWKPVSfe6OzSIh2RqME', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXFkNVpxenZ6UVJwYmRiYkprY0sxY1BrdHFnMFhSZDJ0d2VoRVpaMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vdHBvMS5tZWMucGgvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770174397),
('VKePWWEXSjCJf3mD6zrWjAUINWOyDAq5IVWGZ4Xk', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFVjRU94NUNvRHpXYmJMSWR1ZjVFUFlFWlRxNXBUV29nVXpaTlFDdiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny8/TT1BIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770176188),
('W0StCzHNh6UdoiqUoRclSLnXZc1KMeoF3t134BiJ', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHU3MVJxMU5VMnpTalVWNnJpa0xUb2xtWkMwY1hVbEFFT0kyMW41ZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny8/bD0wJnE9MCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175083),
('w3igz8miJqrBUBodlzL9ukto0Cl5Gh775gQ7CYYh', NULL, '192.168.88.23', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM29NVjdVQnVjRnhYQUJ0MXFWZ3ZLNUVublg5YmpsMXRISEpIcU1kUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170979),
('WeltmJvvy3Ho7bGgZgFOyQ8WPr5d4OYkOPG9jccG', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkU2VEJmc0FoZHBkN0tIVzVueTE3NzVqREw3dHpTZ1ZsOUtkOFNNeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny8/TW9kZT1kZWJ1ZyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174880),
('XgFXTHH4gzvl8a3eHSTdswc4fveCWVwnjQIbe4fA', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjE0VTFBSDNQS3JBRGhzZ2xyeUg5UWZOSUFxSjd4bXNRa1NsT1dRNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHAiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770171820),
('XiyEArC8UykDNAbAWsFlu2jQ1M4wEWJHiikRQuKO', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDlzeUN5NURmeXF2Q2xTRlF2cWNHZXJhaWxhcDl5NHVxbGVzc095TiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770174686),
('Xwu1SzMC9hb0nUZkA3VcIka2cq7tQuTBXNWadJBi', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWhUclRmRE94Mk1ZNFdQVjlCTDAzVHppUEJrUFY2eVIxTldIRjZXQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/YWN0PWxvZ2luIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770176028),
('yCxcXzulnmgdQxxv7LyTcUXz9HcY2v7RiuT43c88', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVBIYXlkUDk2ZTh4SmJBRk5iOGVQYU5RcFJycTZVWmI1N0ZHN2dzQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTA1OiJodHRwczovLzE5Mi4xNjguODguMTM6NjcvP3dpY2tldCUzQWJvb2ttYXJrYWJsZVBhZ2U9JTNBY29tLnZpZGVvaXEuZnVzaW9uLmNhbWVyYXdlYmFwaS51aS5wYWdlcy5Mb2dpblBhZ2UiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770173908),
('YO3XeaLdZWTDZosIE1Tb6yGm4mZptSacRrpATj6Z', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1ZzbHB3dlEwT09ZZ0x4RmQ4eDE0eDZ3TnJzc0ZocU1ISFpWWDlKMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770176562),
('Yow3HZXgJMi8LkRMzw8RUryd490DRN4a2qZ7Y1I6', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjhVSHRka0NNdll2bHpubWZUd0QzSkZxcUNhelliRmtCazdnbkVjYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/cGFnZT1odHRwJTNBJTJGJTJGeHh4eHh4eHh4eHh4eCUyRnZ0LXRlc3QiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770175830),
('zGRwj1cYWAo4W2wobUnNNguPGY7KA6XPXoMdQEtN', NULL, '192.168.88.23', 'Mozilla/5.0 [en] (X11, U; OpenVAS-VT 22.4.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3ppOVNrVmptckoydlgyY3hrM0I0NDhseHJ2NFJpd1huQU9xUXduOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2Ny9pbmRleC5waHA/bW9kZT1hZG1pbmlzdHJhdGlvbiI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770175908),
('zIiXno6oafVtRpMn1iMR3FlN0QTc11VYAGmvVIOJ', NULL, '192.168.88.23', 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGw5MXpUVnZ3Y1Ruck82MVU1aHh5azlYb0RoWjBZZG5pRElXY3dQSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vMTkyLjE2OC44OC4xMzo2NyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770170828);

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE `systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT 'Icon/logo path for the system',
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `name`, `icon`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'BEATS', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(2, 'BOM', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(3, 'CENTS', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(4, 'ChargeUPS', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(5, 'Inventory', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(6, 'JO Portal', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(7, 'MARS', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(8, 'OPTIMA', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(9, 'RSRS', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(10, 'SR/AR Portal', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(11, 'TARA', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13'),
(12, 'ViMS', NULL, NULL, 1, '2025-12-16 23:09:13', '2025-12-16 23:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `system_request_forms`
--

CREATE TABLE `system_request_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `system_request_link_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('draft','submitted') NOT NULL DEFAULT 'draft',
  `form_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`form_data`)),
  `submitted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_request_forms`
--

INSERT INTO `system_request_forms` (`id`, `system_request_link_id`, `user_id`, `status`, `form_data`, `submitted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'draft', '{\"request_title\":\"dsdasdasdsadsadsa\",\"description\":\"sdadsadasdsa\",\"current_problem\":\"221e2\",\"objective_new_system\":\"dsadsad\",\"expected_benefits\":\"dsadsadsad\",\"target_users\":\"dsadsa\",\"workflow_operations\":\"321321321\",\"key_features\":{\"login_signup\":true,\"dashboard\":false,\"workflow_automation\":true,\"fill_submit_forms\":false,\"upload_download_files\":true,\"track_tasks\":false,\"view_reports\":true,\"send_emails\":false,\"other\":\"dsadsadsad\"},\"priority_level\":\"high\",\"target_implementation_date\":\"2026-02-19\",\"similar_tools\":\"dsadasdsa\",\"other_comments\":\"dsadsada\",\"supporting_documents\":null}', NULL, '2026-02-03 02:55:56', '2026-02-03 03:00:03'),
(2, 3, 2, 'submitted', '{\"request_title\":\"I want to have a notification system on BOM system.\",\"description\":\"Just a notification on every actions being done by the Staff.\",\"feature_description\":\"Just a notification on every actions being done by the Staff.\",\"additional_info\":\"Just a notification on every actions being done by the Staff.\",\"supporting_documents\":[[],[],\"zabdieltumang@gmail.com_tickets-export-1770115435415_sbIARscA.pdf\",\"zabdieltumang@gmail.com_MEC-OPTIMA (2).drawio_o2YJFsPD.png\"],\"email\":\"zabdieltumang@gmail.com\"}', '2026-02-03 07:14:21', '2026-02-03 07:04:05', '2026-02-03 07:14:21'),
(3, 2, 2, 'submitted', '{\"request_title\":\"Attendance System for Interns\",\"description\":\"----\",\"current_problem\":\"----\",\"objective_new_system\":\"----\",\"expected_benefits\":\"----\",\"target_users\":\"Interns, HR, Department Supervisors\",\"workflow_operations\":\"----\",\"key_features\":{\"login_signup\":true,\"dashboard\":true,\"workflow_automation\":false,\"fill_submit_forms\":true,\"upload_download_files\":true,\"track_tasks\":true,\"view_reports\":true,\"send_emails\":true,\"other\":\"----\"},\"priority_level\":\"high\",\"target_implementation_date\":\"2026-05-01\",\"similar_tools\":\"----\",\"other_comments\":\"----\",\"supporting_documents\":[[],\"zabdieltumang@gmail.com_tickets-export-1770115435415_PpGG2Rrl.pdf\"],\"email\":\"zabdieltumang@gmail.com\"}', '2026-02-03 07:24:50', '2026-02-03 07:23:21', '2026-02-03 07:24:50'),
(4, 4, 1, 'submitted', '{\"request_title\":\"New system for NU Interns\",\"description\":\"New system for NU Interns\",\"current_problem\":\"New system for NU Interns\",\"objective_new_system\":\"New system for NU Interns\",\"expected_benefits\":\"New system for NU Interns\",\"target_users\":\"New system for NU Interns\",\"workflow_operations\":\"New system for NU Interns\",\"key_features\":{\"login_signup\":true,\"dashboard\":false,\"workflow_automation\":false,\"fill_submit_forms\":false,\"upload_download_files\":false,\"track_tasks\":false,\"view_reports\":false,\"send_emails\":false,\"other\":\"\"},\"priority_level\":\"high\",\"target_implementation_date\":\"2026-02-03\",\"similar_tools\":\"New system for NU Interns\",\"other_comments\":\"\",\"supporting_documents\":[[],[],[],\"larksigmuondbabao@gmail.com_9th-week_xdf9shEw.docx\",\"larksigmuondbabao@gmail.com_7th-week_GSspAUO0.pdf\",\"larksigmuondbabao@gmail.com_Group 97_ksJArJDb.png\"],\"email\":\"larksigmuondbabao@gmail.com\"}', '2026-02-03 07:28:49', '2026-02-03 07:28:02', '2026-02-03 07:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `system_request_links`
--

CREATE TABLE `system_request_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token_hash` varchar(64) NOT NULL,
  `encrypted_token` text DEFAULT NULL,
  `target_email` varchar(255) NOT NULL,
  `created_by_user_id` bigint(20) UNSIGNED NOT NULL,
  `claimed_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','revoked','submitted') NOT NULL DEFAULT 'active',
  `type` enum('system_request','system_enhancement') NOT NULL DEFAULT 'system_request',
  `expires_at` timestamp NULL DEFAULT NULL,
  `first_accessed_at` timestamp NULL DEFAULT NULL,
  `last_accessed_at` timestamp NULL DEFAULT NULL,
  `access_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `revoked_at` timestamp NULL DEFAULT NULL,
  `revoked_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `submitted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_request_links`
--

INSERT INTO `system_request_links` (`id`, `token_hash`, `encrypted_token`, `target_email`, `created_by_user_id`, `claimed_user_id`, `status`, `type`, `expires_at`, `first_accessed_at`, `last_accessed_at`, `access_count`, `revoked_at`, `revoked_by_user_id`, `submitted_at`, `created_at`, `updated_at`) VALUES
(1, 'a9454d75314a21e4bccd9b77b034f7b0c78445e7bf6258728958520e80c8314a', 'eyJpdiI6IkxVYUZaUExGS0grU1M1b0FWbmJvelE9PSIsInZhbHVlIjoiNk05WGJjUEplNmN4ZHppdGlmUHBJUGRqWVo5Q1hvTXZ4cGZEQnQrc0doNFBjSWR2SFBKZnQwd2F5T2lraGRoeXcvRU5tb2RTbURXQWNOZjJlK3BNbVJqaDBvVTBKS3ZmNGtQUkxneE1HVHc9IiwibWFjIjoiMTYzODQ3ZTdkZWMyYTRhMmQ1M2FmZmRiN2JkNWY3ZWViNzRlMjI0ODczMTFhNWM3MTNkNDg2NWFjOWI1ZThhZCIsInRhZyI6IiJ9', 'zabdieljairus@gmail.com', 3, 3, 'active', 'system_request', NULL, '2026-02-03 02:55:56', '2026-02-03 02:55:56', 1, NULL, NULL, NULL, '2026-02-03 02:55:02', '2026-02-03 02:55:56'),
(2, '3c2dc58b3d0f55d503bbc247d490de82999ebefc578be58f1af0f7a68ea70c40', 'eyJpdiI6InV0M1g0MkxSRlJ3TnBCOTRPNlorWlE9PSIsInZhbHVlIjoiTUxSSm1hNXd6R3VGblNXcGozT3F6bHpNL1g5Lzl6VVdCU05oaENUdUpSNmMzV283N3dKYmY5a0EzNmd3M25CYkIxZkdkd0FQZ0JxMjdFTnJZaTdSQ0c4REU4cVFLQU00L2M4SnhaY29zYXM9IiwibWFjIjoiMWM0NmZkNjBhNGYyMzY2ZDZlMWEyYzRmMDIxZDk5NWM4ZTY5ZWVmNGYyNzI5MmIwYzA1MDhjOGEyZjAyYzdlOSIsInRhZyI6IiJ9', 'zabdieltumang@gmail.com', 1, 2, 'submitted', 'system_request', NULL, '2026-02-03 07:23:21', '2026-02-03 07:23:21', 1, NULL, NULL, '2026-02-03 07:24:50', '2026-02-03 06:59:22', '2026-02-03 07:24:50'),
(3, '9053933a02cf6d0fa0309c7c72bd831fe680cd382c7bc965034db99be9d45413', 'eyJpdiI6ImNjbCs1QzhKK0d1SHVhdmdTNktMdWc9PSIsInZhbHVlIjoiR2ZqaytCVndJcEV6L1VPdEI3MXhrL0o3YU0raUNxSmV6SkVVRDZBU0R1SlRISzVKbVpwK1RROVp6K3pNOWxzSGtTcklMMVVzY0FrUUZnM1NxbGlQREs1ZC9wM21HdDRqVTRXbG9hazY5WFE9IiwibWFjIjoiNTQ0ZWRjNGVlNjc2Y2RmYmFmYzAwMjRjNWEzYWYxZWJmYzQyMjVlNzJhMjczZGRkMjUxOTRlZDhlNWRhMjA4YSIsInRhZyI6IiJ9', 'zabdieltumang@gmail.com', 1, 2, 'submitted', 'system_enhancement', NULL, '2026-02-03 07:04:05', '2026-02-03 07:08:52', 4, NULL, NULL, '2026-02-03 07:14:21', '2026-02-03 06:59:23', '2026-02-03 07:14:21'),
(4, '45b3444a7aa5bf7e63c7375d8651da33f0e6744e8b4e16cbd3ab84d5c42b4151', 'eyJpdiI6Iks5OXJXQWVSM3RXQ3hub3diYW43bHc9PSIsInZhbHVlIjoicTBMVnREaUp3RWVzMkUrenNZeEExYytsaTZYTTVyeksyNFZpclVZVUxhOWp0RWFBYmo0QnVJbWVjRW1xTHJodkNQUG5xeGxkTk9JdzZ4WjgxNk1lUFZHUXBiQ01XRG8yTy9kV2pYd3Z4cGc9IiwibWFjIjoiNWJlYmI0Yzk5YTFmYTFmYzM3MDVkNTE5ZTJhZGFhZWU0NWY4YmMyYWRkY2E1MjU4ZDVmODZkYjAwMWM5N2FmZCIsInRhZyI6IiJ9', 'larksigmuondbabao@gmail.com', 1, 1, 'submitted', 'system_request', NULL, '2026-02-03 07:28:01', '2026-02-03 07:28:01', 1, NULL, NULL, '2026-02-03 07:28:49', '2026-02-03 07:26:58', '2026-02-03 07:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `system_request_tickets`
--

CREATE TABLE `system_request_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `system_request_link_id` bigint(20) UNSIGNED NOT NULL,
  `system_request_form_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_request_tickets`
--

INSERT INTO `system_request_tickets` (`id`, `ticket_id`, `system_request_link_id`, `system_request_form_id`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 2, '2026-02-03 07:14:22', '2026-02-03 07:14:22'),
(2, 6, 2, 3, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(3, 7, 4, 4, '2026-02-03 07:28:50', '2026-02-03 07:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_number` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `system_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL COMMENT 'Proof attachment file path (PDF, JPG, PNG only)',
  `system_name` varchar(255) NOT NULL,
  `ai_suggestion` text DEFAULT NULL,
  `status` enum('open','pending','in_progress','resolved','returned','overdue','cancelled') DEFAULT 'open',
  `priority_level` varchar(20) DEFAULT NULL,
  `progress_checking_timeframe` int(11) DEFAULT NULL COMMENT 'Timeframe in weeks',
  `submitted_at` timestamp NULL DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `overdue_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_number`, `user_id`, `title`, `description`, `system_id`, `attachment`, `system_name`, `ai_suggestion`, `status`, `priority_level`, `progress_checking_timeframe`, `submitted_at`, `assigned_at`, `resolved_at`, `returned_at`, `overdue_at`, `created_at`, `updated_at`) VALUES
(1, '2026-00001', 3, 'mobile display not responsive. please help', 'Mobile display on my phone is not properly aligned.', 3, '[\"zabdieljairus@gmail.com_Screenshot 2025-12-02 135512_aqpVoCUZ.png\",\"zabdieljairus@gmail.com_Screenshot 2025-12-04 143603_kDxmYOHK.png\",\"zabdieljairus@gmail.com_Screenshot 2025-12-04 143810_TqfMnSdy.png\"]', 'CENTS', '{\"ai_feedback\":{\"steps\":[\"This looks like a new issue. Create a support ticket so our team can investigate it end-to-end.\",\"Include screenshots\\/error messages, the exact steps you took, and your system\\/browser\\/device details.\",\"You\\u2019ll get updates in your ticket, and once we resolve it, this fix can be reused next time.\"],\"synthesized_from\":[],\"generated_at\":\"2026-02-03T10:39:30+00:00\",\"query\":\"mobile display not responsive\"}}', 'resolved', NULL, NULL, '2026-02-03 02:45:47', '2026-02-03 02:41:17', '2026-02-03 02:49:08', NULL, '2026-02-20 07:59:59', '2026-02-03 02:39:59', '2026-02-03 02:49:08'),
(2, '2026-00002', 2, 'i can\'t login to my account. it says admin has locked your account', 'error says \"Admin has Locked your account\"', 3, 'zabdieltumang@gmail.com_Screenshot 2026-02-03 221330_FGZzYOrL.png', 'CENTS', '{\"ai_feedback\":{\"steps\":[\"This issue appears new. Create a ticket so we can investigate and escalate it to the right team.\",\"Add any screenshots, error messages, and the exact steps to reproduce the problem.\",\"You\\u2019ll receive updates in the ticket\\u2014and once resolved, the fix can be reused next time.\"],\"synthesized_from\":[],\"generated_at\":\"2026-02-03T14:12:08+00:00\",\"query\":\"i can\'t login to my account. it says admin has locked your account\"}}', 'resolved', NULL, NULL, '2026-02-03 06:13:53', '2026-02-03 06:41:20', '2026-02-03 06:42:59', NULL, '2026-02-09 07:59:59', '2026-02-03 06:13:53', '2026-02-03 06:42:59'),
(3, '2026-00003', 9, 'OTP not being sent to my email after system says \"OTP sent\"', 'I am trying to login, but I am not receiving any OTP after system says \"OTP has been sent to your account\"', 2, '[\"capstonemetapass@gmail.com_Screenshot 2026-02-03 224249_FGeKZGlt.png\",\"capstonemetapass@gmail.com_Screenshot 2025-12-02 135512_nff0IThy.png\"]', 'BOM', '{\"ai_feedback\":{\"steps\":[\"This issue appears new. Create a ticket so we can investigate and escalate it to the right team.\",\"Add any screenshots, error messages, and the exact steps to reproduce the problem.\",\"You\\u2019ll receive updates in the ticket\\u2014and once resolved, the fix can be reused next time.\"],\"synthesized_from\":[],\"generated_at\":\"2026-02-03T14:40:58+00:00\",\"query\":\"OTP not being sent to my email\"}}', 'resolved', NULL, NULL, '2026-02-03 06:50:52', '2026-02-03 06:45:07', '2026-02-03 06:51:28', NULL, '2026-02-09 07:59:59', '2026-02-03 06:43:24', '2026-02-03 06:51:28'),
(4, '2026-00004', 2, 'OTP not being sent on my email. I am using BEATS system', 'Please help me with my account. OTP is not being sent when I am logging in.', 1, 'zabdieltumang@gmail.com_Screenshot 2026-02-03 224249_xSaHBJx4.png', 'BEATS', '{\"ai_feedback\":{\"type\":\"developer_required\",\"message\":\"This issue requires developer assistance. The similar resolved ticket indicates that this type of problem (OTP not being sent even though the system says it was sent) was fixed on the backend by attaching or correcting the OTP linkage to the registered email, which only a developer or system administrator can do. Please contact MEC\\/BEATS support or create a ticket so a developer can check and fix the OTP-email linkage for your account.\",\"synthesized_from\":[{\"kb_entry_id\":4,\"ticket_number\":\"2026-00003\",\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\"}],\"generated_at\":\"2026-02-03T14:57:43+00:00\",\"query\":\"OTP not being sent on my email. I am using BEATS system\"},\"kb_entry\":{\"id\":4,\"title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"concern\":\"I am trying to login, but I am not receiving any OTP after system says \\\"OTP has been sent to your account\\\"\",\"solution\":\"The issue has resolved by attaching the otp to the linked email\",\"category\":{\"id\":10,\"name\":\"otp\"},\"ticket_number\":\"2026-00003\"}}', 'open', NULL, NULL, '2026-02-03 06:58:53', NULL, NULL, NULL, NULL, '2026-02-03 06:58:53', '2026-02-03 06:58:53'),
(5, '2026-00005', 2, 'New System / Enhancement Request', 'Just a notification on every actions being done by the Staff.', NULL, NULL, 'New System / Enhancement Request', NULL, 'open', NULL, NULL, '2026-02-03 07:14:21', NULL, NULL, NULL, NULL, '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(6, '2026-00006', 2, 'New System / Enhancement Request', '----', NULL, NULL, 'New System / Enhancement Request', NULL, 'open', 'high', NULL, '2026-02-03 07:24:50', NULL, NULL, NULL, NULL, '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(7, '2026-00007', 1, 'New System / Enhancement Request', 'New system for NU Interns', NULL, NULL, 'New System / Enhancement Request', NULL, 'resolved', 'high', NULL, '2026-02-03 07:28:49', '2026-02-03 07:34:41', NULL, NULL, NULL, '2026-02-03 07:28:49', '2026-02-03 07:34:54'),
(8, '2026-00008', 3, 'I can\'t connect to the internet', 'I can\'t connect to the internet even though my laptop is connected to the wifi', 9, 'zabdieljairus@gmail.com_photo-1627639679638-8485316a4b21_8Larahyi.jfif', 'RSRS', '{\"ai_feedback\":{\"steps\":[\"This issue appears new. Create a ticket so we can investigate and escalate it to the right team.\",\"Add any screenshots, error messages, and the exact steps to reproduce the problem.\",\"You\\u2019ll receive updates in the ticket\\u2014and once resolved, the fix can be reused next time.\"],\"synthesized_from\":[],\"generated_at\":\"2026-02-04T02:33:30+00:00\",\"query\":\"I can\'t connect to the internet\"}}', 'resolved', NULL, NULL, '2026-02-03 18:34:24', '2026-02-03 18:36:26', '2026-02-03 18:40:52', NULL, '2026-02-10 07:59:59', '2026-02-03 18:34:24', '2026-02-03 18:40:52'),
(9, '2026-00009', 3, 'BEATS system is not loading. I don\'t know if it is because of my internet connection', 'I still can\'t connect to BEATS system. System is not loading. please help', 1, 'zabdieljairus@gmail.com_Screenshot 2025-12-02 135512_UZNbvWP9.png', 'BEATS', '{\"ai_feedback\":{\"type\":\"actionable_steps\",\"steps\":[\"Step 1: Check if other websites or online apps are loading on the same device to confirm if your internet is working.\",\"Step 2: If you are using Wi\\u2011Fi, turn your laptop\\u2019s Wi\\u2011Fi off, wait 10 seconds, then turn it back on and try loading BEATS again.\",\"Step 3: If you are using a LAN cable, check that the cable is firmly connected to both your laptop and the router\\/switch, then try loading BEATS again.\",\"Step 4: Restart your laptop, reconnect to the internet, and then try accessing the BEATS system once more.\",\"Step 5: If BEATS still does not load but other websites work, take a screenshot of the error (if any) and contact MEC support for further checking.\"],\"synthesized_from\":[{\"kb_entry_id\":5,\"ticket_number\":\"2026-00008\",\"title\":\"I can\'t connect to the internet\"}],\"generated_at\":\"2026-02-04T03:11:26+00:00\",\"query\":\"BEATS system is not loading. I don\'t know if it is because of my internet connection\"},\"kb_entry\":{\"id\":5,\"title\":\"I can\'t connect to the internet\",\"concern\":\"I can\'t connect to the internet even though my laptop is connected to the wifi\",\"solution\":\"You can try to resolve your problem by:\\n- Checking your lan cable if it is working (If only you are using a lan cable).\\n-  Try to Restart your Laptop\'s Wifi.\\n\\nIf these two steps didn\'t solve your problem. Please Contact support immediately.\",\"category\":{\"id\":5,\"name\":\"general\"},\"ticket_number\":\"2026-00008\"}}', 'open', NULL, NULL, '2026-02-03 19:12:41', NULL, NULL, NULL, NULL, '2026-02-03 19:12:41', '2026-02-03 19:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_assignments`
--

CREATE TABLE `ticket_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `developer_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_by` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_assignments`
--

INSERT INTO `ticket_assignments` (`id`, `ticket_id`, `developer_id`, `assigned_by`, `assigned_at`, `accepted_at`, `created_at`, `updated_at`) VALUES
(4, 1, 7, 3, '2026-02-03 02:41:16', '2026-02-03 02:47:50', '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(5, 1, 3, 3, '2026-02-03 02:41:16', NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(6, 1, 8, 3, '2026-02-03 02:47:50', NULL, '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(7, 2, 8, 1, '2026-02-03 06:41:20', '2026-02-03 06:41:38', '2026-02-03 06:41:20', '2026-02-03 06:41:38'),
(8, 3, 8, 1, '2026-02-03 06:45:07', '2026-02-03 06:45:26', '2026-02-03 06:45:07', '2026-02-03 06:45:26'),
(9, 3, 6, 1, '2026-02-03 06:45:07', NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(10, 3, 7, 1, '2026-02-03 06:45:07', NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(11, 3, 3, 1, '2026-02-03 06:45:07', NULL, '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(12, 7, 8, 1, '2026-02-03 07:34:41', NULL, '2026-02-03 07:34:41', '2026-02-03 07:34:41'),
(13, 8, 3, 3, '2026-02-03 18:36:26', '2026-02-03 18:37:13', '2026-02-03 18:36:26', '2026-02-03 18:37:13'),
(14, 8, 7, 3, '2026-02-03 18:36:26', NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(15, 8, 8, 3, '2026-02-03 18:36:26', NULL, '2026-02-03 18:36:26', '2026-02-03 18:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_histories`
--

CREATE TABLE `ticket_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL COMMENT 'created, edited, assigned, returned, resolved, saved_to_kb, commented, etc.',
  `title` varchar(255) DEFAULT NULL COMMENT 'Event title for display',
  `description` text DEFAULT NULL COMMENT 'Event description',
  `action` varchar(255) NOT NULL,
  `changes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Track what changed (field, old_value, new_value)' CHECK (json_valid(`changes`)),
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_histories`
--

INSERT INTO `ticket_histories` (`id`, `ticket_id`, `user_id`, `event_type`, `title`, `description`, `action`, `changes`, `old_value`, `new_value`, `metadata`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'created', 'Ticket Created', 'You created this ticket and submitted it for review.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"title\":\"mobile display not responsive\",\"system_id\":3,\"system_name\":\"CENTS\",\"has_attachment\":true}', '2026-02-03 02:39:59', '2026-02-03 02:39:59'),
(2, 1, 3, 'edited', 'Ticket Edited', 'An admin or designator updated the Deadline.', 'updated', '[{\"field\":\"overdue_at\",\"old_value\":null,\"new_value\":\"2026-02-20T15:59:59.999Z\"}]', NULL, NULL, '{\"fields_updated\":[\"overdue_at\"],\"updated_by_role\":\"designator\"}', '2026-02-03 02:41:14', '2026-02-03 02:41:14'),
(3, 1, 3, 'assigned', 'Ticket Assigned', 'Zab Developer was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Zab Developer\"}]', 'open', 'pending', '{\"developer_id\":7,\"developer_name\":\"Zab Developer\"}', '2026-02-03 02:41:16', '2026-02-03 02:41:16'),
(4, 1, 3, 'assigned', 'Ticket Assigned', 'Developer User was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Developer User\"}]', 'open', 'pending', '{\"developer_id\":6,\"developer_name\":\"Developer User\"}', '2026-02-03 02:41:16', '2026-02-03 02:41:16'),
(5, 1, 3, 'assigned', 'Ticket Assigned', 'Zab Admin was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Zab Admin\"}]', 'open', 'pending', '{\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', '2026-02-03 02:41:16', '2026-02-03 02:41:16'),
(6, 1, 3, 'accepted', 'Ticket Accepted', 'Zab Admin started working on this ticket.', 'accepted', '[{\"field\":\"status\",\"old_value\":\"pending\",\"new_value\":\"in_progress\"}]', 'pending', 'in_progress', '{\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', '2026-02-03 02:42:55', '2026-02-03 02:42:55'),
(7, 1, 3, 'returned', 'Ticket Returned', 'Zab Admin returned this ticket for revision. Reason: please make it clear. details are not that clear', 'returned', '[{\"field\":\"status\",\"old_value\":\"in_progress\",\"new_value\":\"returned\"}]', 'in_progress', 'returned', '{\"remark\":\"please make it clear. details are not that clear\",\"returned_at\":\"2026-02-03T10:44:58.723395Z\",\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', '2026-02-03 02:44:58', '2026-02-03 02:44:58'),
(8, 1, 3, 'info_updated', 'Ticket Info Updated', 'You updated the ticket information: title.', 'info_updated', '[{\"field\":\"title\",\"old_value\":\"mobile display not responsive\",\"new_value\":\"mobile display not responsive. please help\"}]', 'returned', 'returned', '{\"fields_updated\":[\"title\"],\"has_new_attachments\":false,\"attachment_count\":1,\"kept_attachments_count\":1,\"new_attachments_count\":0}', '2026-02-03 02:45:17', '2026-02-03 02:45:17'),
(9, 1, 3, 'info_updated', 'Ticket Info Updated', 'You updated the ticket information: attachments. New attachments have been uploaded.', 'info_updated', '[{\"field\":\"attachment\",\"old_value\":\"zabdieljairus@gmail.com_Screenshot 2025-12-02 135512_aqpVoCUZ.png\",\"new_value\":\"[\\\"zabdieljairus@gmail.com_Screenshot 2025-12-02 135512_aqpVoCUZ.png\\\",\\\"zabdieljairus@gmail.com_Screenshot 2025-12-04 143603_kDxmYOHK.png\\\",\\\"zabdieljairus@gmail.com_Screenshot 2025-12-04 143810_TqfMnSdy.png\\\"]\"}]', 'returned', 'returned', '{\"fields_updated\":[\"attachments\"],\"has_new_attachments\":true,\"attachment_count\":3,\"kept_attachments_count\":1,\"new_attachments_count\":2}', '2026-02-03 02:45:27', '2026-02-03 02:45:27'),
(10, 1, 3, 'resubmitted', 'Ticket Resubmitted', 'You resubmitted this ticket after making the requested changes. Remark: i already provided more proof', 'resubmitted', '[{\"field\":\"status\",\"old_value\":\"returned\",\"new_value\":\"in_progress\"}]', 'returned', 'in_progress', '{\"remark\":\"i already provided more proof\",\"has_assignments\":true,\"has_accepted_assignments\":true,\"previous_assigned_developer\":true,\"has_new_attachments\":false,\"attachment_count\":0,\"fields_updated\":[]}', '2026-02-03 02:45:47', '2026-02-03 02:45:47'),
(11, 1, 3, 'bulk_reassigned', 'Developers Reassigned', 'Assigned Tyrel Developer, removed Developer User.', 'bulk_reassigned', '[{\"field\":\"assigned_developers\",\"old_value\":\"Zab Developer, Developer User, Zab Admin\",\"new_value\":\"Zab Developer, Zab Admin, Tyrel Developer\"}]', 'in_progress', 'in_progress', '{\"added_developers\":[\"Tyrel Developer\"],\"removed_developers\":[\"Developer User\"],\"kept_developers\":[],\"total_developers\":3}', '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(12, 1, 3, 'lead_reassigned', 'Lead Developer Reassigned', 'Zab Developer became the lead developer from Zab Admin.', 'lead_reassigned', '[{\"field\":\"lead_developer\",\"old_value\":\"Zab Admin\",\"new_value\":\"Zab Developer\"}]', 'assigned', 'lead_developer', '{\"developer_id\":7,\"developer_name\":\"Zab Developer\",\"new_lead\":\"Zab Developer\",\"previous_lead\":\"Zab Admin\",\"transferred_by\":3,\"transferred_by_name\":\"Zab Admin\",\"previous_lead_developers\":[\"Zab Admin\"],\"role\":\"lead\"}', '2026-02-03 02:47:50', '2026-02-03 02:47:50'),
(13, 1, 3, 'resolved', 'Ticket Resolved', 'Zab Admin marked this ticket as resolved with a solution.', 'resolved', '[{\"field\":\"status\",\"old_value\":\"resolved\",\"new_value\":\"resolved\"}]', 'resolved', 'resolved', '{\"solution\":\"i already fixed the responsiveness of mobile layout.\"}', '2026-02-03 02:49:08', '2026-02-03 02:49:08'),
(14, 1, 3, 'saved_to_kb', 'Saved to Knowledge Base', 'Zab Admin saved this ticket\'s solution to OptiPedia for future reference.', 'saved_to_kb', '[{\"field\":\"kb_entry_id\",\"old_value\":null,\"new_value\":1}]', NULL, NULL, '{\"kb_entry_id\":1,\"kb_entry_title\":\"mobile display not responsive. please help\",\"category_id\":9,\"saved_by\":3,\"saved_by_name\":\"Zab Admin\"}', '2026-02-03 02:50:31', '2026-02-03 02:50:31'),
(15, 2, 2, 'created', 'Ticket Created', 'You created this ticket and submitted it for review.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"title\":\"i can\'t login to my account. it says admin has locked your account\",\"system_id\":3,\"system_name\":\"CENTS\",\"has_attachment\":true}', '2026-02-03 06:13:53', '2026-02-03 06:13:53'),
(16, 2, 1, 'edited', 'Ticket Edited', 'An admin or designator updated the Deadline.', 'updated', '[{\"field\":\"overdue_at\",\"old_value\":null,\"new_value\":\"2026-02-09T15:59:59.999Z\"}]', NULL, NULL, '{\"fields_updated\":[\"overdue_at\"],\"updated_by_role\":\"designator\"}', '2026-02-03 06:41:18', '2026-02-03 06:41:18'),
(17, 2, 1, 'assigned', 'Ticket Assigned', 'Tyrel Cruz was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Tyrel Cruz\"}]', 'open', 'pending', '{\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', '2026-02-03 06:41:20', '2026-02-03 06:41:20'),
(18, 2, 8, 'accepted', 'Ticket Accepted', 'Tyrel Cruz started working on this ticket.', 'accepted', '[{\"field\":\"status\",\"old_value\":\"pending\",\"new_value\":\"in_progress\"}]', 'pending', 'in_progress', '{\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', '2026-02-03 06:41:38', '2026-02-03 06:41:38'),
(19, 2, 8, 'resolved', 'Ticket Resolved', 'Tyrel Cruz marked this ticket as resolved with a solution.', 'resolved', '[{\"field\":\"status\",\"old_value\":\"resolved\",\"new_value\":\"resolved\"}]', 'resolved', 'resolved', '{\"solution\":\"The account was found to be locked by the administrator. The account has now been unlocked, and the user is able to log in successfully.\"}', '2026-02-03 06:42:59', '2026-02-03 06:42:59'),
(20, 3, 9, 'created', 'Ticket Created', 'You created this ticket and submitted it for review.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"title\":\"OTP not being sent to my email\",\"system_id\":2,\"system_name\":\"BOM\",\"has_attachment\":true}', '2026-02-03 06:43:25', '2026-02-03 06:43:25'),
(21, 2, 8, 'saved_to_kb', 'Saved to Knowledge Base', 'Tyrel Cruz saved this ticket\'s solution to OptiPedia for future reference.', 'saved_to_kb', '[{\"field\":\"kb_entry_id\",\"old_value\":null,\"new_value\":2}]', NULL, NULL, '{\"kb_entry_id\":2,\"kb_entry_title\":\"i can\'t login to my account. it says admin has locked your account\",\"category_id\":2,\"saved_by\":8,\"saved_by_name\":\"Tyrel Cruz\"}', '2026-02-03 06:43:30', '2026-02-03 06:43:30'),
(22, 3, 1, 'edited', 'Ticket Edited', 'An admin or designator updated the Deadline.', 'updated', '[{\"field\":\"overdue_at\",\"old_value\":null,\"new_value\":\"2026-02-09T15:59:59.999Z\"}]', NULL, NULL, '{\"fields_updated\":[\"overdue_at\"],\"updated_by_role\":\"designator\"}', '2026-02-03 06:44:53', '2026-02-03 06:44:53'),
(23, 3, 1, 'assigned', 'Ticket Assigned', 'Tyrel Cruz was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Tyrel Cruz\"}]', 'open', 'pending', '{\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(24, 3, 1, 'assigned', 'Ticket Assigned', 'Developer User was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Developer User\"}]', 'open', 'pending', '{\"developer_id\":6,\"developer_name\":\"Developer User\"}', '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(25, 3, 1, 'assigned', 'Ticket Assigned', 'Zab Tumang was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Zab Tumang\"}]', 'open', 'pending', '{\"developer_id\":7,\"developer_name\":\"Zab Tumang\"}', '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(26, 3, 1, 'assigned', 'Ticket Assigned', 'Zab Admin was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Zab Admin\"}]', 'open', 'pending', '{\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', '2026-02-03 06:45:07', '2026-02-03 06:45:07'),
(27, 3, 8, 'accepted', 'Ticket Accepted', 'Tyrel Cruz started working on this ticket.', 'accepted', '[{\"field\":\"status\",\"old_value\":\"pending\",\"new_value\":\"in_progress\"}]', 'pending', 'in_progress', '{\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', '2026-02-03 06:45:26', '2026-02-03 06:45:26'),
(28, 3, 8, 'returned', 'Ticket Returned', 'Tyrel Cruz returned this ticket for revision. Reason: Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.', 'returned', '[{\"field\":\"status\",\"old_value\":\"in_progress\",\"new_value\":\"returned\"}]', 'in_progress', 'returned', '{\"remark\":\"Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.\",\"returned_at\":\"2026-02-03T14:46:25.429074Z\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', '2026-02-03 06:46:25', '2026-02-03 06:46:25'),
(29, 3, 9, 'info_updated', 'Ticket Info Updated', 'You updated the ticket information: title, attachments. New attachments have been uploaded.', 'info_updated', '[{\"field\":\"title\",\"old_value\":\"OTP not being sent to my email\",\"new_value\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\"},{\"field\":\"attachment\",\"old_value\":\"capstonemetapass@gmail.com_Screenshot 2026-02-03 224249_FGeKZGlt.png\",\"new_value\":\"[\\\"capstonemetapass@gmail.com_Screenshot 2026-02-03 224249_FGeKZGlt.png\\\",\\\"capstonemetapass@gmail.com_Screenshot 2025-12-02 135512_nff0IThy.png\\\"]\"}]', 'returned', 'returned', '{\"fields_updated\":[\"title\",\"attachments\"],\"has_new_attachments\":true,\"attachment_count\":2,\"kept_attachments_count\":1,\"new_attachments_count\":1}', '2026-02-03 06:47:22', '2026-02-03 06:47:22'),
(30, 3, 9, 'resubmitted', 'Ticket Resubmitted', 'You resubmitted this ticket after making the requested changes. Remark: I already edited my ticket info also I attached a new photo for proof.', 'resubmitted', '[{\"field\":\"status\",\"old_value\":\"returned\",\"new_value\":\"in_progress\"}]', 'returned', 'in_progress', '{\"remark\":\"I already edited my ticket info also I attached a new photo for proof.\",\"has_assignments\":true,\"has_accepted_assignments\":true,\"previous_assigned_developer\":true,\"has_new_attachments\":false,\"attachment_count\":0,\"fields_updated\":[]}', '2026-02-03 06:47:55', '2026-02-03 06:47:55'),
(31, 3, 8, 'returned', 'Ticket Returned', 'Tyrel Cruz returned this ticket for revision. Reason: Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close', 'returned', '[{\"field\":\"status\",\"old_value\":\"in_progress\",\"new_value\":\"returned\"}]', 'in_progress', 'returned', '{\"remark\":\"Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close\",\"returned_at\":\"2026-02-03T14:50:15.038525Z\",\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', '2026-02-03 06:50:15', '2026-02-03 06:50:15'),
(32, 3, 9, 'resubmitted', 'Ticket Resubmitted', 'You resubmitted this ticket after making the requested changes. Remark: The issue has been solved. thank you sir.', 'resubmitted', '[{\"field\":\"status\",\"old_value\":\"returned\",\"new_value\":\"in_progress\"}]', 'returned', 'in_progress', '{\"remark\":\"The issue has been solved. thank you sir.\",\"has_assignments\":true,\"has_accepted_assignments\":true,\"previous_assigned_developer\":true,\"has_new_attachments\":false,\"attachment_count\":0,\"fields_updated\":[]}', '2026-02-03 06:50:52', '2026-02-03 06:50:52'),
(33, 3, 8, 'resolved', 'Ticket Resolved', 'Tyrel Cruz marked this ticket as resolved with a solution.', 'resolved', '[{\"field\":\"status\",\"old_value\":\"resolved\",\"new_value\":\"resolved\"}]', 'resolved', 'resolved', '{\"solution\":\"The issue has resolved by attaching the otp to the linked email\"}', '2026-02-03 06:51:28', '2026-02-03 06:51:28'),
(34, 3, 8, 'saved_to_kb', 'Saved to Knowledge Base', 'Tyrel Cruz saved this ticket\'s solution to OptiPedia for future reference.', 'saved_to_kb', '[{\"field\":\"kb_entry_id\",\"old_value\":null,\"new_value\":3}]', NULL, NULL, '{\"kb_entry_id\":3,\"kb_entry_title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"category_id\":2,\"saved_by\":8,\"saved_by_name\":\"Tyrel Cruz\"}', '2026-02-03 06:52:29', '2026-02-03 06:52:29'),
(35, 3, 8, 'saved_to_kb', 'Saved to Knowledge Base', 'Tyrel Cruz saved this ticket\'s solution to OptiPedia for future reference.', 'saved_to_kb', '[{\"field\":\"kb_entry_id\",\"old_value\":null,\"new_value\":4}]', NULL, NULL, '{\"kb_entry_id\":4,\"kb_entry_title\":\"OTP not being sent to my email after system says \\\"OTP sent\\\"\",\"category_id\":10,\"saved_by\":8,\"saved_by_name\":\"Tyrel Cruz\"}', '2026-02-03 06:53:25', '2026-02-03 06:53:25'),
(36, 4, 2, 'created', 'Ticket Created', 'You created this ticket and submitted it for review.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"title\":\"OTP not being sent on my email. I am using BEATS system\",\"system_id\":1,\"system_name\":\"BEATS\",\"has_attachment\":true}', '2026-02-03 06:58:53', '2026-02-03 06:58:53'),
(37, 5, 2, 'created', 'Ticket Created', 'New System / Enhancement Request form submitted.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"type\":\"system_request\",\"system_request_link_id\":3,\"system_request_form_id\":2}', '2026-02-03 07:14:21', '2026-02-03 07:14:21'),
(38, 6, 2, 'created', 'Ticket Created', 'New System / Enhancement Request form submitted.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"type\":\"system_request\",\"system_request_link_id\":2,\"system_request_form_id\":3}', '2026-02-03 07:24:50', '2026-02-03 07:24:50'),
(39, 7, 1, 'created', 'Ticket Created', 'New System / Enhancement Request form submitted.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"type\":\"system_request\",\"system_request_link_id\":4,\"system_request_form_id\":4}', '2026-02-03 07:28:49', '2026-02-03 07:28:49'),
(40, 7, 1, 'assigned', 'Ticket Assigned', 'Tyrel Cruz was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Tyrel Cruz\"}]', 'open', 'pending', '{\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', '2026-02-03 07:34:41', '2026-02-03 07:34:41'),
(41, 7, 1, 'status_updated', 'Status Updated', 'Lark Babao changed status from pending to completed with comment: done', 'status_updated', NULL, 'pending', 'completed', '{\"type\":\"system_request\",\"updated_by\":\"Lark Babao\",\"updated_by_id\":1,\"comment\":\"done\",\"status_changed\":true,\"old_status\":\"pending\",\"new_status\":\"completed\",\"old_database_status\":\"pending\",\"new_database_status\":\"resolved\"}', '2026-02-03 07:34:54', '2026-02-03 07:34:54'),
(42, 8, 3, 'created', 'Ticket Created', 'You created this ticket and submitted it for review.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"title\":\"I can\'t connect to the internet\",\"system_id\":9,\"system_name\":\"RSRS\",\"has_attachment\":true}', '2026-02-03 18:34:24', '2026-02-03 18:34:24'),
(43, 8, 3, 'edited', 'Ticket Edited', 'An admin or designator updated the Deadline.', 'updated', '[{\"field\":\"overdue_at\",\"old_value\":null,\"new_value\":\"2026-02-10T15:59:59.999Z\"}]', NULL, NULL, '{\"fields_updated\":[\"overdue_at\"],\"updated_by_role\":\"designator\"}', '2026-02-03 18:36:23', '2026-02-03 18:36:23'),
(44, 8, 3, 'assigned', 'Ticket Assigned', 'Zab Admin was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Zab Admin\"}]', 'open', 'pending', '{\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(45, 8, 3, 'assigned', 'Ticket Assigned', 'Zab Tumang was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Zab Tumang\"}]', 'open', 'pending', '{\"developer_id\":7,\"developer_name\":\"Zab Tumang\"}', '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(46, 8, 3, 'assigned', 'Ticket Assigned', 'Tyrel Cruz was assigned to work on this ticket.', 'assigned', '[{\"field\":\"assigned_developer\",\"old_value\":null,\"new_value\":\"Tyrel Cruz\"}]', 'open', 'pending', '{\"developer_id\":8,\"developer_name\":\"Tyrel Cruz\"}', '2026-02-03 18:36:26', '2026-02-03 18:36:26'),
(47, 8, 3, 'accepted', 'Ticket Accepted', 'Zab Admin started working on this ticket.', 'accepted', '[{\"field\":\"status\",\"old_value\":\"pending\",\"new_value\":\"in_progress\"}]', 'pending', 'in_progress', '{\"developer_id\":3,\"developer_name\":\"Zab Admin\"}', '2026-02-03 18:37:13', '2026-02-03 18:37:13'),
(48, 8, 3, 'resolved', 'Ticket Resolved', 'Zab Admin marked this ticket as resolved with a solution.', 'resolved', '[{\"field\":\"status\",\"old_value\":\"resolved\",\"new_value\":\"resolved\"}]', 'resolved', 'resolved', '{\"solution\":\"You can try to resolve your problem by:\\n- Checking your lan cable if it is working (If only you are using a lan cable).\\n-  Try to Restart your Laptop\'s Wifi.\\n\\nIf these two steps didn\'t solve your problem. Please Contact support immediately.\"}', '2026-02-03 18:40:52', '2026-02-03 18:40:52'),
(49, 8, 3, 'saved_to_kb', 'Saved to Knowledge Base', 'Zab Admin saved this ticket\'s solution to OptiPedia for future reference.', 'saved_to_kb', '[{\"field\":\"kb_entry_id\",\"old_value\":null,\"new_value\":5}]', NULL, NULL, '{\"kb_entry_id\":5,\"kb_entry_title\":\"I can\'t connect to the internet\",\"category_id\":5,\"saved_by\":3,\"saved_by_name\":\"Zab Admin\"}', '2026-02-03 18:46:27', '2026-02-03 18:46:27'),
(50, 9, 3, 'created', 'Ticket Created', 'You created this ticket and submitted it for review.', 'created', '[{\"field\":\"status\",\"old_value\":null,\"new_value\":\"open\"}]', NULL, 'open', '{\"title\":\"BEATS system is not loading. I don\'t know if it is because of my internet connection\",\"system_id\":1,\"system_name\":\"BEATS\",\"has_attachment\":true}', '2026-02-03 19:12:41', '2026-02-03 19:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_returns`
--

CREATE TABLE `ticket_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `returned_by` bigint(20) UNSIGNED NOT NULL,
  `remark` text NOT NULL,
  `returned_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_returns`
--

INSERT INTO `ticket_returns` (`id`, `ticket_id`, `returned_by`, `remark`, `returned_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'please make it clear. details are not that clear', '2026-02-03 02:44:58', '2026-02-03 02:44:58', '2026-02-03 02:44:58'),
(2, 3, 8, 'Investigated the issue where OTP was not received. Confirmed the email address on the account and tested OTP delivery. The OTP email was found in the spam folder. User was able to receive OTP successfully after whitelisting the system email.', '2026-02-03 06:46:25', '2026-02-03 06:46:25', '2026-02-03 06:46:25'),
(3, 3, 8, 'Ive resolved your issue plese check right now for the changes and if the changes is correct resubmit the ticket to close', '2026-02-03 06:50:15', '2026-02-03 06:50:15', '2026-02-03 06:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL COMMENT 'Profile picture file path',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `route_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`route_access`)),
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `department`, `profile_picture`, `email_verified_at`, `password`, `permissions`, `status`, `route_access`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Lark Babao', 'larksigmuondbabao@gmail.com', 'TPO (Head)', 'larksigmuondbabao@gmail.com_viber_image_2026-01-15_17-06-37-209_mUgm8gn6.jpg', NULL, '$2y$12$HW2XoN5JuVH4rCWNomUNVekjI9HHqJH9cgPbVhOKNAZbUX/8Ujqwm', '[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_system_requests\",\"can_access_designator_users\",\"can_access_designator_calendar\",\"can_access_designator_tickets\"]', 'active', '[\"\\/designator\\/dashboard\",\"\\/designator\\/system-requests\",\"\\/designator\\/users\",\"\\/designator\\/calendar\",\"\\/designator\\/tickets\"]', NULL, '2025-11-20 00:39:56', '2026-02-03 19:19:58'),
(2, NULL, 'Zabdiel Jairus', 'zabdieltumang@gmail.com', 'TPO (Head)', 'zabdieltumang@gmail.com_zabdp_s8jEARU4.jpg', '2025-12-16 23:09:11', '$2y$12$Q2T5s2Xrn80Qk3S/IGw1WuJsZTFVeWJkD.h9uZUa35TzeYbpvJLJi', '[\"developer\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_optipedia\"]', 'active', '[\"\\/dev\\/dashboard\",\"\\/dev\\/tickets\",\"\\/dev\\/system-requests\",\"\\/dev\\/calendar\",\"\\/dev\\/optipedia\"]', NULL, '2025-12-16 23:09:11', '2026-02-03 19:26:14'),
(3, NULL, 'Super Admin', 'zabdieljairus@gmail.com', 'TPO (Head)', 'zabdieljairus@gmail.com_zabdp_JBkDA4LK.jpg', '2025-12-16 23:09:12', '$2y$12$UkT7AlQG/DiwUyIBvUVC4.B5KFmvk0jGSxIz7GHluoziH/mW3q8Jy', '[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"]', 'active', '[\"\\/designator\\/dashboard\",\"\\/designator\\/tickets\",\"\\/designator\\/calendar\",\"\\/designator\\/users\",\"\\/designator\\/system-requests\"]', NULL, '2025-12-16 23:09:12', '2026-02-03 19:21:12'),
(4, NULL, 'Super Admin', 'capstonemetaass@gmail.com', 'TPO (Head)', NULL, '2025-12-16 23:09:12', '$2y$12$VDbkihlxUY.Ti911nEND3O7BFCS8IAc6VuaqoAvLnL7hdPJU69Kz6', '[\"admin\",\"designator\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_information\",\"can_access_user_calendar\"]', 'active', '[\"\\/designator\\/dashboard\",\"\\/designator\\/tickets\",\"\\/designator\\/calendar\",\"\\/designator\\/users\",\"\\/designator\\/system-requests\",\"\\/user\\/dashboard\",\"\\/user\\/tickets\",\"\\/user\\/information\",\"\\/user\\/calendar\"]', NULL, '2025-12-16 23:09:12', '2026-02-03 06:36:10'),
(5, NULL, 'Zab User', 'zab.zabdiel28@gmail.com', 'TPO', NULL, '2025-12-16 23:09:12', '$2y$12$g8pQl.jKzZNsXSb3cN8Zs.rDCmTZ0Sy8q/LuWbJD3a3OD1p8H79zq', '[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"]', 'active', '[\"\\/user\\/dashboard\",\"\\/user\\/tickets\",\"\\/user\\/calendar\",\"\\/user\\/information\"]', NULL, '2025-12-16 23:09:12', '2026-02-03 06:32:06'),
(6, NULL, 'Developer User', 'developer@example.com', 'TPO', NULL, '2025-12-16 23:09:12', '$2y$12$m7EEne03SCtoL4.FgFA/AOnzGRCkQ5Dy4HEvOCHURNBUlTbaIz8AC', '[\"developer\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\"]', 'active', '[\"\\/dev\\/dashboard\",\"\\/dev\\/tickets\",\"\\/dev\\/calendar\",\"\\/dev\\/optipedia\"]', NULL, '2025-12-16 23:09:13', '2026-02-01 21:18:44'),
(7, NULL, 'Zab Tumangg', 'az28fps@gmail.com', 'TPO (Head)', NULL, '2025-12-16 23:09:13', '$2y$12$xN8.n6oMkYf0EbnCMcf0D.kgUY4TptEh4LbJr1dtehmcpoay4Cd0C', '[\"admin\",\"designator\",\"developer\",\"user\",\"can_access_user_information\",\"can_access_user_calendar\",\"can_access_user_tickets\",\"can_access_user_dashboard\",\"can_access_dev_dashboard\",\"can_access_designator_tickets\", \"can_access_designator_users\"]', 'active', '[\"\\/user\\/information\",\"\\/user\\/calendar\",\"\\/user\\/tickets\",\"\\/user\\/dashboard\",\"\\/dev\\/dashboard\",\"\\/designator\\/tickets\", \"\\/designator\\/users\"]', NULL, '2025-12-16 23:09:13', '2026-02-03 06:35:06'),
(8, NULL, 'Tyrel Cruz', 'tyrelcruzps4@gmail.com', 'TPO', 'tyrelcruzps4@gmail.com_CruzTP-1x1Pic_Q97wbTTn.jpg', '2025-12-16 23:09:13', '$2y$12$gPgCk.3gzaNv5tikszAsN.975DLEXvL7pDRKUjePXB0DnQ5Nph/R2', '[\"developer\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\",\"can_access_dev_system_requests\"]', 'active', '[\"\\/dev\\/dashboard\",\"\\/dev\\/tickets\",\"\\/dev\\/calendar\",\"\\/dev\\/optipedia\",\"\\/dev\\/system-requests\"]', NULL, '2025-12-16 23:09:13', '2026-02-03 06:12:32'),
(9, NULL, 'Zabdiel User', 'capstonemetapass@gmail.com', 'TPO', 'capstonemetapass@gmail.com_0-02-06-3c79292374f03fe22e5b918658c96917d3bafcc690e1143c3fd30c9bfb468f48_f528aed205b1f7c4_sG7SwYni.jpg', NULL, '$2y$12$rJv5AnC1OfbHVdzI5FwKke6dfla3NrsJHiiE1QOH0firVpjx9Xfl6', '[\"developer\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\",\"can_access_optipedia\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_dev_tickets\",\"can_access_dev_dashboard\"]', 'active', '[\"\\/user\\/dashboard\",\"\\/user\\/tickets\",\"\\/user\\/calendar\",\"\\/user\\/information\",\"\\/user\\/system-enhancement-requests\",\"\\/dev\\/optipedia\",\"\\/dev\\/system-requests\",\"\\/dev\\/calendar\",\"\\/dev\\/tickets\",\"\\/dev\\/dashboard\"]', NULL, '2026-01-04 18:07:00', '2026-02-03 19:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE `user_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activities`
--

INSERT INTO `user_activities` (`id`, `user_id`, `action`, `description`, `metadata`, `created_at`, `updated_at`) VALUES
(1, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.182\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2025-12-17 00:05:45', '2025-12-17 00:05:45'),
(2, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.67\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-17 00:19:01', '2025-12-17 00:19:01'),
(3, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.67\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-17 00:19:24', '2025-12-17 00:19:24'),
(4, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.67\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2025-12-17 00:19:57', '2025-12-17 00:19:57'),
(5, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.67\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2025-12-17 00:21:15', '2025-12-17 00:21:15'),
(6, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.8\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2025-12-17 00:22:20', '2025-12-17 00:22:20'),
(7, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.67\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2025-12-17 00:23:11', '2025-12-17 00:23:11'),
(8, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.182\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2025-12-17 00:41:12', '2025-12-17 00:41:12'),
(9, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.8\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2025-12-17 00:52:12', '2025-12-17 00:52:12'),
(10, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.8\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2025-12-17 01:31:58', '2025-12-17 01:31:58'),
(11, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.8\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2025-12-17 01:39:31', '2025-12-17 01:39:31'),
(12, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.182\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2025-12-17 01:45:53', '2025-12-17 01:45:53'),
(13, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.182\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2025-12-17 01:48:34', '2025-12-17 01:48:34'),
(14, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.119\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-17 17:30:39', '2025-12-17 17:30:39'),
(15, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.119\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-17 17:34:41', '2025-12-17 17:34:41'),
(16, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.197\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2025-12-17 17:50:36', '2025-12-17 17:50:36'),
(17, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.119\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2025-12-17 19:22:19', '2025-12-17 19:22:19'),
(18, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.197\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2025-12-17 19:31:25', '2025-12-17 19:31:25'),
(19, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.119\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-17 19:37:18', '2025-12-17 19:37:18'),
(20, 5, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.238\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2025-12-17 21:42:19', '2025-12-17 21:42:19'),
(21, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.197\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2025-12-17 23:17:23', '2025-12-17 23:17:23'),
(22, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.119\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-17 23:23:43', '2025-12-17 23:23:43'),
(23, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.216\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-18 17:33:55', '2025-12-18 17:33:55'),
(24, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.216\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-18 17:53:51', '2025-12-18 17:53:51'),
(25, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.216\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2025-12-18 23:48:14', '2025-12-18 23:48:14'),
(26, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.151\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-04 17:13:13', '2026-01-04 17:13:13'),
(27, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 17:25:29', '2026-01-04 17:25:29'),
(28, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 17:34:10', '2026-01-04 17:34:10'),
(29, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-04 17:50:13', '2026-01-04 17:50:13'),
(30, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.151\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-04 18:14:16', '2026-01-04 18:14:16'),
(31, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"developer\",\"old_permissions\":[\"developer\"],\"new_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\"]}', '2026-01-04 18:14:49', '2026-01-04 18:14:49'),
(32, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 18:15:32', '2026-01-04 18:15:32'),
(33, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"developer\",\"old_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\"],\"new_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\"]}', '2026-01-04 19:04:16', '2026-01-04 19:04:16'),
(34, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"developer\",\"old_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\"],\"new_permissions\":[\"developer\"]}', '2026-01-04 19:05:36', '2026-01-04 19:05:36'),
(35, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"developer\",\"old_permissions\":[\"developer\"],\"new_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\"]}', '2026-01-04 19:06:01', '2026-01-04 19:06:01'),
(36, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 19:26:58', '2026-01-04 19:26:58'),
(37, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to user', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"user\",\"old_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\"],\"new_permissions\":[\"user\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_view_reports\",\"can_save_kb\",\"can_edit_kb\",\"can_delete_kb\"]}', '2026-01-04 19:34:58', '2026-01-04 19:34:58'),
(38, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from user to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"user\",\"new_role\":\"developer\",\"old_permissions\":[\"user\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_view_reports\",\"can_save_kb\",\"can_edit_kb\",\"can_delete_kb\"],\"new_permissions\":[\"developer\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_view_reports\",\"can_save_kb\",\"can_edit_kb\",\"can_delete_kb\"]}', '2026-01-04 19:45:05', '2026-01-04 19:45:05'),
(39, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to user', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"user\",\"old_permissions\":[\"developer\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_view_reports\",\"can_save_kb\",\"can_edit_kb\",\"can_delete_kb\"],\"new_permissions\":[\"user\",\"can_create_tickets\",\"can_view_tickets\"]}', '2026-01-04 19:45:50', '2026-01-04 19:45:50'),
(40, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 21:21:37', '2026-01-04 21:21:37'),
(41, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from user to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"user\",\"new_role\":\"developer\",\"old_permissions\":[\"user\",\"can_create_tickets\",\"can_view_tickets\"],\"new_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\",\"pogi\"]}', '2026-01-04 21:30:47', '2026-01-04 21:30:47'),
(42, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 21:38:58', '2026-01-04 21:38:58'),
(43, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.151\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-04 21:44:22', '2026-01-04 21:44:22'),
(44, 3, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\"}', '2026-01-04 21:59:36', '2026-01-04 21:59:36'),
(45, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"developer\",\"old_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\",\"pogi\"],\"new_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\",\"pogi\",\"can_edit_tickets\",\"can_save_kb\",\"can_create_tickets\"]}', '2026-01-04 22:00:19', '2026-01-04 22:00:19'),
(46, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"developer\",\"old_permissions\":[\"developer\",\"can_assign\",\"can_view_reports\",\"pogi\",\"can_edit_tickets\",\"can_save_kb\",\"can_create_tickets\"],\"new_permissions\":[\"developer\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_view_reports\",\"can_save_kb\",\"can_edit_kb\",\"can_delete_kb\"]}', '2026-01-04 22:06:37', '2026-01-04 22:06:37'),
(47, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to admin', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"admin\",\"old_permissions\":[\"developer\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_view_reports\",\"can_save_kb\",\"can_edit_kb\",\"can_delete_kb\"],\"new_permissions\":[\"admin\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\"]}', '2026-01-04 22:07:12', '2026-01-04 22:07:12'),
(48, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-04 22:08:37', '2026-01-04 22:08:37'),
(49, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from admin to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"admin\",\"new_role\":\"developer\",\"old_permissions\":[\"admin\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\"],\"new_permissions\":[\"developer\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_view_reports\",\"can_save_kb\",\"can_edit_kb\",\"can_delete_kb\"]}', '2026-01-04 22:18:45', '2026-01-04 22:18:45'),
(50, 6, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"developer\",\"old_permissions\":[\"developer\"],\"new_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_create_tickets\"]}', '2026-01-04 23:05:06', '2026-01-04 23:05:06'),
(51, 6, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from developer to developer', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"developer\",\"new_role\":\"developer\",\"old_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_create_tickets\"],\"new_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\"]}', '2026-01-04 23:05:38', '2026-01-04 23:05:38'),
(52, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-04 23:16:38', '2026-01-04 23:16:38'),
(53, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-04 23:21:29', '2026-01-04 23:21:29'),
(54, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-04 23:23:27', '2026-01-04 23:23:27'),
(55, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-04 23:24:07', '2026-01-04 23:24:07'),
(56, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 23:25:38', '2026-01-04 23:25:38'),
(57, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 23:30:31', '2026-01-04 23:30:31'),
(58, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-04 23:38:00', '2026-01-04 23:38:00'),
(59, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.151\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-04 23:45:47', '2026-01-04 23:45:47'),
(60, 3, 'permissions_updated', 'Permissions updated by Zab Admin. Role changed from admin to admin', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_role\":\"admin\",\"new_role\":\"admin\",\"old_permissions\":[\"admin\",\"manage_users\",\"manage_tickets\",\"view_reports\",\"can_assign\"],\"new_permissions\":[\"admin\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\"]}', '2026-01-04 23:49:15', '2026-01-04 23:49:15'),
(61, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.151\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-04 23:53:38', '2026-01-04 23:53:38'),
(62, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-04 23:54:25', '2026-01-04 23:54:25'),
(63, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 00:04:16', '2026-01-05 00:04:16'),
(64, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:05:35', '2026-01-05 00:05:35'),
(65, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:15:08', '2026-01-05 00:15:08'),
(66, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 00:16:11', '2026-01-05 00:16:11'),
(67, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:17:34', '2026-01-05 00:17:34'),
(68, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:19:25', '2026-01-05 00:19:25'),
(69, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:21:59', '2026-01-05 00:21:59'),
(70, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:27:55', '2026-01-05 00:27:55'),
(71, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 00:33:34', '2026-01-05 00:33:34'),
(72, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:46:03', '2026-01-05 00:46:03'),
(73, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.151\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-05 00:52:58', '2026-01-05 00:52:58'),
(74, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:56:28', '2026-01-05 00:56:28'),
(75, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.185\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 00:59:01', '2026-01-05 00:59:01'),
(76, 3, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\"}', '2026-01-05 01:03:54', '2026-01-05 01:03:54'),
(77, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 01:07:45', '2026-01-05 01:07:45'),
(78, 3, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\"}', '2026-01-05 01:08:14', '2026-01-05 01:08:14'),
(79, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 01:15:15', '2026-01-05 01:15:15'),
(80, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 01:19:31', '2026-01-05 01:19:31'),
(81, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.202\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 01:21:19', '2026-01-05 01:21:19'),
(82, 3, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\"}', '2026-01-05 01:25:40', '2026-01-05 01:25:40'),
(83, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.151\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 6.0; Nexus 5 Build\\/MRA58N) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Mobile Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-05 01:37:02', '2026-01-05 01:37:02'),
(84, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.222\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-05 17:30:35', '2026-01-05 17:30:35'),
(85, 1, 'permissions_updated', 'Permissions updated by Admin User. Role changed from admin to admin', '{\"updated_by\":1,\"updated_by_name\":\"Admin User\",\"old_role\":\"admin\",\"new_role\":\"admin\",\"old_permissions\":[\"admin\",\"manage_users\",\"manage_tickets\",\"view_reports\"],\"new_permissions\":[\"admin\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\"]}', '2026-01-05 17:31:34', '2026-01-05 17:31:34'),
(86, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.222\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-05 17:32:29', '2026-01-05 17:32:29'),
(87, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-05 17:36:49', '2026-01-05 17:36:49'),
(88, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-05 18:10:02', '2026-01-05 18:10:02'),
(89, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-05 18:17:58', '2026-01-05 18:17:58'),
(90, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-05 18:34:40', '2026-01-05 18:34:40'),
(91, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-05 19:07:19', '2026-01-05 19:07:19'),
(92, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.222\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-05 21:10:47', '2026-01-05 21:10:47'),
(93, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.40\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 21:16:21', '2026-01-05 21:16:21'),
(94, 3, 'logout', 'User logged out', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-05 21:19:38', '2026-01-05 21:19:38'),
(95, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-05 21:24:54', '2026-01-05 21:24:54'),
(96, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 21:30:01', '2026-01-05 21:30:01'),
(97, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 21:37:15', '2026-01-05 21:37:15'),
(98, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 21:41:42', '2026-01-05 21:41:42'),
(99, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 21:47:06', '2026-01-05 21:47:06'),
(100, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 21:48:17', '2026-01-05 21:48:17'),
(101, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 21:51:40', '2026-01-05 21:51:40'),
(102, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.40\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 22:17:50', '2026-01-05 22:17:50'),
(103, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.40\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 22:30:35', '2026-01-05 22:30:35'),
(104, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 22:32:09', '2026-01-05 22:32:09'),
(105, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.40\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 22:40:06', '2026-01-05 22:40:06'),
(106, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 23:03:52', '2026-01-05 23:03:52'),
(107, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:05:22', '2026-01-05 23:05:22'),
(108, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:07:04', '2026-01-05 23:07:04'),
(109, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:19:02', '2026-01-05 23:19:02'),
(110, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:21:01', '2026-01-05 23:21:01'),
(111, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:22:11', '2026-01-05 23:22:11'),
(112, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:31:48', '2026-01-05 23:31:48'),
(113, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:34:44', '2026-01-05 23:34:44'),
(114, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:37:05', '2026-01-05 23:37:05'),
(115, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:40:23', '2026-01-05 23:40:23'),
(116, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:41:31', '2026-01-05 23:41:31'),
(117, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:43:41', '2026-01-05 23:43:41'),
(118, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:44:44', '2026-01-05 23:44:44'),
(119, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:46:05', '2026-01-05 23:46:05'),
(120, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.222\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 6.0; Nexus 5 Build\\/MRA58N) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Mobile Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-05 23:47:07', '2026-01-05 23:47:07'),
(121, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:47:48', '2026-01-05 23:47:48'),
(122, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:48:58', '2026-01-05 23:48:58'),
(123, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.222\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 6.0; Nexus 5 Build\\/MRA58N) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Mobile Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-05 23:49:01', '2026-01-05 23:49:01'),
(124, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.222\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 6.0; Nexus 5 Build\\/MRA58N) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Mobile Safari\\/537.36 Edg\\/143.0.0.0\"}', '2026-01-05 23:50:05', '2026-01-05 23:50:05'),
(125, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:50:20', '2026-01-05 23:50:20'),
(126, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:51:34', '2026-01-05 23:51:34'),
(127, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.40\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-05 23:52:06', '2026-01-05 23:52:06'),
(128, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:54:57', '2026-01-05 23:54:57'),
(129, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:58:25', '2026-01-05 23:58:25'),
(130, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-05 23:59:46', '2026-01-05 23:59:46'),
(131, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:02:21', '2026-01-06 00:02:21'),
(132, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:03:44', '2026-01-06 00:03:44'),
(133, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:07:07', '2026-01-06 00:07:07'),
(134, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:09:25', '2026-01-06 00:09:25'),
(135, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:10:11', '2026-01-06 00:10:11'),
(136, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:12:02', '2026-01-06 00:12:02'),
(137, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:17:05', '2026-01-06 00:17:05'),
(138, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:19:48', '2026-01-06 00:19:48'),
(139, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:22:00', '2026-01-06 00:22:00'),
(140, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:23:20', '2026-01-06 00:23:20'),
(141, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:24:40', '2026-01-06 00:24:40'),
(142, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:26:35', '2026-01-06 00:26:35'),
(143, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:27:50', '2026-01-06 00:27:50'),
(144, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:31:05', '2026-01-06 00:31:05'),
(145, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:34:56', '2026-01-06 00:34:56'),
(146, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:36:55', '2026-01-06 00:36:55'),
(147, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:38:12', '2026-01-06 00:38:12'),
(148, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:39:21', '2026-01-06 00:39:21'),
(149, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-06 00:42:19', '2026-01-06 00:42:19'),
(150, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:43:05', '2026-01-06 00:43:05'),
(151, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-06 00:45:28', '2026-01-06 00:45:28'),
(152, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:47:15', '2026-01-06 00:47:15'),
(153, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:51:14', '2026-01-06 00:51:14'),
(154, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:52:18', '2026-01-06 00:52:18'),
(155, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:57:54', '2026-01-06 00:57:54'),
(156, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 00:58:53', '2026-01-06 00:58:53'),
(157, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:00:23', '2026-01-06 01:00:23'),
(158, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:01:26', '2026-01-06 01:01:26'),
(159, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:03:17', '2026-01-06 01:03:17'),
(160, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-06 01:05:00', '2026-01-06 01:05:00'),
(161, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:08:07', '2026-01-06 01:08:07'),
(162, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:09:37', '2026-01-06 01:09:37'),
(163, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:10:52', '2026-01-06 01:10:52'),
(164, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:12:49', '2026-01-06 01:12:49'),
(165, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:16:09', '2026-01-06 01:16:09'),
(166, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:21:08', '2026-01-06 01:21:08'),
(167, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:23:40', '2026-01-06 01:23:40'),
(168, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:27:18', '2026-01-06 01:27:18'),
(169, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-06 01:28:33', '2026-01-06 01:28:33'),
(170, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-06 01:31:32', '2026-01-06 01:31:32'),
(171, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:33:11', '2026-01-06 01:33:11'),
(172, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:35:19', '2026-01-06 01:35:19'),
(173, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.171\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/18.5 Mobile\\/15E148 Safari\\/604.1\"}', '2026-01-06 01:39:22', '2026-01-06 01:39:22'),
(174, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.40\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-06 01:52:17', '2026-01-06 01:52:17'),
(175, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-06 02:00:54', '2026-01-06 02:00:54'),
(176, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.61\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-08 22:33:24', '2026-01-08 22:33:24'),
(177, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.61\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-08 22:45:47', '2026-01-08 22:45:47'),
(178, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.61\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-09 00:59:35', '2026-01-09 00:59:35'),
(179, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.61\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-09 01:47:19', '2026-01-09 01:47:19'),
(180, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-11 18:30:19', '2026-01-11 18:30:19'),
(181, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-12 07:11:25', '2026-01-12 07:11:25'),
(182, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-12 07:19:35', '2026-01-12 07:19:35'),
(183, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-13 05:03:10', '2026-01-13 05:03:10'),
(184, 8, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-13 05:51:46', '2026-01-13 05:51:46'),
(185, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.69\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-13 18:02:43', '2026-01-13 18:02:43'),
(186, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.69\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-13 19:23:43', '2026-01-13 19:23:43'),
(187, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Roles changed from [developer] to [developer, admin]', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_roles\":[\"developer\"],\"new_roles\":[\"developer\",\"admin\"],\"old_permissions\":[\"developer\",\"can_create_tickets\",\"can_view_tickets\",\"can_assign_tickets\",\"can_edit_tickets\",\"can_view_reports\",\"can_save_kb\",\"can_edit_kb\",\"can_delete_kb\"],\"new_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"admin\",\"can_create_tickets\",\"can_assign_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\",\"can_delete_kb\"]}', '2026-01-13 19:24:51', '2026-01-13 19:24:51');
INSERT INTO `user_activities` (`id`, `user_id`, `action`, `description`, `metadata`, `created_at`, `updated_at`) VALUES
(188, 8, 'permissions_updated', 'Permissions updated by Zab Admin. Roles changed from [admin, developer] to [developer]', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_roles\":[\"admin\",\"developer\"],\"new_roles\":[\"developer\"],\"old_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"admin\",\"can_create_tickets\",\"can_assign_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\",\"can_delete_kb\"],\"new_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"can_manage_users\"]}', '2026-01-13 19:25:20', '2026-01-13 19:25:20'),
(189, 7, 'permissions_updated', 'Permissions updated by Zab Admin. Roles changed from [developer] to [developer, admin]', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_roles\":[\"developer\"],\"new_roles\":[\"developer\",\"admin\"],\"old_permissions\":[\"developer\"],\"new_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"admin\",\"can_create_tickets\",\"can_assign_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\",\"can_delete_kb\"]}', '2026-01-13 19:25:47', '2026-01-13 19:25:47'),
(190, 7, 'permissions_updated', 'Permissions updated by Zab Admin. Roles changed from [admin, developer] to [developer, admin]', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_roles\":[\"admin\",\"developer\"],\"new_roles\":[\"developer\",\"admin\"],\"old_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"admin\",\"can_create_tickets\",\"can_assign_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\",\"can_delete_kb\"],\"new_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"admin\",\"can_create_tickets\",\"can_assign_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\",\"can_delete_kb\"]}', '2026-01-13 19:25:58', '2026-01-13 19:25:58'),
(191, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.69\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-13 19:27:01', '2026-01-13 19:27:01'),
(192, 8, 'permissions_updated', 'Permissions updated by Zab Developer. Roles changed from [developer] to [developer, admin]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Developer\",\"old_roles\":[\"developer\"],\"new_roles\":[\"developer\",\"admin\"],\"old_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"can_manage_users\"],\"new_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"admin\",\"can_create_tickets\",\"can_assign_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\",\"can_delete_kb\"]}', '2026-01-13 19:27:23', '2026-01-13 19:27:23'),
(193, 8, 'permissions_updated', 'Permissions updated by Zab Developer. Roles changed from [admin, developer] to [developer]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Developer\",\"old_roles\":[\"admin\",\"developer\"],\"new_roles\":[\"developer\"],\"old_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"admin\",\"can_create_tickets\",\"can_assign_tickets\",\"can_delete_tickets\",\"can_manage_users\",\"can_view_reports\",\"can_delete_kb\"],\"new_permissions\":[\"developer\",\"can_view_tickets\",\"can_edit_tickets\",\"can_save_kb\",\"can_edit_kb\",\"can_manage_users\"]}', '2026-01-13 19:27:35', '2026-01-13 19:27:35'),
(194, 8, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.69\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-13 22:45:44', '2026-01-13 22:45:44'),
(195, 8, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.39\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-14 19:14:17', '2026-01-14 19:14:17'),
(196, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.39\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-15 00:34:22', '2026-01-15 00:34:22'),
(197, 3, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\"}', '2026-01-15 00:34:30', '2026-01-15 00:34:30'),
(198, 8, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.39\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-15 00:49:12', '2026-01-15 00:49:12'),
(199, 8, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":8,\"updated_by_name\":\"Tyrel Developer\"}', '2026-01-15 00:49:20', '2026-01-15 00:49:20'),
(200, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.39\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-15 00:50:22', '2026-01-15 00:50:22'),
(201, 1, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":1,\"updated_by_name\":\"Admin User\"}', '2026-01-15 00:50:44', '2026-01-15 00:50:44'),
(202, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 01:09:47', '2026-01-15 01:09:47'),
(203, 7, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":7,\"updated_by_name\":\"Zab Developer\"}', '2026-01-15 01:13:08', '2026-01-15 01:13:08'),
(204, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 01:14:32', '2026-01-15 01:14:32'),
(205, 1, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-15 01:21:52', '2026-01-15 01:21:52'),
(206, 1, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":1,\"updated_by_name\":\"Admin User\"}', '2026-01-15 01:22:22', '2026-01-15 01:22:22'),
(207, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 16:50:00', '2026-01-15 16:50:00'),
(208, 1, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-15 17:10:03', '2026-01-15 17:10:03'),
(209, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 21:18:12', '2026-01-15 21:18:12'),
(210, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 21:47:27', '2026-01-15 21:47:27'),
(211, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 21:50:10', '2026-01-15 21:50:10'),
(212, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 22:03:52', '2026-01-15 22:03:52'),
(213, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-15 22:05:21', '2026-01-15 22:05:21'),
(214, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 23:11:43', '2026-01-15 23:11:43'),
(215, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 23:21:13', '2026-01-15 23:21:13'),
(216, 2, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-15 23:27:08', '2026-01-15 23:27:08'),
(217, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-16 00:04:53', '2026-01-16 00:04:53'),
(218, 2, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-16 01:02:21', '2026-01-16 01:02:21'),
(219, 2, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":2,\"updated_by_name\":\"Zabdiel Jairus\"}', '2026-01-16 01:05:52', '2026-01-16 01:05:52'),
(220, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.37\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-19 21:42:42', '2026-01-19 21:42:42'),
(221, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.37\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-20 01:22:51', '2026-01-20 01:22:51'),
(222, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.17\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 17:53:51', '2026-01-21 17:53:51'),
(223, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.17\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 17:57:31', '2026-01-21 17:57:31'),
(224, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.17\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 18:13:11', '2026-01-21 18:13:11'),
(225, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.17\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 18:17:38', '2026-01-21 18:17:38'),
(226, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 18:19:55', '2026-01-21 18:19:55'),
(227, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 18:49:37', '2026-01-21 18:49:37'),
(228, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 19:19:43', '2026-01-21 19:19:43'),
(229, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 19:41:22', '2026-01-21 19:41:22'),
(230, 2, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-21 19:42:23', '2026-01-21 19:42:23'),
(231, 2, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":2,\"updated_by_name\":\"Zabdiel Jairus\"}', '2026-01-21 19:43:47', '2026-01-21 19:43:47'),
(232, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-21 19:55:04', '2026-01-21 19:55:04'),
(233, 7, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":7,\"updated_by_name\":\"Zab Developer\"}', '2026-01-21 19:55:19', '2026-01-21 19:55:19'),
(234, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:19:42', '2026-01-21 21:19:42'),
(235, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:34:54', '2026-01-21 21:34:54'),
(236, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:35:09', '2026-01-21 21:35:09'),
(237, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:42:42', '2026-01-21 21:42:42'),
(238, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:42:59', '2026-01-21 21:42:59'),
(239, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:45:12', '2026-01-21 21:45:12'),
(240, 7, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:45:28', '2026-01-21 21:45:28'),
(241, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:46:43', '2026-01-21 21:46:43'),
(242, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 21:46:53', '2026-01-21 21:46:53'),
(243, 2, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-21 23:22:23', '2026-01-21 23:22:23'),
(244, 2, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-22 00:35:25', '2026-01-22 00:35:25'),
(245, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-22 17:49:57', '2026-01-22 17:49:57'),
(246, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-22 21:15:54', '2026-01-22 21:15:54'),
(247, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-25 17:46:16', '2026-01-25 17:46:16'),
(248, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-25 17:49:20', '2026-01-25 17:49:20'),
(249, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-25 17:54:40', '2026-01-25 17:54:40'),
(250, 2, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', '2026-01-25 17:55:08', '2026-01-25 17:55:08'),
(251, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-26 19:18:33', '2026-01-26 19:18:33'),
(252, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-26 21:14:18', '2026-01-26 21:14:18'),
(253, 2, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-27 01:02:07', '2026-01-27 01:02:07'),
(254, 2, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 01:16:27', '2026-01-27 01:16:27'),
(255, 2, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 01:17:45', '2026-01-27 01:17:45'),
(256, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 01:18:12', '2026-01-27 01:18:12'),
(257, 3, 'permissions_updated', 'Permissions updated by Zab Admin. Roles changed from [admin, designator] to [admin, designator, developer]', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_roles\":[\"admin\",\"designator\"],\"new_roles\":[\"admin\",\"designator\",\"developer\"],\"old_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\"],\"new_permissions\":[\"admin\",\"designator\",\"developer\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\"]}', '2026-01-27 01:19:38', '2026-01-27 01:19:38'),
(258, 3, 'permissions_updated', 'Permissions updated by Zab Admin. Roles changed from [admin, designator, developer] to [admin, designator, developer, user]', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\",\"old_roles\":[\"admin\",\"designator\",\"developer\"],\"new_roles\":[\"admin\",\"designator\",\"developer\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"developer\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\"],\"new_permissions\":[\"admin\",\"designator\",\"developer\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"]}', '2026-01-27 01:23:53', '2026-01-27 01:23:53'),
(259, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 18:16:28', '2026-01-27 18:16:28'),
(260, 2, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 23:17:09', '2026-01-27 23:17:09'),
(261, 2, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 23:17:36', '2026-01-27 23:17:36'),
(262, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 23:18:14', '2026-01-27 23:18:14'),
(263, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 23:24:19', '2026-01-27 23:24:19'),
(264, 9, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 23:29:26', '2026-01-27 23:29:26'),
(265, 9, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":9,\"updated_by_name\":\"Justine User\"}', '2026-01-27 23:35:08', '2026-01-27 23:35:08'),
(266, 9, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-27 23:50:55', '2026-01-27 23:50:55'),
(267, 9, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-28 00:22:17', '2026-01-28 00:22:17'),
(268, 9, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-28 00:56:27', '2026-01-28 00:56:27'),
(269, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-28 00:57:09', '2026-01-28 00:57:09'),
(270, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-28 01:26:09', '2026-01-28 01:26:09'),
(271, 1, 'password_reset', 'Password reset completed by Zab Admin. New password sent to user\'s email.', '{\"reset_by\":3,\"reset_by_name\":\"Zab Admin\"}', '2026-01-28 01:32:59', '2026-01-28 01:32:59'),
(272, 1, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-28 01:35:41', '2026-01-28 01:35:41'),
(273, 1, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-28 01:43:02', '2026-01-28 01:43:02'),
(274, 1, 'password_changed', 'Password changed successfully', '{\"changed_at\":\"2026-01-28T09:46:17+00:00\"}', '2026-01-28 01:46:17', '2026-01-28 01:46:17'),
(275, 1, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-28 01:47:53', '2026-01-28 01:47:53'),
(276, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-28 17:03:43', '2026-01-28 17:03:43'),
(277, 1, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-28 18:34:14', '2026-01-28 18:34:14'),
(278, 1, 'password_changed', 'Password changed successfully', '{\"changed_at\":\"2026-01-29T02:35:20+00:00\"}', '2026-01-28 18:35:20', '2026-01-28 18:35:20'),
(279, 1, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.0\"}', '2026-01-28 18:35:57', '2026-01-28 18:35:57'),
(280, 3, 'password_changed', 'Password changed successfully', '{\"changed_at\":\"2026-01-29T02:48:46+00:00\"}', '2026-01-28 18:48:46', '2026-01-28 18:48:46'),
(281, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-28 18:48:50', '2026-01-28 18:48:50'),
(282, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-28 18:49:19', '2026-01-28 18:49:19'),
(283, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-28 18:50:22', '2026-01-28 18:50:22'),
(284, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 17:11:28', '2026-01-29 17:11:28'),
(285, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 17:11:52', '2026-01-29 17:11:52'),
(286, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 18:36:33', '2026-01-29 18:36:33'),
(287, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 18:38:12', '2026-01-29 18:38:12'),
(288, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 18:44:47', '2026-01-29 18:44:47'),
(289, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 19:03:58', '2026-01-29 19:03:58'),
(290, 7, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 21:47:38', '2026-01-29 21:47:38'),
(291, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 21:48:54', '2026-01-29 21:48:54'),
(292, 7, 'password_changed', 'Password changed successfully', '{\"changed_at\":\"2026-01-30T06:59:21+00:00\"}', '2026-01-29 22:59:21', '2026-01-29 22:59:21'),
(293, 7, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 22:59:24', '2026-01-29 22:59:24'),
(294, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 22:59:54', '2026-01-29 22:59:54'),
(295, 5, 'account_suspended', 'Account suspended by Zab Developer', '{\"suspended_by\":7,\"suspended_by_name\":\"Zab Developer\",\"old_status\":\"active\",\"new_status\":\"inactive\"}', '2026-01-29 23:21:55', '2026-01-29 23:21:55'),
(296, 5, 'account_activated', 'Account activated by Zab Developer', '{\"activated_by\":7,\"activated_by_name\":\"Zab Developer\",\"old_status\":\"inactive\",\"new_status\":\"active\"}', '2026-01-29 23:23:27', '2026-01-29 23:23:27'),
(297, 5, 'account_suspended', 'Account suspended by Zab Developer', '{\"suspended_by\":7,\"suspended_by_name\":\"Zab Developer\",\"old_status\":\"active\",\"new_status\":\"inactive\"}', '2026-01-29 23:25:44', '2026-01-29 23:25:44'),
(298, 7, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 23:32:18', '2026-01-29 23:32:18'),
(299, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-29 23:33:03', '2026-01-29 23:33:03'),
(300, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-30 00:09:55', '2026-01-30 00:09:55'),
(301, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-30 00:14:03', '2026-01-30 00:14:03'),
(302, 7, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-30 00:15:03', '2026-01-30 00:15:03'),
(303, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-30 00:16:05', '2026-01-30 00:16:05'),
(304, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-30 00:53:59', '2026-01-30 00:53:59'),
(305, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-01-30 00:54:32', '2026-01-30 00:54:32'),
(306, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-01 17:36:06', '2026-02-01 17:36:06'),
(307, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.1\"}', '2026-02-01 18:27:12', '2026-02-01 18:27:12'),
(308, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-02 17:22:21', '2026-02-02 17:22:21'),
(309, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.1\"}', '2026-02-02 18:08:29', '2026-02-02 18:08:29'),
(310, 3, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-02 18:44:11', '2026-02-02 18:44:11'),
(311, 7, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-02 18:45:48', '2026-02-02 18:45:48'),
(312, 7, 'logout', 'User logged out', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-02 18:47:30', '2026-02-02 18:47:30'),
(313, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-02 18:47:58', '2026-02-02 18:47:58'),
(314, 3, 'login', 'User logged in', '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"PostmanRuntime\\/7.51.1\"}', '2026-02-02 19:00:33', '2026-02-02 19:00:33'),
(315, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.208\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36 Edg\\/144.0.0.0\"}', '2026-02-03 01:48:42', '2026-02-03 01:48:42'),
(316, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.140\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 02:07:52', '2026-02-03 02:07:52'),
(317, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.147\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 02:38:46', '2026-02-03 02:38:46'),
(318, 3, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":3,\"updated_by_name\":\"Zab Admin\"}', '2026-02-03 03:19:58', '2026-02-03 03:19:58'),
(319, 3, 'password_changed', 'Password changed successfully', '{\"changed_at\":\"2026-02-03T11:20:36+00:00\"}', '2026-02-03 03:20:36', '2026-02-03 03:20:36'),
(320, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.147\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 03:21:15', '2026-02-03 03:21:15'),
(321, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.208\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36 Edg\\/144.0.0.0\"}', '2026-02-03 06:09:11', '2026-02-03 06:09:11'),
(322, 1, 'permissions_updated', 'Permissions updated by Zab Tumang. Roles changed from [admin, designator] to [admin, designator]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumang\",\"old_roles\":[\"admin\",\"designator\"],\"new_roles\":[\"admin\",\"designator\"],\"old_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\"],\"new_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"]}', '2026-02-03 06:10:19', '2026-02-03 06:10:19'),
(323, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.147\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 06:10:30', '2026-02-03 06:10:30'),
(324, 2, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":2,\"updated_by_name\":\"Zabdiel Jairus\"}', '2026-02-03 06:10:53', '2026-02-03 06:10:53'),
(325, 1, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\"}', '2026-02-03 06:10:58', '2026-02-03 06:10:58'),
(326, 8, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.140\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 06:11:25', '2026-02-03 06:11:25'),
(327, 8, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [developer] to [developer]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"developer\"],\"new_roles\":[\"developer\"],\"old_permissions\":[\"developer\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\"],\"new_permissions\":[\"developer\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\",\"can_access_dev_system_requests\"]}', '2026-02-03 06:12:30', '2026-02-03 06:12:30'),
(328, 8, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":8,\"updated_by_name\":\"Tyrel Cruz\"}', '2026-02-03 06:12:32', '2026-02-03 06:12:32'),
(329, 3, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator, developer, user] to [admin, designator, developer, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\",\"developer\",\"user\"],\"new_roles\":[\"admin\",\"designator\",\"developer\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"developer\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"],\"new_permissions\":[\"admin\",\"designator\",\"developer\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"]}', '2026-02-03 06:13:07', '2026-02-03 06:13:07'),
(330, 2, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [user] to [admin, developer, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"user\"],\"new_roles\":[\"admin\",\"developer\",\"user\"],\"old_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"],\"new_permissions\":[\"admin\",\"developer\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_designator_system_requests\",\"can_access_dev_tickets\"]}', '2026-02-03 06:14:23', '2026-02-03 06:14:23'),
(331, 2, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, developer, user] to [user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"developer\",\"user\"],\"new_roles\":[\"user\"],\"old_permissions\":[\"admin\",\"developer\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_designator_system_requests\",\"can_access_dev_tickets\"],\"new_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"]}', '2026-02-03 06:15:48', '2026-02-03 06:15:48'),
(332, 2, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [user] to [admin, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"user\"],\"new_roles\":[\"admin\",\"user\"],\"old_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"],\"new_permissions\":[\"admin\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_designator_users\",\"can_access_designator_tickets\",\"can_access_designator_dashboard\",\"can_access_designator_calendar\",\"can_access_designator_system_requests\"]}', '2026-02-03 06:17:00', '2026-02-03 06:17:00'),
(333, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.147\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 06:22:47', '2026-02-03 06:22:47'),
(334, 2, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, user] to [user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"user\"],\"new_roles\":[\"user\"],\"old_permissions\":[\"admin\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_designator_users\",\"can_access_designator_tickets\",\"can_access_designator_dashboard\",\"can_access_designator_calendar\",\"can_access_designator_system_requests\",\"can_access_user_system_requests\"],\"new_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"]}', '2026-02-03 06:26:37', '2026-02-03 06:26:37'),
(335, 5, 'account_activated', 'Account activated by Lark Babao', '{\"activated_by\":1,\"activated_by_name\":\"Lark Babao\",\"old_status\":\"inactive\",\"new_status\":\"active\"}', '2026-02-03 06:32:06', '2026-02-03 06:32:06'),
(336, 5, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.147\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 06:32:33', '2026-02-03 06:32:33'),
(337, 7, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator, developer] to [admin, designator, developer, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\",\"developer\"],\"new_roles\":[\"admin\",\"designator\",\"developer\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"developer\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\"],\"new_permissions\":[\"admin\",\"designator\",\"developer\",\"user\",\"can_access_user_information\",\"can_access_user_calendar\",\"can_access_user_tickets\",\"can_access_user_dashboard\",\"can_access_dev_dashboard\",\"can_access_designator_tickets\"]}', '2026-02-03 06:35:06', '2026-02-03 06:35:06'),
(338, 4, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator] to [admin, designator, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\"],\"new_roles\":[\"admin\",\"designator\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\"],\"new_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_information\",\"can_access_user_calendar\"]}', '2026-02-03 06:36:10', '2026-02-03 06:36:10'),
(339, 9, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.147\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 06:38:08', '2026-02-03 06:38:08'),
(340, 9, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [user] to [user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"user\"],\"new_roles\":[\"user\"],\"old_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"],\"new_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"]}', '2026-02-03 06:38:40', '2026-02-03 06:38:40'),
(341, 9, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.147\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 06:40:13', '2026-02-03 06:40:13'),
(342, 9, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":9,\"updated_by_name\":\"Zabdiel User\"}', '2026-02-03 06:48:44', '2026-02-03 06:48:44'),
(343, 9, 'profile_picture_updated', 'Profile picture updated', '{\"updated_by\":9,\"updated_by_name\":\"Zabdiel User\"}', '2026-02-03 06:49:02', '2026-02-03 06:49:02'),
(344, 2, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.147\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 06:56:14', '2026-02-03 06:56:14'),
(345, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.140\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 07:27:15', '2026-02-03 07:27:15'),
(346, 1, 'system_request_status_updated', 'Updated system request #2026-00007 status to completed', '{\"ticket_id\":7,\"ticket_number\":\"2026-00007\",\"old_status\":\"pending\",\"new_status\":\"completed\",\"comment\":\"done\"}', '2026-02-03 07:34:54', '2026-02-03 07:34:54'),
(347, 8, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.105\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 16:51:45', '2026-02-03 16:51:45'),
(348, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.208\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36 Edg\\/144.0.0.0\"}', '2026-02-03 17:50:16', '2026-02-03 17:50:16'),
(349, 1, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator] to [admin, designator, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\"],\"new_roles\":[\"admin\",\"designator\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"],\"new_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\",\"can_access_user_calendar\"]}', '2026-02-03 17:50:41', '2026-02-03 17:50:41'),
(350, 1, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator, user] to [admin, designator, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\",\"user\"],\"new_roles\":[\"admin\",\"designator\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\",\"can_access_user_calendar\"],\"new_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\",\"can_access_user_calendar\",\"can_access_user_tickets\"]}', '2026-02-03 17:51:22', '2026-02-03 17:51:22'),
(351, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.20\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 18:26:08', '2026-02-03 18:26:08'),
(352, 1, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator, user] to [admin, designator, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\",\"user\"],\"new_roles\":[\"admin\",\"designator\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\",\"can_access_user_calendar\",\"can_access_user_tickets\"],\"new_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\",\"can_access_user_calendar\",\"can_access_user_tickets\",\"can_access_user_enhancement_requests\",\"can_access_user_information\",\"can_access_user_dashboard\"]}', '2026-02-03 18:50:36', '2026-02-03 18:50:36'),
(353, 1, 'logout', 'User logged out', '{\"ip_address\":\"172.16.92.208\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36 Edg\\/144.0.0.0\"}', '2026-02-03 18:58:48', '2026-02-03 18:58:48'),
(354, 1, 'login', 'User logged in', '{\"ip_address\":\"172.16.92.208\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36 Edg\\/144.0.0.0\"}', '2026-02-03 18:59:20', '2026-02-03 18:59:20'),
(355, 8, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.213\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Mobile Safari\\/537.36\"}', '2026-02-03 19:00:51', '2026-02-03 19:00:51'),
(356, 8, 'logout', 'User logged out', '{\"ip_address\":\"172.16.88.213\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Mobile Safari\\/537.36\"}', '2026-02-03 19:02:53', '2026-02-03 19:02:53');
INSERT INTO `user_activities` (`id`, `user_id`, `action`, `description`, `metadata`, `created_at`, `updated_at`) VALUES
(357, 8, 'logout', 'User logged out', '{\"ip_address\":\"172.16.88.105\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 19:03:04', '2026-02-03 19:03:04'),
(358, 1, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator, user] to [admin, designator]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\",\"user\"],\"new_roles\":[\"admin\",\"designator\"],\"old_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\",\"can_access_user_calendar\",\"can_access_user_tickets\",\"can_access_user_enhancement_requests\",\"can_access_user_information\",\"can_access_user_dashboard\"],\"new_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"]}', '2026-02-03 19:12:43', '2026-02-03 19:12:43'),
(359, 8, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.105\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 19:12:50', '2026-02-03 19:12:50'),
(360, 3, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator, developer, user] to [admin, designator, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\",\"developer\",\"user\"],\"new_roles\":[\"admin\",\"designator\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"developer\",\"user\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_calendar\",\"can_access_optipedia\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"],\"new_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\",\"can_access_designator_dashboard\"]}', '2026-02-03 19:13:57', '2026-02-03 19:13:57'),
(361, 1, 'permissions_updated', 'Permissions updated by Lark Babao. Roles changed from [admin, designator] to [admin, designator, user]', '{\"updated_by\":1,\"updated_by_name\":\"Lark Babao\",\"old_roles\":[\"admin\",\"designator\"],\"new_roles\":[\"admin\",\"designator\",\"user\"],\"old_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"],\"new_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_enhancement_requests\",\"can_access_user_information\",\"can_access_designator_dashboard\"]}', '2026-02-03 19:15:23', '2026-02-03 19:15:23'),
(362, 8, 'logout', 'User logged out', '{\"ip_address\":\"172.16.88.105\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 19:15:51', '2026-02-03 19:15:51'),
(363, 7, 'login', 'User logged in', '{\"ip_address\":\"172.16.88.105\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 19:16:37', '2026-02-03 19:16:37'),
(364, 1, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [admin, designator, user] to [admin, designator]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"admin\",\"designator\",\"user\"],\"new_roles\":[\"admin\",\"designator\"],\"old_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_enhancement_requests\",\"can_access_user_information\",\"can_access_designator_dashboard\"],\"new_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_system_requests\",\"can_access_designator_users\",\"can_access_designator_calendar\",\"can_access_designator_tickets\"]}', '2026-02-03 19:19:58', '2026-02-03 19:19:58'),
(365, 3, 'logout', 'User logged out', '{\"ip_address\":\"172.16.93.20\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 19:20:30', '2026-02-03 19:20:30'),
(366, 3, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [admin, designator, user] to [admin, designator]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"admin\",\"designator\",\"user\"],\"new_roles\":[\"admin\",\"designator\"],\"old_permissions\":[\"admin\",\"designator\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\",\"can_access_designator_dashboard\"],\"new_permissions\":[\"admin\",\"designator\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"]}', '2026-02-03 19:21:13', '2026-02-03 19:21:13'),
(367, 9, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [user] to [admin]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"user\"],\"new_roles\":[\"admin\"],\"old_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"],\"new_permissions\":[\"admin\",\"can_access_designator_tickets\",\"can_access_designator_dashboard\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"]}', '2026-02-03 19:22:41', '2026-02-03 19:22:41'),
(368, 3, 'login', 'User logged in', '{\"ip_address\":\"172.16.93.20\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/144.0.0.0 Safari\\/537.36\"}', '2026-02-03 19:22:49', '2026-02-03 19:22:49'),
(369, 9, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [admin] to [developer]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"admin\"],\"new_roles\":[\"developer\"],\"old_permissions\":[\"admin\",\"can_access_designator_tickets\",\"can_access_designator_dashboard\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"],\"new_permissions\":[\"developer\",\"can_access_dev_tickets\",\"can_access_dev_dashboard\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_optipedia\"]}', '2026-02-03 19:23:02', '2026-02-03 19:23:02'),
(370, 9, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [developer] to [admin, developer, user]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"developer\"],\"new_roles\":[\"admin\",\"developer\",\"user\"],\"old_permissions\":[\"developer\",\"can_access_dev_tickets\",\"can_access_dev_dashboard\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_optipedia\"],\"new_permissions\":[\"admin\",\"developer\",\"user\",\"can_access_dev_tickets\",\"can_access_dev_dashboard\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_optipedia\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_system_requests\",\"can_access_designator_users\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\"]}', '2026-02-03 19:23:35', '2026-02-03 19:23:35'),
(371, 9, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [admin, developer, user] to [user]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"admin\",\"developer\",\"user\"],\"new_roles\":[\"user\"],\"old_permissions\":[\"admin\",\"developer\",\"user\",\"can_access_dev_tickets\",\"can_access_dev_dashboard\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_optipedia\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_system_requests\",\"can_access_designator_users\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\"],\"new_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\"]}', '2026-02-03 19:23:55', '2026-02-03 19:23:55'),
(372, 9, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [user] to [admin, developer, user]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"user\"],\"new_roles\":[\"admin\",\"developer\",\"user\"],\"old_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\"],\"new_permissions\":[\"admin\",\"developer\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\",\"can_access_optipedia\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_dev_tickets\",\"can_access_dev_dashboard\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"]}', '2026-02-03 19:24:19', '2026-02-03 19:24:19'),
(373, 9, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [admin, developer, user] to [developer, user]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"admin\",\"developer\",\"user\"],\"new_roles\":[\"developer\",\"user\"],\"old_permissions\":[\"admin\",\"developer\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\",\"can_access_optipedia\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_dev_tickets\",\"can_access_dev_dashboard\",\"can_access_designator_dashboard\",\"can_access_designator_tickets\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"],\"new_permissions\":[\"developer\",\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\",\"can_access_user_enhancement_requests\",\"can_access_optipedia\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_dev_tickets\",\"can_access_dev_dashboard\"]}', '2026-02-03 19:24:36', '2026-02-03 19:24:36'),
(374, 2, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [user] to [admin]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"user\"],\"new_roles\":[\"admin\"],\"old_permissions\":[\"user\",\"can_access_user_dashboard\",\"can_access_user_tickets\",\"can_access_user_calendar\",\"can_access_user_information\"],\"new_permissions\":[\"admin\",\"can_access_designator_tickets\",\"can_access_designator_dashboard\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"]}', '2026-02-03 19:25:47', '2026-02-03 19:25:47'),
(375, 2, 'permissions_updated', 'Permissions updated by Zab Tumangg. Roles changed from [admin] to [developer]', '{\"updated_by\":7,\"updated_by_name\":\"Zab Tumangg\",\"old_roles\":[\"admin\"],\"new_roles\":[\"developer\"],\"old_permissions\":[\"admin\",\"can_access_designator_tickets\",\"can_access_designator_dashboard\",\"can_access_designator_calendar\",\"can_access_designator_users\",\"can_access_designator_system_requests\"],\"new_permissions\":[\"developer\",\"can_access_dev_dashboard\",\"can_access_dev_tickets\",\"can_access_dev_system_requests\",\"can_access_dev_calendar\",\"can_access_optipedia\"]}', '2026-02-03 19:26:14', '2026-02-03 19:26:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD KEY `categories_is_active_index` (`is_active`);

--
-- Indexes for table `document_stats`
--
ALTER TABLE `document_stats`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledge_base_entries`
--
ALTER TABLE `knowledge_base_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowledge_base_entries_approved_by_foreign` (`approved_by`),
  ADD KEY `knowledge_base_entries_status_index` (`status`),
  ADD KEY `knowledge_base_entries_ticket_id_index` (`ticket_id`),
  ADD KEY `knowledge_base_entries_created_by_index` (`created_by`),
  ADD KEY `knowledge_base_entries_category_id_index` (`category_id`);
ALTER TABLE `knowledge_base_entries` ADD FULLTEXT KEY `knowledge_base_entries_title_concern_solution_fulltext` (`title`,`concern`,`solution`);

--
-- Indexes for table `knowledge_base_entry_histories`
--
ALTER TABLE `knowledge_base_entry_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowledge_base_entry_histories_kb_entry_id_index` (`kb_entry_id`),
  ADD KEY `knowledge_base_entry_histories_user_id_index` (`user_id`),
  ADD KEY `knowledge_base_entry_histories_event_type_index` (`event_type`),
  ADD KEY `knowledge_base_entry_histories_created_at_index` (`created_at`);

--
-- Indexes for table `knowledge_base_usages`
--
ALTER TABLE `knowledge_base_usages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `knowledge_base_usages_reference_number_unique` (`reference_number`),
  ADD KEY `knowledge_base_usages_reference_number_index` (`reference_number`),
  ADD KEY `knowledge_base_usages_knowledge_base_entry_id_index` (`knowledge_base_entry_id`),
  ADD KEY `knowledge_base_usages_user_id_index` (`user_id`),
  ADD KEY `knowledge_base_usages_method_index` (`method`),
  ADD KEY `knowledge_base_usages_created_at_index` (`created_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_index` (`user_id`),
  ADD KEY `notifications_type_index` (`type`),
  ADD KEY `notifications_is_read_index` (`is_read`),
  ADD KEY `notifications_user_id_is_read_index` (`user_id`,`is_read`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `search_index`
--
ALTER TABLE `search_index`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_index_term_document_id_index` (`term`,`document_id`),
  ADD KEY `search_index_document_id_field_type_index` (`document_id`,`field_type`),
  ADD KEY `search_index_term_index` (`term`),
  ADD KEY `search_index_document_id_index` (`document_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `systems_name_unique` (`name`),
  ADD KEY `systems_is_active_index` (`is_active`);

--
-- Indexes for table `system_request_forms`
--
ALTER TABLE `system_request_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_request_forms_system_request_link_id_user_id_unique` (`system_request_link_id`,`user_id`),
  ADD KEY `system_request_forms_user_id_foreign` (`user_id`),
  ADD KEY `system_request_forms_status_index` (`status`);

--
-- Indexes for table `system_request_links`
--
ALTER TABLE `system_request_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_request_links_token_hash_unique` (`token_hash`),
  ADD KEY `system_request_links_created_by_user_id_foreign` (`created_by_user_id`),
  ADD KEY `system_request_links_claimed_user_id_foreign` (`claimed_user_id`),
  ADD KEY `system_request_links_revoked_by_user_id_foreign` (`revoked_by_user_id`),
  ADD KEY `system_request_links_target_email_index` (`target_email`),
  ADD KEY `system_request_links_status_index` (`status`),
  ADD KEY `system_request_links_expires_at_index` (`expires_at`),
  ADD KEY `system_request_links_type_index` (`type`);

--
-- Indexes for table `system_request_tickets`
--
ALTER TABLE `system_request_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_request_tickets_ticket_id_unique` (`ticket_id`),
  ADD UNIQUE KEY `system_request_tickets_system_request_link_id_unique` (`system_request_link_id`),
  ADD UNIQUE KEY `system_request_tickets_system_request_form_id_unique` (`system_request_form_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_number_unique` (`ticket_number`),
  ADD KEY `tickets_status_index` (`status`),
  ADD KEY `tickets_user_id_index` (`user_id`),
  ADD KEY `tickets_created_at_index` (`created_at`),
  ADD KEY `tickets_system_id_foreign` (`system_id`),
  ADD KEY `tickets_status_created_at_index` (`status`,`created_at`),
  ADD KEY `tickets_user_id_status_index` (`user_id`,`status`),
  ADD KEY `tickets_priority_level_index` (`priority_level`);

--
-- Indexes for table `ticket_assignments`
--
ALTER TABLE `ticket_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_assignments_ticket_id_developer_id_unique` (`ticket_id`,`developer_id`),
  ADD KEY `ticket_assignments_assigned_by_foreign` (`assigned_by`),
  ADD KEY `ticket_assignments_ticket_id_index` (`ticket_id`),
  ADD KEY `ticket_assignments_developer_id_index` (`developer_id`),
  ADD KEY `ticket_assignments_accepted_at_index` (`accepted_at`),
  ADD KEY `ticket_assignments_ticket_id_accepted_at_index` (`ticket_id`,`accepted_at`);

--
-- Indexes for table `ticket_histories`
--
ALTER TABLE `ticket_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_histories_ticket_id_index` (`ticket_id`),
  ADD KEY `ticket_histories_user_id_index` (`user_id`),
  ADD KEY `ticket_histories_action_index` (`action`),
  ADD KEY `ticket_histories_created_at_index` (`created_at`),
  ADD KEY `ticket_histories_event_type_index` (`event_type`);

--
-- Indexes for table `ticket_returns`
--
ALTER TABLE `ticket_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_returns_ticket_id_index` (`ticket_id`),
  ADD KEY `ticket_returns_returned_by_index` (`returned_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_user_id_unique` (`user_id`);

--
-- Indexes for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activities_user_id_index` (`user_id`),
  ADD KEY `user_activities_action_index` (`action`),
  ADD KEY `user_activities_created_at_index` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_base_entries`
--
ALTER TABLE `knowledge_base_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `knowledge_base_entry_histories`
--
ALTER TABLE `knowledge_base_entry_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `knowledge_base_usages`
--
ALTER TABLE `knowledge_base_usages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `search_index`
--
ALTER TABLE `search_index`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;

--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_request_forms`
--
ALTER TABLE `system_request_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_request_links`
--
ALTER TABLE `system_request_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_request_tickets`
--
ALTER TABLE `system_request_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ticket_assignments`
--
ALTER TABLE `ticket_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ticket_histories`
--
ALTER TABLE `ticket_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ticket_returns`
--
ALTER TABLE `ticket_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `document_stats`
--
ALTER TABLE `document_stats`
  ADD CONSTRAINT `document_stats_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `knowledge_base_entries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `knowledge_base_entries`
--
ALTER TABLE `knowledge_base_entries`
  ADD CONSTRAINT `knowledge_base_entries_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `knowledge_base_entries_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `knowledge_base_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_base_entries_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `knowledge_base_entry_histories`
--
ALTER TABLE `knowledge_base_entry_histories`
  ADD CONSTRAINT `knowledge_base_entry_histories_kb_entry_id_foreign` FOREIGN KEY (`kb_entry_id`) REFERENCES `knowledge_base_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_base_entry_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `knowledge_base_usages`
--
ALTER TABLE `knowledge_base_usages`
  ADD CONSTRAINT `knowledge_base_usages_knowledge_base_entry_id_foreign` FOREIGN KEY (`knowledge_base_entry_id`) REFERENCES `knowledge_base_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_base_usages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `system_request_forms`
--
ALTER TABLE `system_request_forms`
  ADD CONSTRAINT `system_request_forms_system_request_link_id_foreign` FOREIGN KEY (`system_request_link_id`) REFERENCES `system_request_links` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `system_request_forms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `system_request_links`
--
ALTER TABLE `system_request_links`
  ADD CONSTRAINT `system_request_links_claimed_user_id_foreign` FOREIGN KEY (`claimed_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `system_request_links_created_by_user_id_foreign` FOREIGN KEY (`created_by_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `system_request_links_revoked_by_user_id_foreign` FOREIGN KEY (`revoked_by_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `system_request_tickets`
--
ALTER TABLE `system_request_tickets`
  ADD CONSTRAINT `system_request_tickets_system_request_form_id_foreign` FOREIGN KEY (`system_request_form_id`) REFERENCES `system_request_forms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `system_request_tickets_system_request_link_id_foreign` FOREIGN KEY (`system_request_link_id`) REFERENCES `system_request_links` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `system_request_tickets_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_system_id_foreign` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`),
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_assignments`
--
ALTER TABLE `ticket_assignments`
  ADD CONSTRAINT `ticket_assignments_assigned_by_foreign` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ticket_assignments_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_assignments_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_histories`
--
ALTER TABLE `ticket_histories`
  ADD CONSTRAINT `ticket_histories_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ticket_returns`
--
ALTER TABLE `ticket_returns`
  ADD CONSTRAINT `ticket_returns_returned_by_foreign` FOREIGN KEY (`returned_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_returns_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD CONSTRAINT `user_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
