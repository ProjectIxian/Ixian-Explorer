-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2020 at 11:05 PM
-- Server version: 5.7.31-log
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `explorer01`
--

-- --------------------------------------------------------

--
-- Table structure for table `ixi_addresses`
--

CREATE TABLE `ixi_addresses` (
  `id` bigint(20) NOT NULL COMMENT 'Index used for lookups',
  `address` varchar(128) NOT NULL,
  `amount` decimal(30,8) NOT NULL,
  `lastblock` bigint(20) NOT NULL COMMENT 'Last blockheight where this address balance was updated',
  `colored` tinyint(1) DEFAULT NULL,
  `comment` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ixi_blocks`
--

CREATE TABLE `ixi_blocks` (
  `id` bigint(20) NOT NULL,
  `blockChecksum` varchar(128) NOT NULL,
  `lastBlockChecksum` varchar(128) NOT NULL,
  `wsChecksum` varchar(128) NOT NULL,
  `sigFreezeChecksum` varchar(128) NOT NULL,
  `powField` varchar(128) NOT NULL,
  `difficulty` varchar(128) NOT NULL,
  `sigCount` int(11) NOT NULL,
  `txCount` int(11) NOT NULL,
  `txAmount` decimal(30,8) NOT NULL,
  `timestamp` varchar(16) NOT NULL,
  `version` int(11) NOT NULL,
  `hashrate` varchar(128) NOT NULL,
  `blocktime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ixi_nodestats`
--

CREATE TABLE `ixi_nodestats` (
  `blockheight` bigint(20) NOT NULL,
  `date` timestamp NOT NULL,
  `totalixi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashrate` bigint(20) NOT NULL,
  `difficulty` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blockratio` float NOT NULL,
  `nodes-m` bigint(20) NOT NULL,
  `nodes-r` bigint(20) NOT NULL,
  `nodes-c` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ixi_signatures`
--

CREATE TABLE `ixi_signatures` (
  `blockNr` bigint(100) NOT NULL,
  `signature` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ixi_transactions`
--

CREATE TABLE `ixi_transactions` (
  `id` bigint(20) NOT NULL COMMENT 'Transaction index used for lookup',
  `txid` varchar(100) NOT NULL,
  `blockNr` bigint(20) NOT NULL,
  `nonce` varchar(16) NOT NULL,
  `signature` varchar(2048) NOT NULL,
  `data` text NOT NULL,
  `timestamp` varchar(16) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` decimal(30,8) NOT NULL,
  `applied` bigint(20) NOT NULL,
  `checksum` varchar(128) NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `fee` varchar(100) NOT NULL,
  `version` int(11) NOT NULL,
  `tainted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ixi_txidx`
--

CREATE TABLE `ixi_txidx` (
  `idx` int(11) NOT NULL,
  `aidx` bigint(20) NOT NULL COMMENT 'Address index',
  `txidx` bigint(20) NOT NULL COMMENT 'Transaction index',
  `amountdelta` decimal(30,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Transaction indices to optimize lookup';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ixi_addresses`
--
ALTER TABLE `ixi_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `ixi_blocks`
--
ALTER TABLE `ixi_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blockChecksum` (`blockChecksum`),
  ADD KEY `lastBlockChecksum` (`lastBlockChecksum`),
  ADD KEY `wsChecksum` (`wsChecksum`),
  ADD KEY `sigFreezeChecksum` (`sigFreezeChecksum`),
  ADD KEY `powField` (`powField`),
  ADD KEY `difficulty` (`difficulty`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `txCount` (`txCount`);

--
-- Indexes for table `ixi_nodestats`
--
ALTER TABLE `ixi_nodestats`
  ADD PRIMARY KEY (`blockheight`);

--
-- Indexes for table `ixi_signatures`
--
ALTER TABLE `ixi_signatures`
  ADD PRIMARY KEY (`blockNr`,`signature`);

--
-- Indexes for table `ixi_transactions`
--
ALTER TABLE `ixi_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blockNr` (`blockNr`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `type` (`type`),
  ADD KEY `checksum` (`checksum`),
  ADD KEY `applied` (`applied`),
  ADD KEY `amount` (`amount`),
  ADD KEY `id` (`txid`),
  ADD KEY `tainted` (`tainted`);

--
-- Indexes for table `ixi_txidx`
--
ALTER TABLE `ixi_txidx`
  ADD PRIMARY KEY (`idx`,`aidx`,`txidx`),
  ADD KEY `aidx` (`aidx`),
  ADD KEY `aidx_2` (`aidx`),
  ADD KEY `txidx` (`txidx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ixi_addresses`
--
ALTER TABLE `ixi_addresses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Index used for lookups';

--
-- AUTO_INCREMENT for table `ixi_nodestats`
--
ALTER TABLE `ixi_nodestats`
  MODIFY `blockheight` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ixi_transactions`
--
ALTER TABLE `ixi_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Transaction index used for lookup';

--
-- AUTO_INCREMENT for table `ixi_txidx`
--
ALTER TABLE `ixi_txidx`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
