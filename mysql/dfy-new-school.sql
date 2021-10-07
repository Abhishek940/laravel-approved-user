-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 07:12 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dfy-new-school`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_infos`
--

CREATE TABLE `academic_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `institution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_year` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `division_grade` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major_subjects` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_infos`
--

INSERT INTO `academic_infos` (`id`, `created_by`, `last_updated_by`, `students_id`, `institution`, `board`, `pass_year`, `symbol_no`, `percentage`, `division_grade`, `major_subjects`, `remark`, `sorting_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'school', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2021-09-27 11:55:09', '2021-09-27 11:57:24'),
(2, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2021-09-27 11:55:09', '2021-09-27 11:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `account_categories`
--

CREATE TABLE `account_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `ac_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_categories`
--

INSERT INTO `account_categories` (`id`, `created_by`, `last_updated_by`, `ac_name`, `ac_type`, `dr`, `cr`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'ACCOUNTS PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'ACCOUNTS RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, 'ACCUMULATED DEPRECIATION', 'Contra Asset', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, 'ADVERTISING EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(5, 1, NULL, 'ALLOWANCE FOR UNCOLLECTIBLE ACCOUNTS', 'Contra Asset', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(6, 1, NULL, 'AMORTIZATION EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(7, 1, NULL, 'AVAILABLE FOR SALE SECURITIES', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(8, 1, NULL, 'Bank Accounts', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(9, 1, NULL, 'Bank OD A/c', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(10, 1, NULL, 'BONDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(11, 1, NULL, 'BUILDING', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(12, 1, NULL, 'CAPITAL STOCK', 'Equity', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(13, 1, NULL, 'CASH', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(14, 1, NULL, 'CASH OVER', 'Revenue', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(15, 1, NULL, 'CASH SHORT', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(16, 1, NULL, 'CHARITABLE CONTRIBUTIONS PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(17, 1, NULL, 'COMMON STOCK', 'Equity', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(18, 1, NULL, 'COST OF GOODS SOLD', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(19, 1, NULL, 'CURRENCY EXCHANGE GAIN', 'Gain', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(20, 1, NULL, 'CURRENCY EXCHANGE LOSS', 'Loss', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(21, 1, NULL, 'DEPRECIATION EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(22, 1, NULL, 'DISCOUNT ON BONDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(23, 1, NULL, 'DISCOUNT ON NOTES PAYABLE', 'Contra Liability', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(24, 1, NULL, 'DIVIDEND INCOME', 'Revenue', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(25, 1, NULL, 'DIVIDENDS', 'Dividend', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(26, 1, NULL, 'DIVIDENDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(27, 1, NULL, 'DOMAIN NAME', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(28, 1, NULL, 'EMPLOYEE BENEFITS EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(29, 1, NULL, 'EQUIPMENT', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(30, 1, NULL, 'FEDERAL INCOME TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(31, 1, NULL, 'FEDERAL UNEMPLOYMENT TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(32, 1, NULL, 'FREIGHT-IN', 'Part of Calculation of Net Purchases', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(33, 1, NULL, 'FREIGHT-OUT', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(34, 1, NULL, 'FUEL EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(35, 1, NULL, 'GAIN', 'Gain', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(36, 1, NULL, 'HEALTH/CHILD FLEX PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(37, 1, NULL, 'INCOME SUMMARY', 'Not a Financial Statement Account', 'Debited for Total Expenses', 'Credited for Total Revenues', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(38, 1, NULL, 'INSURANCE EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(39, 1, NULL, 'INSURANCE PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(40, 1, NULL, 'INTEREST EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(41, 1, NULL, 'INTEREST INCOME', 'Revenue', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(42, 1, NULL, 'INTEREST PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(43, 1, NULL, 'INTEREST RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(44, 1, NULL, 'INVENTORY', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(45, 1, NULL, 'INVESTMENT IN BONDS', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(46, 1, NULL, 'INVESTMENT INCOME', 'Revenue', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(47, 1, NULL, 'INVESTMENTS', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(48, 1, NULL, 'LAND', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(49, 1, NULL, 'LOAN PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(50, 1, NULL, 'LOAN & ADVANCE', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(51, 1, NULL, 'LOSS', 'Loss', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(52, 1, NULL, 'MEDICARE/MEDICAID PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(53, 1, NULL, 'MISCELLANEOUS EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(54, 1, NULL, 'NOTES PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(55, 1, NULL, 'NOTES RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(56, 1, NULL, 'OBLIGATION UNDER CAPITAL LEASE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(57, 1, NULL, 'PAID-IN CAPITAL IN EXCESS OF PAR – COMMON', 'Equity', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(58, 1, NULL, 'PAID-IN CAPITAL IN EXCESS OF PAR – PREFERRED', 'Equity', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(59, 1, NULL, 'PATENT', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(60, 1, NULL, 'PAYROLL TAX EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(61, 1, NULL, 'PETTY CASH', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(62, 1, NULL, 'POSTAGE EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(63, 1, NULL, 'PREMIUM ON BONDS PAYABLE', 'Liability Adjunct Account', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(64, 1, NULL, 'PREPAID INSURANCE', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(65, 1, NULL, 'PREPAID RENT', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(66, 1, NULL, 'PURCHASE DISCOUNTS', 'Reduces Calculation of Net Purchases', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(67, 1, NULL, 'PURCHASE DISCOUNTS LOST', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(68, 1, NULL, 'PURCHASES', 'Part of Calculation of Net Purchases', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(69, 1, NULL, 'PURCHASE RETURNS', 'Reduces Calculation of Net Purchases', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(70, 1, NULL, 'RENT EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(71, 1, NULL, 'REPAIR EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(72, 1, NULL, 'RETAINED EARNINGS', 'Equity', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(73, 1, NULL, 'RETIREMENT CONTRIBUTION PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(74, 1, NULL, 'REVENUE', 'Revenue', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(75, 1, NULL, 'SALARIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(76, 1, NULL, 'SALARIES PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(77, 1, NULL, 'SALES', 'Revenue', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(78, 1, NULL, 'SALES DISCOUNTS', 'Contra Revenue', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(79, 1, NULL, 'SALES RETURNS', 'Contra Revenue', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(80, 1, NULL, 'SERVICE CHARGE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(81, 1, NULL, 'SERVICE REVENUE', 'Revenue', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(82, 1, NULL, 'SOCIAL SECURITY PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(83, 1, NULL, 'STATE INCOME TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(84, 1, NULL, 'STATE UNEMPLOYMENT TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(85, 1, NULL, 'SUNDRY CREDITORS', 'Current liabilities', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(86, 1, NULL, 'SUNDRY DEBTORS', 'Current Assets', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(87, 1, NULL, 'SUPPLIES', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(88, 1, NULL, 'SUPPLIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(89, 1, NULL, 'TRADING SECURITIES', 'Asset', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(90, 1, NULL, 'TREASURY STOCK', 'Contra Equity', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(91, 1, NULL, 'UNCOLLECTIBLE ACCOUNTS EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(92, 1, NULL, 'UNEARNED REVENUE', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(93, 1, NULL, 'UNREALIZED GAIN', 'Gain', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(94, 1, NULL, 'UNREALIZED LOSS', 'Loss', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(95, 1, NULL, 'UNREALIZED GAIN – OTHER COMPREHENSIVE INCOME', 'Increase in Equity Via Other Comprehensive Income', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(96, 1, NULL, 'UNREALIZED LOSS – OTHER COMPREHENSIVE INCOME', 'Decrease in Equity Via Other Comprehensive Income', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(97, 1, NULL, 'UTILITIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(98, 1, NULL, 'WARRANTY EXPENSE', 'Expense', 'Increase', 'Decrease', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(99, 1, NULL, 'WARRANTY LIABILITY', 'Liability', 'Decrease', 'Increase', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `addressinfos`
--

CREATE TABLE `addressinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addressinfos`
--

INSERT INTO `addressinfos` (`id`, `created_by`, `last_updated_by`, `students_id`, `address`, `state`, `country`, `temp_address`, `temp_state`, `temp_country`, `home_phone`, `mobile_1`, `mobile_2`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'PATNA', 'BIHAR', 'INDIA', 'PATNA', 'BIHAR', 'INDIA', NULL, '9845120365', '9852365447', 1, '2021-09-27 11:55:09', '2021-09-27 11:57:24'),
(2, 1, NULL, 2, 'PATNA', 'BIHAR', 'INDIA', 'PATNA', 'BIHAR', 'INDIA', '0621-74589623', '8523695410', '7541268520', 1, '2021-09-29 04:24:58', '2021-09-29 04:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `event` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT 1,
  `email` tinyint(1) NOT NULL DEFAULT 1,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`id`, `created_by`, `last_updated_by`, `event`, `sms`, `email`, `subject`, `template`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'BirthdayWish', 0, 0, 'Wish Your Birthday Dear', 'Dear {{first_name}}, Sending you smiles for every moment of your special day…Have a wonderful time and a very happy birthday!', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'StudentRegistration', 0, 0, 'Registration Information', 'Dear {{first_name}}, you are successfully registered in our institution with RegNo.{{reg_no}}. Your login password is {{password}} ,Thank You.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, 'StudentTransfer', 0, 0, 'Transfer Information', 'Dear {{first_name}}, We would like to inform you are successfully transferred to {{semester}}. Thank You.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, 'FeeReceive', 0, 0, 'Fees Receive Information', 'Dear {{first_name}}, We would like to inform you we are successfully received {{amount}} on {{date}}. Thank you for the Deposit.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(5, 1, NULL, 'BalanceFees', 0, 0, 'Balance Fees Information', 'Dear {{first_name}}, you have {{due_amount}} balance fees. please deposit on time. For more info contact the Account Department.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(6, 1, NULL, 'SubjectAttendance', 0, 0, 'Student Subject Wise Attendance Information', 'Dear {{guardian_name}}, your child {{first_name}} was Absent in {{absent_status}} subjects attendance on {{date}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(7, 1, NULL, 'StudentAttendance', 0, 0, 'Student Attendance Information', 'Dear Guardian, This is to inform you that {{first_name}} is {{status}} on {{date}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(8, 1, NULL, 'StaffAttendance', 0, 0, 'Staff Attendance Information', 'Dear {{first_name}}, This is to inform you are {{status}} on {{date}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(9, 1, NULL, 'StaffAbsentNotification', 0, 0, 'Staff Absent Information', 'Dear Sir, This is to inform you following staffs are absent today. {{staffs_name}}', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(10, 1, NULL, 'ExamScoreForGuardian', 0, 0, 'Exam Score Information', 'Dear Guardian, {{first_name}} has obtained the following marks in {{exam_mark_detail}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(11, 1, NULL, 'ExamScoreForStudent', 0, 0, 'Exam Score Information', 'Dear {{first_name}}, you have obtained following marks in {{exam_mark_detail}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(12, 1, NULL, 'LibraryRegistration', 0, 0, 'Library Registration Information', 'Dear {{first_name}}, Congratulation! You are successfully registered in our library.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(13, 1, NULL, 'LibraryReturnPeriodOver', 0, 0, 'Library Clearance Reminder', 'Dear {{first_name}}, We would like to inform you have some books return time period is over. So, please return as soon as possible.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(14, 1, NULL, 'HostelRegistration', 0, 0, 'Hostel Registration Information', 'Dear {{first_name}}, Congratulation! You are successfully registered in our hostel.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(15, 1, NULL, 'HostelShift', 0, 0, 'Hostel Shift Information', 'Dear {{first_name}}, Congratulation! You are successfully shifted in {{new_hostel}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(16, 1, NULL, 'HostelLeave', 0, 0, 'Hostel Leave Information', 'Dear {{first_name}}, You are successfully leaving from our hostel. Thank you.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(17, 1, NULL, 'HostelActive', 0, 0, 'Hostel Active Again Information', 'Dear {{first_name}}, You are successfully re-Activated for our hostel service in {{new_hostel}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(18, 1, NULL, 'TransportRegistration', 0, 0, 'Transport Service Registration Information', 'Dear {{first_name}}, You are successfully registered for our transport service in {{transport}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(19, 1, NULL, 'TransportShift', 0, 0, 'Transport Shift Information', 'Dear {{first_name}}, Congratulation! You are successfully shifted in {{transport}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(20, 1, NULL, 'TransportLeave', 0, 0, 'Transport Leave Information', 'Dear {{first_name}}, You are successfully deactivated for transport service. Thank you.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(21, 1, NULL, 'TransportActive', 0, 0, 'Transport Active Again Information', 'Dear {{first_name}}, You are successfully re-Activated for our transport service in {{transport}}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(22, 1, NULL, 'CustomerRegistration', 0, 0, 'Customer Registration Information', 'Dear {name}, you are successfully registered in our CRM with RegNo.{reg_no}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(23, 1, NULL, 'VendorRegistration', 0, 0, 'Vendor Registration Information', 'Dear {name}, you are successfully registered in our CRM with RegNo.{reg_no}.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(24, 1, NULL, 'MeetingScheduleInvitation', 0, 0, 'Meeting Scheduled Invitation', 'Dear {{first_name}}, {{semester}}/{{subject}}/{{topic}} Meeting Scheduled @{{start_time}}. Please Present on Time And Connect. Thank you', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(25, 1, NULL, 'MeetingStart', 0, 0, 'Meeting Start Join Request', 'Dear {{first_name}}, {{semester}}/{{subject}}/{{topic}} Meeting Started, Please Connect to Attend Class. Thank you', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(26, 1, NULL, 'Web Registration', 0, 0, 'Registration', 'Dear {{name}}, your application successfully registered with Reg. No.{{reg_no}}. Thank You.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(27, 1, NULL, 'Web Registration Approve', 0, 0, 'Registration Approve', 'Dear {{name}}, your Reg. No.{{reg_no}} application successfully approved. Thank You.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(28, 1, NULL, 'Web Registration Reject', 0, 0, 'Registration Reject', 'Dear {{name}}, your Reg. No.{{reg_no}} application rejected. Thank You.', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_answers`
--

CREATE TABLE `assignment_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `assignments_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `answer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `attendees_type` int(11) NOT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT 0,
  `day_2` int(11) NOT NULL DEFAULT 0,
  `day_3` int(11) NOT NULL DEFAULT 0,
  `day_4` int(11) NOT NULL DEFAULT 0,
  `day_5` int(11) NOT NULL DEFAULT 0,
  `day_6` int(11) NOT NULL DEFAULT 0,
  `day_7` int(11) NOT NULL DEFAULT 0,
  `day_8` int(11) NOT NULL DEFAULT 0,
  `day_9` int(11) NOT NULL DEFAULT 0,
  `day_10` int(11) NOT NULL DEFAULT 0,
  `day_11` int(11) NOT NULL DEFAULT 0,
  `day_12` int(11) NOT NULL DEFAULT 0,
  `day_13` int(11) NOT NULL DEFAULT 0,
  `day_14` int(11) NOT NULL DEFAULT 0,
  `day_15` int(11) NOT NULL DEFAULT 0,
  `day_16` int(11) NOT NULL DEFAULT 0,
  `day_17` int(11) NOT NULL DEFAULT 0,
  `day_18` int(11) NOT NULL DEFAULT 0,
  `day_19` int(11) NOT NULL DEFAULT 0,
  `day_20` int(11) NOT NULL DEFAULT 0,
  `day_21` int(11) NOT NULL DEFAULT 0,
  `day_22` int(11) NOT NULL DEFAULT 0,
  `day_23` int(11) NOT NULL DEFAULT 0,
  `day_24` int(11) NOT NULL DEFAULT 0,
  `day_25` int(11) NOT NULL DEFAULT 0,
  `day_26` int(11) NOT NULL DEFAULT 0,
  `day_27` int(11) NOT NULL DEFAULT 0,
  `day_28` int(11) NOT NULL DEFAULT 0,
  `day_29` int(11) NOT NULL DEFAULT 0,
  `day_30` int(11) NOT NULL DEFAULT 0,
  `day_31` int(11) NOT NULL DEFAULT 0,
  `day_32` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_certificates`
--

CREATE TABLE `attendance_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `year_of_study` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_of_attendance` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_certificates`
--

INSERT INTO `attendance_certificates` (`id`, `created_by`, `last_updated_by`, `students_id`, `date_of_issue`, `year_of_study`, `percentage_of_attendance`, `ref_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, '2021-09-29', '2020-21', '80', '{\"date_of_issue\":\"2021-09-29T12:15:42.370422Z\",\"year_of_study\":\"2020-21\",\"percentage_of_attendance\":\"80\",\"students_id\":\"1\",\"faculty\":\"2\",\"semester\":\"1\",\"reg_no\":\"STU1001\",\"reg_date\":\"2021-09-01\",\"university_reg\":\"1001\",\"first_name\":\"RAHUL\",\"middle_name\":null,\"last_name\":\"KUMAR\",\"date_of_birth\":\"2016-09-01\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"nationality\":\"INDIAN\",\"religion\":\"HINDU\",\"caste\":null,\"issue_certificate\":\"Issue\",\"created_by\":1}', 1, '2021-09-29 12:15:42', '2021-09-29 12:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_masters`
--

CREATE TABLE `attendance_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `month` int(10) UNSIGNED NOT NULL,
  `day_in_month` int(11) NOT NULL,
  `holiday` int(11) NOT NULL,
  `open` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_statuses`
--

CREATE TABLE `attendance_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_statuses`
--

INSERT INTO `attendance_statuses` (`id`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'PRESENT', 'btn-primary', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(2, 1, NULL, 'ABSENT', 'btn-danger', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(3, 1, NULL, 'LATE', 'btn-warning', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(4, 1, NULL, 'LEAVE', 'btn-success', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(5, 1, NULL, 'HOLIDAY', 'btn-info', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2021-09-27 15:36:55\",\"last_login_ip\":\"127.0.0.1\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:06:55', '2021-09-27 10:06:55'),
(2, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$L1xIzOFEvqT.UGVKpTnWkOMSsaWEliEHhVWgSv78ziZw4XfMD9dM.\"}', '{\"password\":\"$2y$10$P3IcMCS4lHaKb4S15U3MeumbElSNVXm\\/982PvlMzUctjRSVl9b136\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:06:55', '2021-09-27 10:06:55'),
(3, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 1, '[]', '{\"faculty\":\"One\",\"faculty_code\":\"C001\",\"sorting\":\"1\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:15:23', '2021-09-27 10:15:23'),
(4, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 2, '[]', '{\"faculty\":\"TWO\",\"faculty_code\":\"C002\",\"sorting\":\"2\",\"created_by\":1,\"id\":2}', 'http://localhost:8000/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:15:44', '2021-09-27 10:15:44'),
(5, 'App\\User', 1, 'created', 'App\\Models\\StudentBatch', 1, '[]', '{\"title\":\"2020-21\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/student-batch/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:17:23', '2021-09-27 10:17:23'),
(6, 'App\\User', 1, 'created', 'App\\Models\\StaffDesignation', 1, '[]', '{\"title\":\"Teacher\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/staff/designation/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:20:47', '2021-09-27 10:20:47'),
(7, 'App\\User', 1, 'created', 'App\\Models\\Staff', 1, '[]', '{\"reg_no\":\"S001\",\"join_date\":\"2021-09-02\",\"designation\":\"1\",\"first_name\":\"SAURAV\",\"middle_name\":null,\"last_name\":\"KUMAR\",\"father_name\":\"PANKAJ KUMAR\",\"mother_name\":null,\"date_of_birth\":\"2001-01-12\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"nationality\":\"INDIAN\",\"mother_tongue\":\"HINDI\",\"email\":\"saurav@gmail.com\",\"home_phone\":\"9770233333\",\"mobile_1\":\"9845120365\",\"mobile_2\":\"7541268520\",\"address\":\"PATNA\",\"state\":\"BIHAR\",\"country\":\"INDIA\",\"temp_address\":\"PATNA\",\"temp_state\":\"BIHAR\",\"temp_country\":\"INDIA\",\"qualification\":\"GRADUATION\",\"experience\":\"1\",\"experience_info\":null,\"other_info\":null,\"created_by\":1,\"staff_image\":\"\",\"id\":1}', 'http://localhost:8000/staff/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:22:51', '2021-09-27 10:22:51'),
(8, 'App\\User', 1, 'created', 'App\\Models\\TransactionHead', 4, '[]', '{\"created_by\":1,\"tr_head\":\"SAURAV  KUMAR  [S001]\",\"ref_id\":1,\"acc_id\":76,\"id\":4}', 'http://localhost:8000/staff/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:22:51', '2021-09-27 10:22:51'),
(9, 'App\\User', 1, 'updated', 'App\\Models\\Staff', 1, '{\"last_updated_by\":null,\"join_date\":\"2021-09-02 00:00:00\",\"date_of_birth\":\"2001-01-12 00:00:00\"}', '{\"last_updated_by\":1,\"join_date\":\"2021-09-02\",\"date_of_birth\":\"2001-01-12\"}', 'http://localhost:8000/staff/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:24:05', '2021-09-27 10:24:05'),
(10, 'App\\User', 1, 'created', 'App\\Models\\Subject', 1, '[]', '{\"title\":\"English\",\"code\":\"S001\",\"full_mark_theory\":\"100\",\"pass_mark_theory\":\"30\",\"full_mark_practical\":\"100\",\"pass_mark_practical\":\"30\",\"credit_hour\":\"1\",\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"1\",\"description\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 10:25:23', '2021-09-27 10:25:23'),
(11, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 1, '[]', '{\"title\":\"School level\",\"created_by\":1,\"slug\":\"School-level\",\"id\":1}', 'http://localhost:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:09:50', '2021-09-27 11:09:50'),
(12, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 1, '[]', '{\"gradingType_id\":1,\"name\":\"A+\",\"percentage_from\":\"80\",\"percentage_to\":\"95\",\"grade_point\":\"1\",\"description\":\"Excellent\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:09:50', '2021-09-27 11:09:50'),
(13, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 2, '[]', '{\"gradingType_id\":1,\"name\":\"A\",\"percentage_from\":\"75\",\"percentage_to\":\"80\",\"grade_point\":\"2\",\"description\":\"Very Good\",\"created_by\":1,\"id\":2}', 'http://localhost:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:09:50', '2021-09-27 11:09:50'),
(14, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 3, '[]', '{\"gradingType_id\":1,\"name\":\"B\",\"percentage_from\":\"70\",\"percentage_to\":\"75\",\"grade_point\":\"3\",\"description\":\"Good\",\"created_by\":1,\"id\":3}', 'http://localhost:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:09:50', '2021-09-27 11:09:50'),
(15, 'App\\User', 1, 'created', 'App\\Models\\Semester', 1, '[]', '{\"semester\":\"A\",\"gradingType_id\":\"1\",\"staff_id\":\"1\",\"created_by\":1,\"slug\":\"A\",\"id\":1}', 'http://localhost:8000/semester/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:16:26', '2021-09-27 11:16:26'),
(16, 'App\\User', 1, 'created', 'App\\Models\\Semester', 2, '[]', '{\"semester\":\"B\",\"gradingType_id\":\"1\",\"staff_id\":\"1\",\"created_by\":1,\"slug\":\"B\",\"id\":2}', 'http://localhost:8000/semester/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:31:21', '2021-09-27 11:31:21'),
(17, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 1, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost:8000/faculty/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:47:56', '2021-09-27 11:47:56'),
(18, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 2, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://localhost:8000/faculty/2/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:48:11', '2021-09-27 11:48:11'),
(19, 'App\\User', 1, 'created', 'App\\Models\\Student', 1, '[]', '{\"reg_no\":\"A001\",\"reg_date\":\"2021-09-01\",\"university_reg\":\"1001\",\"faculty\":\"2\",\"semester\":\"1\",\"batch\":\"1\",\"academic_status\":\"1\",\"first_name\":\"RAHUL\",\"middle_name\":null,\"last_name\":\"KUMAR\",\"date_of_birth\":\"2016-09-01\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"nationality\":\"INDIAN\",\"national_id_type\":\"1032456987\",\"national_id_number\":null,\"extra_id_card_type\":null,\"extra_id_card_number\":null,\"mother_tongue\":\"HINDI\",\"religion\":\"HINDU\",\"caste\":null,\"email\":\"rahul@gmail.com\",\"extra_info\":null,\"created_by\":1,\"student_image\":\"A001.jpeg\",\"student_signature\":\"\",\"id\":1}', 'http://localhost:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:55:09', '2021-09-27 11:55:09'),
(20, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 1, '[]', '{\"home_phone\":null,\"mobile_1\":\"9845120365\",\"mobile_2\":\"9852365447\",\"address\":\"PATNA\",\"state\":\"BIHAR\",\"country\":\"INDIA\",\"temp_address\":\"PATNA\",\"temp_state\":\"BIHAR\",\"temp_country\":\"INDIA\",\"created_by\":1,\"students_id\":1,\"id\":1}', 'http://localhost:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:55:09', '2021-09-27 11:55:09'),
(21, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 1, '[]', '{\"grandfather_first_name\":\"PANKAJ\",\"grandfather_middle_name\":null,\"grandfather_last_name\":\"KUMAR\",\"father_first_name\":\"RAJESH\",\"father_middle_name\":null,\"father_last_name\":\"KUMAR\",\"father_eligibility\":null,\"father_occupation\":\"FARMER\",\"father_office\":null,\"father_office_number\":null,\"father_residence_number\":null,\"father_mobile_1\":null,\"father_mobile_2\":\"7856321007\",\"father_email\":null,\"mother_first_name\":\"RITA\",\"mother_middle_name\":null,\"mother_last_name\":\"SINGH\",\"mother_eligibility\":null,\"mother_occupation\":null,\"mother_office\":null,\"mother_office_number\":null,\"mother_residence_number\":null,\"mother_mobile_1\":null,\"mother_mobile_2\":null,\"mother_email\":null,\"created_by\":1,\"father_image\":\"\",\"mother_image\":\"\",\"students_id\":1,\"id\":1}', 'http://localhost:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:55:09', '2021-09-27 11:55:09'),
(22, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 1, '[]', '{\"guardian_first_name\":\"RAJESH\",\"guardian_middle_name\":null,\"guardian_last_name\":\"KUMAR\",\"guardian_eligibility\":null,\"guardian_occupation\":\"FARMER\",\"guardian_office\":null,\"guardian_office_number\":null,\"guardian_residence_number\":null,\"guardian_mobile_1\":\"8009654123\",\"guardian_mobile_2\":\"7856321007\",\"guardian_email\":null,\"guardian_relation\":\"FATHER\",\"guardian_address\":\"PATNA\",\"created_by\":1,\"guardian_image\":\"\",\"id\":1}', 'http://localhost:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:55:09', '2021-09-27 11:55:09'),
(23, 'App\\User', 1, 'updated', 'App\\Models\\Student', 1, '{\"reg_no\":\"A001\",\"reg_date\":\"2021-09-01 00:00:00\",\"date_of_birth\":\"2016-09-01 00:00:00\"}', '{\"reg_no\":\"STU1001\",\"reg_date\":\"2021-09-01\",\"date_of_birth\":\"2016-09-01\"}', 'http://localhost:8000/student/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:57:24', '2021-09-27 11:57:24'),
(24, 'App\\User', 1, 'created', 'App\\User', 3, '[]', '{\"role_id\":6,\"hook_id\":1,\"name\":\"RAHUL KUMAR\",\"email\":\"rahul@gmail.com\",\"password\":\"$2y$10$DHwoKixcEZt7N7HoaSFzruovmQ.NGyzmzKYvwYORxyIzQ8krHSuWS\",\"status\":1,\"id\":3}', 'http://localhost:8000/student/bulk-action', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:58:30', '2021-09-27 11:58:30'),
(25, 'App\\User', 1, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$DHwoKixcEZt7N7HoaSFzruovmQ.NGyzmzKYvwYORxyIzQ8krHSuWS\"}', '{\"password\":\"$2y$10$8Bbc\\/7pWva9lcwav8nxuLerUOXz3sjZatkDBcaaSMEXZiaUm5IqcK\"}', 'http://localhost:8000/student/3/user/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:59:00', '2021-09-27 11:59:00'),
(26, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 1, '[]', '{\"fee_head_title\":\"Admission Fee\",\"fee_head_amount\":\"5000\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 11:59:47', '2021-09-27 11:59:47'),
(27, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 2, '[]', '{\"fee_head_title\":\"MONTHLY FEE\",\"fee_head_amount\":\"2000\",\"created_by\":1,\"id\":2}', 'http://localhost:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:00:19', '2021-09-27 12:00:19'),
(28, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 3, '[]', '{\"fee_head_title\":\"DEVELOPMENT FEE\",\"fee_head_amount\":\"1500\",\"created_by\":1,\"id\":3}', 'http://localhost:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:00:36', '2021-09-27 12:00:36'),
(29, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 1, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2021-09-27\",\"fee_amount\":\"3500\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:05:09', '2021-09-27 12:05:09'),
(30, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-08-31\",\"paid_amount\":\"3500\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"online\",\"note\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:08:41', '2021-09-27 12:08:41'),
(31, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 1, '{\"id\":1,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":1,\"date\":\"2021-08-31 00:00:00\",\"paid_amount\":3500,\"discount\":0,\"fine\":0,\"payment_mode\":\"online\",\"note\":null,\"response\":null,\"status\":1}', '[]', 'http://localhost:8000/account/fees/collection/1/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:09:00', '2021-09-27 12:09:00'),
(32, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 2, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-27\",\"paid_amount\":\"3500\",\"discount\":\"120\",\"fine\":\"0\",\"payment_mode\":\"online\",\"note\":null,\"created_by\":1,\"id\":2}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:14:12', '2021-09-27 12:14:12'),
(33, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 2, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2021-09-28\",\"fee_amount\":\"1500\",\"created_by\":1,\"id\":2}', 'http://localhost:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:19:43', '2021-09-27 12:19:43'),
(34, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 3, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2021-09-28\",\"fee_amount\":\"2000\",\"created_by\":1,\"id\":3}', 'http://localhost:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:19:43', '2021-09-27 12:19:43'),
(35, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 3, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"2\",\"date\":\"2021-09-02\",\"paid_amount\":\"1500\",\"discount\":\"150\",\"fine\":\"0\",\"payment_mode\":\"online\",\"note\":null,\"created_by\":1,\"id\":3}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:21:05', '2021-09-27 12:21:05'),
(36, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 4, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"3\",\"date\":\"2021-09-02\",\"paid_amount\":\"2000\",\"discount\":\"500\",\"fine\":\"0\",\"payment_mode\":\"online\",\"note\":null,\"created_by\":1,\"id\":4}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:23:31', '2021-09-27 12:23:31'),
(37, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 4, '{\"id\":4,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":3,\"date\":\"2021-09-02 00:00:00\",\"paid_amount\":2000,\"discount\":500,\"fine\":0,\"payment_mode\":\"online\",\"note\":null,\"response\":null,\"status\":1}', '[]', 'http://localhost:8000/account/fees/collection/4/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:25:18', '2021-09-27 12:25:18'),
(38, 'App\\User', 1, 'deleted', 'App\\Models\\FeeCollection', 3, '{\"id\":3,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"fee_masters_id\":2,\"date\":\"2021-09-02 00:00:00\",\"paid_amount\":1500,\"discount\":150,\"fine\":0,\"payment_mode\":\"online\",\"note\":null,\"response\":null,\"status\":1}', '[]', 'http://localhost:8000/account/fees/collection/3/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:25:57', '2021-09-27 12:25:57'),
(39, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 5, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"2\",\"date\":\"2021-09-08\",\"paid_amount\":\"1500\",\"discount\":\"250\",\"fine\":\"0\",\"payment_mode\":\"Cheque\",\"note\":null,\"created_by\":1,\"id\":5}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:28:42', '2021-09-27 12:28:42'),
(40, 'App\\User', 1, 'deleted', 'App\\Models\\FeeMaster', 2, '{\"id\":2,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"semester\":\"1\",\"fee_head\":\"3\",\"fee_due_date\":\"2021-09-28 00:00:00\",\"fee_amount\":1500,\"status\":1}', '[]', 'http://localhost:8000/account/fees/master/2/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:29:57', '2021-09-27 12:29:57'),
(41, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 6, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"3\",\"date\":\"2021-09-01\",\"paid_amount\":\"2000\",\"discount\":\"200\",\"fine\":\"0\",\"payment_mode\":\"Cheque\",\"note\":null,\"created_by\":1,\"id\":6}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:30:22', '2021-09-27 12:30:22'),
(42, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 7, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-04\",\"paid_amount\":\"3500\",\"discount\":\"10\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":7}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 12:59:32', '2021-09-27 12:59:32'),
(43, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 8, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"3\",\"date\":\"2021-09-01\",\"paid_amount\":\"2000\",\"discount\":\"150\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":8}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-27 13:04:09', '2021-09-27 13:04:09'),
(44, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-27 15:36:55\"}', '{\"last_login_at\":\"2021-09-28 09:36:57\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 04:06:57', '2021-09-28 04:06:57'),
(45, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$P3IcMCS4lHaKb4S15U3MeumbElSNVXm\\/982PvlMzUctjRSVl9b136\"}', '{\"password\":\"$2y$10$s6lCcw07KLU0KTh8YAsmn.RuRlJs9KQmn5uCWvQlR2xx.NaUT8uw6\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 04:06:57', '2021-09-28 04:06:57'),
(46, 'App\\User', 1, 'deleted', 'App\\Models\\FeeMaster', 3, '{\"id\":3,\"created_by\":1,\"last_updated_by\":null,\"students_id\":1,\"semester\":\"1\",\"fee_head\":\"2\",\"fee_due_date\":\"2021-09-28 00:00:00\",\"fee_amount\":2000,\"status\":1}', '[]', 'http://localhost:8000/account/fees/master/3/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 04:09:59', '2021-09-28 04:09:59'),
(47, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 9, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-01\",\"paid_amount\":\"3500\",\"discount\":\"250\",\"fine\":\"0\",\"payment_mode\":\"online\",\"note\":null,\"created_by\":1,\"id\":9}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 04:13:37', '2021-09-28 04:13:37'),
(48, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-01\",\"paid_amount\":\"3500\",\"discount\":\"1000\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 04:29:13', '2021-09-28 04:29:13'),
(49, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-02\",\"paid_amount\":\"3500\",\"discount\":\"1000\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 04:34:13', '2021-09-28 04:34:13'),
(50, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-01\",\"paid_amount\":\"3500\",\"discount\":\"1000\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 04:39:43', '2021-09-28 04:39:43'),
(51, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-28 09:36:57\"}', '{\"last_login_at\":\"2021-09-28 10:37:14\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 05:07:14', '2021-09-28 05:07:14'),
(52, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$s6lCcw07KLU0KTh8YAsmn.RuRlJs9KQmn5uCWvQlR2xx.NaUT8uw6\"}', '{\"password\":\"$2y$10$J7yhbTia8KBE.VMvrtrH6.w5d4Em.fKF..azDQ.kkaChj0RPFbl7K\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 05:07:15', '2021-09-28 05:07:15'),
(53, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-08-31\",\"paid_amount\":\"3500\",\"discount\":\"1000\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 05:35:29', '2021-09-28 05:35:29'),
(54, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-01\",\"paid_amount\":\"3500\",\"discount\":\"500\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 05:41:57', '2021-09-28 05:41:57'),
(55, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-02\",\"paid_amount\":\"3500\",\"discount\":\"1000\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 06:09:39', '2021-09-28 06:09:39'),
(56, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"1\",\"date\":\"2021-09-01\",\"paid_amount\":\"2500\",\"discount\":\"1000\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 06:10:21', '2021-09-28 06:10:21'),
(57, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 4, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2021-09-28\",\"fee_amount\":\"1500\",\"created_by\":1,\"id\":4}', 'http://localhost:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 06:13:09', '2021-09-28 06:13:09'),
(58, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 5, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2021-09-22\",\"fee_amount\":\"2000\",\"created_by\":1,\"id\":5}', 'http://localhost:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 06:13:51', '2021-09-28 06:13:51'),
(59, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 2, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"4\",\"date\":\"2021-09-01\",\"paid_amount\":\"1000\",\"discount\":\"500\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":2}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 06:15:02', '2021-09-28 06:15:02'),
(60, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 3, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"5\",\"date\":\"2021-09-01\",\"paid_amount\":\"2000\",\"discount\":\"0\",\"fine\":\"50\",\"payment_mode\":\"online\",\"note\":null,\"created_by\":1,\"id\":3}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 06:16:22', '2021-09-28 06:16:22'),
(61, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 4, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"5\",\"date\":\"2021-09-03\",\"paid_amount\":\"40\",\"discount\":\"10\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":4}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 06:19:43', '2021-09-28 06:19:43'),
(62, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 4, '[]', '{\"fee_head_title\":\"MISCELLANEOUS FEE\",\"fee_head_amount\":\"2000\",\"created_by\":1,\"id\":4}', 'http://localhost:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 07:59:54', '2021-09-28 07:59:54'),
(63, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 6, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2021-09-01\",\"fee_amount\":\"2000\",\"created_by\":1,\"id\":6}', 'http://localhost:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 08:06:17', '2021-09-28 08:06:17'),
(64, 'App\\User', 1, 'updated', 'App\\Models\\FeeMaster', 4, '{\"last_updated_by\":null,\"fee_due_date\":\"2021-09-28 00:00:00\",\"fee_amount\":1500}', '{\"last_updated_by\":1,\"fee_due_date\":\"2021-09-28\",\"fee_amount\":\"2500\"}', 'http://localhost:8000/account/fees/master/4/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 08:13:45', '2021-09-28 08:13:45'),
(65, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 5, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"4\",\"date\":\"2021-09-16\",\"paid_amount\":\"500\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":5}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 08:14:50', '2021-09-28 08:14:50'),
(66, 'App\\User', 1, 'updated', 'App\\Models\\FeeMaster', 4, '{\"fee_due_date\":\"2021-09-28 00:00:00\",\"fee_amount\":2500}', '{\"fee_due_date\":\"2021-09-28\",\"fee_amount\":\"2000\"}', 'http://localhost:8000/account/fees/master/4/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 08:15:04', '2021-09-28 08:15:04'),
(67, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"institute\":\"Unlimited EduFirm\",\"phone\":null,\"email\":null,\"favicon\":null,\"logo\":null,\"time_zones_id\":null}', '{\"institute\":\"Brajkishore Kindergarten\",\"phone\":\"06152 234 772\",\"email\":\"info@brajkishorekindergarten.co.in\",\"favicon\":\"6749.png\",\"logo\":\"5725.png\",\"time_zones_id\":\"274\"}', 'http://localhost:8000/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 08:28:22', '2021-09-28 08:28:22'),
(68, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 6, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":\"6\",\"date\":\"2021-09-01\",\"paid_amount\":\"2000\",\"discount\":\"0\",\"fine\":\"0\",\"payment_mode\":\"online\",\"note\":null,\"created_by\":1,\"id\":6}', 'http://localhost:8000/account/fees/collection/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-28 10:20:43', '2021-09-28 10:20:43'),
(69, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2021-09-29 09:45:39\",\"last_login_ip\":\"127.0.0.1\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:15:39', '2021-09-29 04:15:39'),
(70, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$8Bbc\\/7pWva9lcwav8nxuLerUOXz3sjZatkDBcaaSMEXZiaUm5IqcK\"}', '{\"password\":\"$2y$10$oWQdHYkMFparyX1w0RJq7uixG.BDCacGE0uLA7D6yQbZDUwdZi6h2\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:15:40', '2021-09-29 04:15:40'),
(71, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-28 10:37:14\"}', '{\"last_login_at\":\"2021-09-29 09:46:11\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:16:11', '2021-09-29 04:16:11'),
(72, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$J7yhbTia8KBE.VMvrtrH6.w5d4Em.fKF..azDQ.kkaChj0RPFbl7K\"}', '{\"password\":\"$2y$10$JSivh5ZmBYY\\/aAkDO2Qiwu8fFmDXawGPiORoQAU8maErWoHPDxGDS\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:16:11', '2021-09-29 04:16:11'),
(73, 'App\\User', 1, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$oWQdHYkMFparyX1w0RJq7uixG.BDCacGE0uLA7D6yQbZDUwdZi6h2\"}', '{\"password\":\"$2y$10$0c02U.Pm8dgAggXB0AekpeU4nDeGUByysySPhv4P1OUssnxWzNmBC\"}', 'http://localhost:8000/student/bulk-action', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:18:52', '2021-09-29 04:18:52'),
(74, 'App\\User', 1, 'created', 'App\\Models\\Student', 2, '[]', '{\"reg_no\":\"STU002\",\"reg_date\":\"2021-09-01\",\"university_reg\":\"1001\",\"faculty\":\"1\",\"semester\":\"1\",\"batch\":\"1\",\"academic_status\":\"1\",\"first_name\":\"PANKAJ\",\"middle_name\":null,\"last_name\":\"KUMAR\",\"date_of_birth\":\"2021-09-10\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"nationality\":\"INDIAN\",\"national_id_type\":\"1032456987\",\"national_id_number\":null,\"extra_id_card_type\":null,\"extra_id_card_number\":null,\"mother_tongue\":null,\"religion\":\"HINDU\",\"caste\":null,\"email\":\"pankaj@gmail.com\",\"extra_info\":null,\"created_by\":1,\"student_image\":\"\",\"student_signature\":\"\",\"id\":2}', 'http://localhost:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:24:58', '2021-09-29 04:24:58'),
(75, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 2, '[]', '{\"home_phone\":\"0621-74589623\",\"mobile_1\":\"8523695410\",\"mobile_2\":\"7541268520\",\"address\":\"PATNA\",\"state\":\"BIHAR\",\"country\":\"INDIA\",\"temp_address\":\"PATNA\",\"temp_state\":\"BIHAR\",\"temp_country\":\"INDIA\",\"created_by\":1,\"students_id\":2,\"id\":2}', 'http://localhost:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:24:58', '2021-09-29 04:24:58'),
(76, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 2, '[]', '{\"grandfather_first_name\":\"TEST\",\"grandfather_middle_name\":null,\"grandfather_last_name\":null,\"father_first_name\":\"SURAV\",\"father_middle_name\":null,\"father_last_name\":\"KUMAR\",\"father_eligibility\":null,\"father_occupation\":null,\"father_office\":null,\"father_office_number\":null,\"father_residence_number\":null,\"father_mobile_1\":null,\"father_mobile_2\":null,\"father_email\":null,\"mother_first_name\":\"TEST\",\"mother_middle_name\":null,\"mother_last_name\":\"DD\",\"mother_eligibility\":null,\"mother_occupation\":null,\"mother_office\":null,\"mother_office_number\":null,\"mother_residence_number\":null,\"mother_mobile_1\":null,\"mother_mobile_2\":null,\"mother_email\":null,\"created_by\":1,\"father_image\":\"\",\"mother_image\":\"\",\"students_id\":2,\"id\":2}', 'http://localhost:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:24:58', '2021-09-29 04:24:58'),
(77, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 2, '[]', '{\"guardian_first_name\":\"FF\",\"guardian_middle_name\":null,\"guardian_last_name\":\"KUMAR\",\"guardian_eligibility\":null,\"guardian_occupation\":null,\"guardian_office\":null,\"guardian_office_number\":null,\"guardian_residence_number\":null,\"guardian_mobile_1\":\"8569123644\",\"guardian_mobile_2\":null,\"guardian_email\":null,\"guardian_relation\":\"FATHER\",\"guardian_address\":\"PATNA\",\"created_by\":1,\"guardian_image\":\"\",\"id\":2}', 'http://localhost:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:24:58', '2021-09-29 04:24:58'),
(78, 'App\\User', 1, 'created', 'App\\User', 4, '[]', '{\"role_id\":6,\"hook_id\":2,\"name\":\"PANKAJ KUMAR\",\"email\":\"pankaj@gmail.com\",\"password\":\"$2y$10$BZB5I\\/zNvGhK4R0tihSTKOKBtukXGf0Eis4Q5IOsawpsdGYFMyYxG\",\"status\":1,\"id\":4}', 'http://localhost:8000/student/bulk-action', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:25:12', '2021-09-29 04:25:12'),
(79, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-29 09:46:11\"}', '{\"last_login_at\":\"2021-09-29 10:04:41\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:34:41', '2021-09-29 04:34:41'),
(80, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$JSivh5ZmBYY\\/aAkDO2Qiwu8fFmDXawGPiORoQAU8maErWoHPDxGDS\"}', '{\"password\":\"$2y$10$dVCm2t2WQyog5FgjM57meuTScCpWg41VBxVEeHSwCFADHGKitMWQG\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:34:41', '2021-09-29 04:34:41'),
(81, 'App\\User', 1, 'updated', 'App\\User', 4, '{\"password\":\"$2y$10$BZB5I\\/zNvGhK4R0tihSTKOKBtukXGf0Eis4Q5IOsawpsdGYFMyYxG\"}', '{\"password\":\"$2y$10$onfW5e9EkFBmoOZzhjCJV.9RWNMmEc2CeLXDZqgKYu.\\/ij9s313mu\"}', 'http://localhost:8000/student/bulk-action', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:35:24', '2021-09-29 04:35:24'),
(82, 'App\\User', 1, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$0c02U.Pm8dgAggXB0AekpeU4nDeGUByysySPhv4P1OUssnxWzNmBC\"}', '{\"password\":\"$2y$10$H.JQS5cQXT6CZuIOoGOk1.WDZ5Qx0C8rha.JQoYQLAjJ75tRQh8uG\"}', 'http://localhost:8000/student/bulk-action', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:35:35', '2021-09-29 04:35:35'),
(83, 'App\\User', 1, 'updated', 'App\\User', 4, '{\"password\":\"$2y$10$onfW5e9EkFBmoOZzhjCJV.9RWNMmEc2CeLXDZqgKYu.\\/ij9s313mu\"}', '{\"password\":\"$2y$10$p17B6B4kQlyMJB4f3k\\/LOumNEnfu.3fcDXx5V\\/JHYAV1N8CN00DXi\"}', 'http://localhost:8000/student/bulk-action', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:35:35', '2021-09-29 04:35:35'),
(84, 'App\\User', 1, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$H.JQS5cQXT6CZuIOoGOk1.WDZ5Qx0C8rha.JQoYQLAjJ75tRQh8uG\"}', '{\"password\":\"$2y$10$p312mKQSah8UyqoHUhz7\\/uCqHqANEPIIi83nfbmwudqmNZonnyn6i\"}', 'http://localhost:8000/student/3/user/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:35:59', '2021-09-29 04:35:59'),
(85, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":\"2021-09-29 09:45:39\"}', '{\"last_login_at\":\"2021-09-29 10:06:16\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:36:16', '2021-09-29 04:36:16'),
(86, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$p312mKQSah8UyqoHUhz7\\/uCqHqANEPIIi83nfbmwudqmNZonnyn6i\"}', '{\"password\":\"$2y$10$uxUPsQPUcLLUkqQY\\/fJ89ui1iT1gDK1CyeAbVc28z7PCxxxJQGYIu\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:36:17', '2021-09-29 04:36:17'),
(87, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":\"2021-09-29 10:06:16\"}', '{\"last_login_at\":\"2021-09-29 10:06:48\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:36:48', '2021-09-29 04:36:48'),
(88, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$uxUPsQPUcLLUkqQY\\/fJ89ui1iT1gDK1CyeAbVc28z7PCxxxJQGYIu\"}', '{\"password\":\"$2y$10$OBk0E7JqClNH1pwDfEz.Xer6ynZ04FRwSlnphH.MUGXeBjsA8wHRe\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:36:49', '2021-09-29 04:36:49'),
(89, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":\"2021-09-29 10:06:48\"}', '{\"last_login_at\":\"2021-09-29 10:07:46\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:37:46', '2021-09-29 04:37:46'),
(90, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$OBk0E7JqClNH1pwDfEz.Xer6ynZ04FRwSlnphH.MUGXeBjsA8wHRe\"}', '{\"password\":\"$2y$10$kiV0lz6H02Rkscohm7BCAeBL5Ta6EtlFUQHX8xPjqi2Yt7HPLntFm\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:37:47', '2021-09-29 04:37:47'),
(91, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":\"2021-09-29 10:07:46\"}', '{\"last_login_at\":\"2021-09-29 10:09:50\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:39:50', '2021-09-29 04:39:50'),
(92, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$kiV0lz6H02Rkscohm7BCAeBL5Ta6EtlFUQHX8xPjqi2Yt7HPLntFm\"}', '{\"password\":\"$2y$10$p9ntN41CdKC.zTgpaCpbvuO6SWXtqJEOaltFwuDqMPXEKeRo7KJNO\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:39:50', '2021-09-29 04:39:50'),
(93, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":\"2021-09-29 10:09:50\"}', '{\"last_login_at\":\"2021-09-29 10:12:44\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:42:44', '2021-09-29 04:42:44'),
(94, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$p9ntN41CdKC.zTgpaCpbvuO6SWXtqJEOaltFwuDqMPXEKeRo7KJNO\"}', '{\"password\":\"$2y$10$mlotCR1NKr2Q\\/h3s0nm1UeSKyzlFHZCq0TYmqASAAq2xnpsRJMfPG\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 04:42:44', '2021-09-29 04:42:44'),
(95, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-29 10:04:41\"}', '{\"last_login_at\":\"2021-09-29 12:45:54\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 07:15:54', '2021-09-29 07:15:54'),
(96, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$dVCm2t2WQyog5FgjM57meuTScCpWg41VBxVEeHSwCFADHGKitMWQG\"}', '{\"password\":\"$2y$10$gVFRjwrsjhGmTfAZfkjgZ.FoIGX\\/3iG8H\\/udJMy8fJOu3wjyeCT8q\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 07:15:55', '2021-09-29 07:15:55'),
(97, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-29 12:45:54\"}', '{\"last_login_at\":\"2021-09-29 17:45:05\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 12:15:06', '2021-09-29 12:15:06'),
(98, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$gVFRjwrsjhGmTfAZfkjgZ.FoIGX\\/3iG8H\\/udJMy8fJOu3wjyeCT8q\"}', '{\"password\":\"$2y$10$cyYJmXTHAwgJAJ6kfKRy5.x.yQ\\/QKbWiTj\\/4M3IWKdsgB5nZs0J8q\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 12:15:06', '2021-09-29 12:15:06'),
(99, 'App\\User', 1, 'created', 'App\\Models\\AttendanceCertificate', 1, '[]', '{\"date_of_issue\":\"2021-09-29T12:15:42.370422Z\",\"year_of_study\":\"2020-21\",\"percentage_of_attendance\":\"80\",\"students_id\":\"1\",\"created_by\":1,\"ref_text\":\"{\\\"date_of_issue\\\":\\\"2021-09-29T12:15:42.370422Z\\\",\\\"year_of_study\\\":\\\"2020-21\\\",\\\"percentage_of_attendance\\\":\\\"80\\\",\\\"students_id\\\":\\\"1\\\",\\\"faculty\\\":\\\"2\\\",\\\"semester\\\":\\\"1\\\",\\\"reg_no\\\":\\\"STU1001\\\",\\\"reg_date\\\":\\\"2021-09-01\\\",\\\"university_reg\\\":\\\"1001\\\",\\\"first_name\\\":\\\"RAHUL\\\",\\\"middle_name\\\":null,\\\"last_name\\\":\\\"KUMAR\\\",\\\"date_of_birth\\\":\\\"2016-09-01\\\",\\\"gender\\\":\\\"MALE\\\",\\\"blood_group\\\":\\\"A+\\\",\\\"nationality\\\":\\\"INDIAN\\\",\\\"religion\\\":\\\"HINDU\\\",\\\"caste\\\":null,\\\"issue_certificate\\\":\\\"Issue\\\",\\\"created_by\\\":1}\",\"id\":1}', 'http://localhost:8000/certificate/attendance/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 12:15:42', '2021-09-29 12:15:42'),
(100, 'App\\User', 1, 'created', 'App\\Models\\CertificateHistory', 1, '[]', '{\"students_id\":\"1\",\"certificate\":\"attendance\",\"certificate_id\":1,\"history_type\":\"Created\",\"ref_text\":\"{\\\"date_of_issue\\\":\\\"2021-09-29T12:15:42.370422Z\\\",\\\"year_of_study\\\":\\\"2020-21\\\",\\\"percentage_of_attendance\\\":\\\"80\\\",\\\"students_id\\\":\\\"1\\\",\\\"faculty\\\":\\\"2\\\",\\\"semester\\\":\\\"1\\\",\\\"reg_no\\\":\\\"STU1001\\\",\\\"reg_date\\\":\\\"2021-09-01\\\",\\\"university_reg\\\":\\\"1001\\\",\\\"first_name\\\":\\\"RAHUL\\\",\\\"middle_name\\\":null,\\\"last_name\\\":\\\"KUMAR\\\",\\\"date_of_birth\\\":\\\"2016-09-01\\\",\\\"gender\\\":\\\"MALE\\\",\\\"blood_group\\\":\\\"A+\\\",\\\"nationality\\\":\\\"INDIAN\\\",\\\"religion\\\":\\\"HINDU\\\",\\\"caste\\\":null,\\\"issue_certificate\\\":\\\"Issue\\\",\\\"created_by\\\":1}\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/certificate/attendance/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-29 12:15:42', '2021-09-29 12:15:42');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(101, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-29 17:45:05\"}', '{\"last_login_at\":\"2021-09-30 09:24:14\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:54:14', '2021-09-30 03:54:14'),
(102, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$cyYJmXTHAwgJAJ6kfKRy5.x.yQ\\/QKbWiTj\\/4M3IWKdsgB5nZs0J8q\"}', '{\"password\":\"$2y$10$IR.uW.NxixvtCn0Fto2mEuL\\/y2lVbCpplzsROHTOonWf4jv8KO802\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:54:14', '2021-09-30 03:54:14'),
(103, 'App\\User', 1, 'created', 'App\\Models\\BookCategory', 1, '[]', '{\"title\":\"English\",\"created_by\":1,\"slug\":\"English\",\"id\":1}', 'http://localhost:8000/library/book/category/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:56:25', '2021-09-30 03:56:25'),
(104, 'App\\User', 1, 'created', 'App\\Models\\BookCategory', 2, '[]', '{\"title\":\"SCIENCE\",\"created_by\":1,\"slug\":\"SCIENCE\",\"id\":2}', 'http://localhost:8000/library/book/category/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:56:32', '2021-09-30 03:56:32'),
(105, 'App\\User', 1, 'created', 'App\\Models\\BookMaster', 1, '[]', '{\"isbn_number\":\"ISBN001\",\"code\":\"L001\",\"title\":\"Test\",\"sub_title\":\"test\",\"categories\":\"2\",\"edition\":null,\"edition_year\":null,\"language\":\"english\",\"publisher\":null,\"publish_year\":null,\"series\":null,\"author\":\"Test\",\"rack_location\":null,\"price\":\"250\",\"total_pages\":\"10\",\"source\":null,\"notes\":null,\"created_by\":1,\"image\":\"\",\"id\":1}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(106, 'App\\User', 1, 'created', 'App\\Models\\Book', 1, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0011\",\"created_by\":1,\"book_status\":\"1\",\"id\":1}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(107, 'App\\User', 1, 'created', 'App\\Models\\Book', 2, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0012\",\"created_by\":1,\"book_status\":\"1\",\"id\":2}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(108, 'App\\User', 1, 'created', 'App\\Models\\Book', 3, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0013\",\"created_by\":1,\"book_status\":\"1\",\"id\":3}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(109, 'App\\User', 1, 'created', 'App\\Models\\Book', 4, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0014\",\"created_by\":1,\"book_status\":\"1\",\"id\":4}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(110, 'App\\User', 1, 'created', 'App\\Models\\Book', 5, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0015\",\"created_by\":1,\"book_status\":\"1\",\"id\":5}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(111, 'App\\User', 1, 'created', 'App\\Models\\Book', 6, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0016\",\"created_by\":1,\"book_status\":\"1\",\"id\":6}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(112, 'App\\User', 1, 'created', 'App\\Models\\Book', 7, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0017\",\"created_by\":1,\"book_status\":\"1\",\"id\":7}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(113, 'App\\User', 1, 'created', 'App\\Models\\Book', 8, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0018\",\"created_by\":1,\"book_status\":\"1\",\"id\":8}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(114, 'App\\User', 1, 'created', 'App\\Models\\Book', 9, '[]', '{\"book_masters_id\":1,\"book_code\":\"L0019\",\"created_by\":1,\"book_status\":\"1\",\"id\":9}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(115, 'App\\User', 1, 'created', 'App\\Models\\Book', 10, '[]', '{\"book_masters_id\":1,\"book_code\":\"L00110\",\"created_by\":1,\"book_status\":\"1\",\"id\":10}', 'http://localhost:8000/library/book/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(116, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-30 09:24:14\"}', '{\"last_login_at\":\"2021-09-30 12:09:50\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 06:39:50', '2021-09-30 06:39:50'),
(117, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$IR.uW.NxixvtCn0Fto2mEuL\\/y2lVbCpplzsROHTOonWf4jv8KO802\"}', '{\"password\":\"$2y$10$KYTxnnCBuWAPp6YphltlT.s\\/ZM0oM\\/YBLEXFOL3uJcGcumJLAJNOq\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 06:39:50', '2021-09-30 06:39:50'),
(118, 'App\\User', 1, 'created', 'App\\Models\\LibraryMember', 1, '[]', '{\"user_type\":\"1\",\"status\":1,\"member_id\":1,\"created_by\":1,\"id\":1}', 'http://localhost:8000/library/member/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 06:41:06', '2021-09-30 06:41:06'),
(119, 'App\\User', 1, 'created', 'App\\Models\\BookIssue', 1, '[]', '{\"created_by\":1,\"member_id\":\"1\",\"book_id\":\"1\",\"issued_on\":\"2021-09-30T07:08:14.878821Z\",\"due_date\":\"2021-10-07T07:08:14.878848Z\",\"id\":1}', 'http://localhost:8000/library/issue', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2021-09-30 07:08:15', '2021-09-30 07:08:15'),
(120, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-09-30 12:09:50\"}', '{\"last_login_at\":\"2021-10-04 09:18:40\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 03:48:40', '2021-10-04 03:48:40'),
(121, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$KYTxnnCBuWAPp6YphltlT.s\\/ZM0oM\\/YBLEXFOL3uJcGcumJLAJNOq\"}', '{\"password\":\"$2y$10$4UUtOd8HrnNzueJ.biHdOuDavbhwiYmadhV5ISxKdDTVB1aAWn.Be\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 03:48:40', '2021-10-04 03:48:40'),
(122, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 5, '[]', '{\"fee_head_title\":\"TUTION FEE\",\"fee_head_amount\":\"1800\",\"created_by\":1,\"id\":5}', 'http://localhost:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 04:16:42', '2021-10-04 04:16:42'),
(123, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 7, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2021-10-04\",\"fee_amount\":\"1800\",\"created_by\":1,\"id\":7}', 'http://localhost:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 04:17:22', '2021-10-04 04:17:22'),
(124, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 8, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2021-04-02\",\"fee_amount\":\"1800\",\"created_by\":1,\"id\":8}', 'http://localhost:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 04:18:30', '2021-10-04 04:18:30'),
(125, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 7, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":7,\"date\":\"2021-10-05\",\"paid_amount\":0,\"fine\":120,\"payment_mode\":\"-\",\"note\":\"Fine\",\"created_by\":1,\"id\":7}', 'http://localhost:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 04:59:55', '2021-10-04 04:59:55'),
(126, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 8, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":7,\"date\":\"2021-10-05\",\"paid_amount\":0,\"discount\":50,\"payment_mode\":\"-\",\"note\":\"Discount\",\"created_by\":1,\"id\":8}', 'http://localhost:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 04:59:55', '2021-10-04 04:59:55'),
(127, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 9, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":7,\"date\":\"2021-10-05\",\"paid_amount\":1800,\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":9}', 'http://localhost:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 04:59:55', '2021-10-04 04:59:55'),
(128, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 10, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":7,\"date\":\"2021-10-05\",\"paid_amount\":70,\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":10}', 'http://localhost:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 05:05:07', '2021-10-04 05:05:07'),
(129, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-10-04 09:18:40\"}', '{\"last_login_at\":\"2021-10-04 12:42:29\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 07:12:30', '2021-10-04 07:12:30'),
(130, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$4UUtOd8HrnNzueJ.biHdOuDavbhwiYmadhV5ISxKdDTVB1aAWn.Be\"}', '{\"password\":\"$2y$10$UmPViiqdid8eduVtnolzaez3yaxl0KEeDLwAQn5QRCN2rESNJWJe6\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 07:12:30', '2021-10-04 07:12:30'),
(131, 'App\\User', 1, 'created', 'App\\Models\\StudentBatch', 2, '[]', '{\"title\":\"2021-22\",\"created_by\":1,\"id\":2}', 'http://localhost:8000/student-batch/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 08:03:34', '2021-10-04 08:03:34'),
(132, 'App\\User', 1, 'updated', 'App\\Models\\Student', 2, '{\"faculty\":1,\"academic_status\":1,\"batch\":1}', '{\"faculty\":\"2\",\"academic_status\":\"4\",\"batch\":\"2\"}', 'http://localhost:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 08:04:38', '2021-10-04 08:04:38'),
(133, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-10-04 12:42:29\"}', '{\"last_login_at\":\"2021-10-04 17:08:09\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 11:38:09', '2021-10-04 11:38:09'),
(134, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$UmPViiqdid8eduVtnolzaez3yaxl0KEeDLwAQn5QRCN2rESNJWJe6\"}', '{\"password\":\"$2y$10$gV0jcI9haoK8k1wsHxVzbOk0Kxr.RLXgAGlpGbFQD5qVfnin064w2\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-04 11:38:09', '2021-10-04 11:38:09'),
(135, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2021-10-04 17:08:09\"}', '{\"last_login_at\":\"2021-10-05 09:26:32\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 03:56:32', '2021-10-05 03:56:32'),
(136, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$gV0jcI9haoK8k1wsHxVzbOk0Kxr.RLXgAGlpGbFQD5qVfnin064w2\"}', '{\"password\":\"$2y$10$n931\\/85Cv7RDrxgmfnMDLOIerqn2fULQZc3KD\\/78nJqcZ6mXeaYaC\"}', 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 03:56:32', '2021-10-05 03:56:32'),
(137, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 3, '[]', '{\"faculty\":\"THREE\",\"faculty_code\":\"C003\",\"sorting\":\"3\",\"created_by\":1,\"id\":3}', 'http://localhost:8000/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 03:57:15', '2021-10-05 03:57:15'),
(138, 'App\\User', 1, 'updated', 'App\\Models\\Student', 2, '{\"faculty\":2,\"academic_status\":4}', '{\"faculty\":\"3\",\"academic_status\":\"3\"}', 'http://localhost:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 03:59:12', '2021-10-05 03:59:12'),
(139, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 11, '[]', '{\"students_id\":\"2\",\"fee_masters_id\":8,\"date\":\"2021-10-07\",\"paid_amount\":1800,\"payment_mode\":\"Cash\",\"note\":null,\"created_by\":1,\"id\":11}', 'http://localhost:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 04:03:28', '2021-10-05 04:03:28'),
(140, 'App\\User', 1, 'created', 'App\\Models\\PayrollHead', 1, '[]', '{\"title\":\"Monthly Salary\",\"created_by\":1,\"slug\":\"Monthly-Salary\",\"id\":1}', 'http://localhost:8000/account/payroll/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 04:45:33', '2021-10-05 04:45:33'),
(141, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 1, '[]', '{\"staff_id\":1,\"tag_line\":\"September Salary\",\"payroll_head\":\"1\",\"due_date\":\"2021-10-02\",\"amount\":\"15000\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/payroll/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 04:46:17', '2021-10-05 04:46:17'),
(142, 'App\\User', 1, 'created', 'App\\Models\\SalaryPay', 1, '[]', '{\"staff_id\":\"1\",\"salary_masters_id\":\"1\",\"date\":\"2021-10-16\",\"paid_amount\":\"15000\",\"allowance\":\"0\",\"fine\":\"0\",\"payment_mode\":\"Cheque\",\"created_by\":1,\"id\":1}', 'http://localhost:8000/account/salary/payment/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 04:46:38', '2021-10-05 04:46:38'),
(143, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 2, '[]', '{\"staff_id\":1,\"tag_line\":\"August Salary\",\"payroll_head\":\"1\",\"due_date\":\"2021-08-31\",\"amount\":\"15000\",\"created_by\":1,\"id\":2}', 'http://localhost:8000/account/payroll/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 04:51:31', '2021-10-05 04:51:31'),
(144, 'App\\User', 1, 'created', 'App\\Models\\SalaryPay', 2, '[]', '{\"staff_id\":\"1\",\"salary_masters_id\":\"2\",\"date\":\"2021-09-03\",\"paid_amount\":\"15000\",\"allowance\":\"0\",\"fine\":\"0\",\"payment_mode\":\"Cheque\",\"created_by\":1,\"id\":2}', 'http://localhost:8000/account/salary/payment/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 04:54:15', '2021-10-05 04:54:15'),
(145, 'App\\User', 1, 'created', 'App\\Models\\PayrollMaster', 3, '[]', '{\"staff_id\":1,\"tag_line\":\"October Salary\",\"payroll_head\":\"1\",\"due_date\":\"2021-10-02\",\"amount\":\"18000\",\"created_by\":1,\"id\":3}', 'http://localhost:8000/account/payroll/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, '2021-10-05 06:51:45', '2021-10-05 06:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transactions`
--

CREATE TABLE `bank_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `banks_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `dr_amt` int(11) NOT NULL DEFAULT 0,
  `cr_amt` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED NOT NULL,
  `bed_number` int(11) NOT NULL,
  `bed_status` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bed_statuses`
--

CREATE TABLE `bed_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_statuses`
--

INSERT INTO `bed_statuses` (`id`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Available', 'btn-success', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'Occupied', 'btn-primary', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, 'Damage', 'btn-danger', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, 'UnderConstruction', 'btn-default', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(5, 1, NULL, 'UnderMaintinance', 'btn-default', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(6, 1, NULL, 'NeedMaintinance', 'btn-default', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `bonafide_certificates`
--

CREATE TABLE `bonafide_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `book_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_status` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_by`, `last_updated_by`, `book_masters_id`, `book_code`, `book_status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'L0011', 2, '2021-09-30 03:57:55', '2021-09-30 07:08:15'),
(2, 1, NULL, 1, 'L0012', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(3, 1, NULL, 1, 'L0013', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(4, 1, NULL, 1, 'L0014', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(5, 1, NULL, 1, 'L0015', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(6, 1, NULL, 1, 'L0016', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(7, 1, NULL, 1, 'L0017', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(8, 1, NULL, 1, 'L0018', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(9, 1, NULL, 1, 'L0019', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55'),
(10, 1, NULL, 1, 'L00110', 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `created_by`, `last_updated_by`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'English', 'English', 1, '2021-09-30 03:56:25', '2021-09-30 03:56:25'),
(2, 1, NULL, 'SCIENCE', 'SCIENCE', 1, '2021-09-30 03:56:32', '2021-09-30 03:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `issued_on` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `created_by`, `last_updated_by`, `member_id`, `book_id`, `issued_on`, `due_date`, `return_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, '2021-09-30 12:38:14', '2021-10-07 12:38:14', NULL, 1, '2021-09-30 07:08:14', '2021-09-30 07:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `book_masters`
--

CREATE TABLE `book_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `categories` int(10) UNSIGNED DEFAULT NULL,
  `isbn_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pages` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_masters`
--

INSERT INTO `book_masters` (`id`, `created_by`, `last_updated_by`, `categories`, `isbn_number`, `code`, `title`, `sub_title`, `image`, `language`, `editor`, `edition`, `edition_year`, `publisher`, `publish_year`, `series`, `author`, `rack_location`, `price`, `total_pages`, `source`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 2, 'ISBN001', 'L001', 'Test', 'test', '', 'english', NULL, NULL, NULL, NULL, NULL, NULL, 'Test', NULL, '250', '10', NULL, NULL, 1, '2021-09-30 03:57:55', '2021-09-30 03:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_statuses`
--

CREATE TABLE `book_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_statuses`
--

INSERT INTO `book_statuses` (`id`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Available', 'btn-success', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'Issued', 'btn-primary', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, 'Damage', 'btn-danger', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, 'Lost', 'btn-default', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_histories`
--

CREATE TABLE `certificate_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `certificate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_histories`
--

INSERT INTO `certificate_histories` (`id`, `created_by`, `last_updated_by`, `students_id`, `certificate`, `certificate_id`, `history_type`, `ref_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'attendance', 1, 'Created', '{\"date_of_issue\":\"2021-09-29T12:15:42.370422Z\",\"year_of_study\":\"2020-21\",\"percentage_of_attendance\":\"80\",\"students_id\":\"1\",\"faculty\":\"2\",\"semester\":\"1\",\"reg_no\":\"STU1001\",\"reg_date\":\"2021-09-01\",\"university_reg\":\"1001\",\"first_name\":\"RAHUL\",\"middle_name\":null,\"last_name\":\"KUMAR\",\"date_of_birth\":\"2016-09-01\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"nationality\":\"INDIAN\",\"religion\":\"HINDU\",\"caste\":null,\"issue_certificate\":\"Issue\",\"created_by\":1}', 1, '2021-09-29 12:15:42', '2021-09-29 12:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_templates`
--

CREATE TABLE `certificate_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_photo` tinyint(1) NOT NULL DEFAULT 1,
  `background_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_templates`
--

INSERT INTO `certificate_templates` (`id`, `created_by`, `last_updated_by`, `certificate`, `template`, `background_image`, `custom_css`, `student_photo`, `background_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'ATTENDANCE', '<table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: right; \">Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: right; \">Reg. No.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: right; \">University Reg. No.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{university_reg}}</span><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: right; \">Faculty/Level&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{faculty}}</span><br></td> </tr><tr><td>05.</td><td style=\"text-align: right; \">Batch :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{batch}}</span><br></td></tr> <tr> <td>06.</td> <td style=\"text-align: right; \">Year of Study&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{year_of_study}}</span><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: right; \">Percentage of Attendance Secured&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{percentage_of_attendance}}%</b><br></td> </tr> </tbody></table>', NULL, '.subpage{padding: 100px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'TRANSFER_1', '<table class=\"table table-bordered\"> <tbody> <tr> <td style=\"text-align: right;\"><span style=\"text-align: right;\">TC No. :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{tc_num}}</span><br></td> <td rowspan=\"5\">{{student_image}}</td> </tr> <tr> <td style=\"text-align: right; \"><span style=\"text-align: right;\">Faculty/Level :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{faculty}}</span><br></td> </tr> <tr> <td style=\"text-align: right; \"><span style=\"text-align: right;\">Admission No./Reg.No. :</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td style=\"text-align: right;\"><span style=\"text-align: right;\">University Reg. No. :</span><br></td> <td style=\"text-align: left;\"><b>{{university_reg}}</b><br></td> </tr><tr><td style=\"text-align: right;\">Batch. :<br></td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{batch}}</span><br></td></tr> </tbody></table><table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: right; \">Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: right; \">Name of Father.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{parents_name}}</b><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: right; \">Date of Birth :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_birth}}</span><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: right; \">Gender :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{gender}}</span><br></td> </tr> <tr> <td>05.</td> <td style=\"text-align: right; \">Nationality :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td> </tr> <tr> <td>06.</td> <td style=\"text-align: right; \">Religion :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{religion}}</b><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: right; \">Community &amp; Caste :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td> </tr> <tr> <td>08.</td> <td style=\"text-align: right; \">Date of Admission :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}</span><br></td> </tr> <tr> <td>09.</td> <td style=\"text-align: right; \">Date of Leaving :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{date_of_leaving}}</b><br></td> </tr> <tr> <td>10.</td> <td style=\"text-align: right;\">Class studied at the time of leaving :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td> </tr> <tr> <td>11.</td> <td style=\"text-align: right; \">Whether qualified for promotion to higher class :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{qualified_to_promote}}</b><br></td> </tr> <tr> <td>12.</td> <td style=\"text-align: right; \">Whether the student has paid all Balance fees to the college :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{paid_fee_status}}</b><br></td> </tr> <tr> <td>13.</td> <td style=\"text-align: right; \">Conduct and Character :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{character}}</span><br></td> </tr> </tbody></table>', NULL, '.subpage{padding: 10px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, 'TRANSFER_2', '<p></p><table class=\"table table-bordered\"><tbody><tr><td><span style=\"text-align: right;\">TC No. :&nbsp;</span><b>{{tc_num}}</b><br></td><td><span style=\"text-align: right;\">बिद्यालय सं. / School No :&nbsp;</span><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td><td>Affiliation No. :&nbsp;<span style=\"font-weight: 700;\">{{university_reg}}</span><br></td><td><span style=\"text-align: right;\">Renewed upto. :&nbsp;</span><br></td><td><span style=\"text-align: right;\">प्रवेश सं./Admission No. :&nbsp;</span><br></td></tr></tbody></table><table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: left;\">विद्यार्थीका नाम / Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: left; \" class=\"field_title\">माताका नाम / Mother\'s Name :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{mother_name}}</b><br></td> </tr><tr><td>03.</td><td style=\"text-align: left; \" class=\"field_title\">पिताका नाम /Name of Father\'s / Guardian\'s Name :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{father_name}}</span><br></td></tr> <tr><td>04.</td><td style=\"text-align: left; \" class=\"field_title\">Date of birth(in Christain Era) according to Admission &amp; Withdrawal Register :<br></td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"background-color: transparent;\">In figures:&nbsp;</span><span style=\"font-weight: 700;\">{{date_of_birth}}</span></p><p><span style=\"background-color: transparent;\">In words:</span></p><p><span style=\"font-weight: 700;\">{{date_of_birth_in_word}}</span></p></td></tr><tr><td>05.</td><td style=\"text-align: left; \" class=\"field_title\">&nbsp;Proof for Date of Birth submitted at the time of admission :</td><td width=\"50%\" style=\"text-align: left;\"><b>{{dob_certificate}}</b></td></tr><tr><td>06.</td><td style=\"text-align: left; \" class=\"field_title\">राष्ट्रियता / Nationality :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td></tr><tr><td>07.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या अनु.जाति/ज.जा./पिछडा वर्गसे सम्बन्धित है</p><p>Whether the candidate belongs to Scheduled Caste or Schedule Tribe, or OBC:</p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td></tr><tr><td>08.</td><td style=\"text-align: left; \" class=\"field_title\">Date of the first admission in the School with the class :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}&nbsp; &nbsp; &nbsp;</span>Class Joined :<span style=\"font-weight: 700;\">&nbsp;&nbsp;</span><span style=\"font-weight: 700;\">{{join_time_class}}</span><br></td></tr><tr><td>09.</td><td style=\"text-align: left; \" class=\"field_title\"><p>पिछली कक्षा जिसमे विद्यार्थी अध्ययनरत था (अंकों में)</p><p>Class in which the pupil last studied (in words):</p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{leaving_time_class}}</span><br></td></tr><tr><td>10.</td><td style=\"text-align: left; \" class=\"field_title\"><p><span style=\"background-color: transparent;\">पिछले विद्यालय / वोर्ड परीक्षा एवं परिमाण / School/Board Annual Examination last taken with the result:&nbsp;</span><br></p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{last_taken_exam_with_result}}</span><br></td></tr><tr><td>11.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थीका परीक्षा परिणाम अनुत्तीर्ण है ? / Whether failed, if so once/twice in the same class :</td><td width=\"50%\" style=\"text-align: left;\"><b>{{exam_fail_status}}</b></td></tr><tr><td>12.</td><td style=\"text-align: left; \" class=\"field_title\">प्रस्तावित विषय / Subjects Studied:&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{subject_studies}}</span><br></td></tr><tr><td>13.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या उच्च कक्षा में पदोन्‍नतका अधिकारी है / Whether qualified for promotion to the next higher class :</p><p>If so, to which class:</p></td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"font-weight: 700;\">{{qualified_to_promote}}</span></p><p><b>{{promoted_class}}</b><br></p></td></tr><tr><td>14.</td><td style=\"text-align: left; \" class=\"field_title\">विद्यालय दिवसों की कुल संख्या / Total No. of working days in the academic session :</td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"font-weight: 700;\">{{school_college_open_total}}</span><br></p></td></tr><tr><td>15.</td><td style=\"text-align: left; \" class=\"field_title\">अन्तिम तिथि तक उपस्थितियों की कुल संख्या / Total No. of presence in the academic session :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{total_attendance}}</span><br></td></tr><tr><td>16.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या विद्यार्थी ने विद्यालय की सभी देय राशि का भुगतान कर दिया है /&nbsp;&nbsp;<span style=\"background-color: transparent;\">Month up to which the people has paid school dues :</span></p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{paid_fee_status}}</span><br></td></tr><tr><td>17.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थी को कोई शुल्क रियायत प्रदान की गई थी, यदि हाँऽ तो उसकी प्रकृतीः / Any Fee concession availed of, if so, the nature of such concession :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{fee_concession_detail}}</span><br></td></tr><tr><td>18.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थी&nbsp; एन.सी.सी. कैडेट/ स्काउट है? विवरण देः / Whether the pupil is NCC cadet / Boy scout / Girl Guide (give details):<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{cadet_detail}}</span><br></td></tr><tr><td>19.</td><td style=\"text-align: left; \" class=\"field_title\"><p>Whether the school is under Govt/Minority/Independent Category :<br></p></td><td width=\"50%\" style=\"text-align: left;\"><b>{{school_category}}</b></td></tr><tr><td>20.</td><td style=\"text-align: left; \" class=\"field_title\">Games Played on extracurricular activities in which the pupil usually took part (mention achievement level therein)<br></td><td width=\"50%\" style=\"text-align: left;\"><b>{{extra_activity_detail}}</b></td></tr><tr><td>21.</td><td style=\"text-align: left; \" class=\"field_title\"><p>Date of application for certificate :</p></td><td width=\"50%\" style=\"text-align: left;\"><b>{{application_date}}</b><br></td></tr><tr><td>22.</td><td style=\"text-align: left; \" class=\"field_title\">विद्यालय विद्यार्थीके नाम काटनेकी तिथि / Date on which pupils name was struck off the rolls of the Vidyalaya :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_leaving}}</span><br></td></tr><tr><td>23.</td><td style=\"text-align: left; \" class=\"field_title\">प्रमाण-पत्र जारी करने की तिथी / Date of issue of certificate :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td></tr><tr><td>24.</td><td style=\"text-align: left; \" class=\"field_title\">कोइ अन्य टिप्पणी / Any other remarks :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{any_other_remark}}</span><br></td></tr>    </tbody></table><br><table class=\"table table-bordered\" style=\"text-align: center; \"><tbody><tr><td><p><br></p><p>_______________________</p><p><b>तैयारकर्ता / Prepared By</b></p></td><td><p><br></p><p>_______________________<br></p><p><b>जाँचकर्ता / Checked By</b></p></td><td><p><br></p><p><span style=\"background-color: transparent;\">_______________________</span><br></p><p><b>ह. प्रधानाचार्य / कार्यालय मोहर</b></p><p><b>Sign of Principal with Official Seal</b></p></td></tr></tbody></table><p style=\"text-align: center; \"><br></p>', NULL, '.subpage{padding: 0px;}.field_title{width:65%;}p{margin: 0 0 0px;}tr{font-size: 10px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, 'TRANSFER_3', '<table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td><span style=\"text-align: right;\">TC No. :</span><br></td> <td style=\"text-align: left;\"><span style=\"text-align: right;\">&nbsp;</span><span style=\"font-weight: 700;\">{{tc_num}}</span><br></td> <td><span style=\"text-align: right;\">Admission No./Reg.No. :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td>&nbsp;{{national_id_type}}<span style=\"background-color: transparent;\">&nbsp;:</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700; background-color: transparent;\">{{national_id_number}}</span><br></td> <td>&nbsp;{{extra_id_card_type}}<span style=\"background-color: transparent; text-align: right;\">&nbsp;:</span><br></td> <td style=\"text-align: left;\"> <span style=\"background-color: transparent; text-align: right;\">&nbsp;</span><span style=\"font-weight: 700;\"><span style=\"background-color: transparent;\">{{extra_id_card_number}}</span><br> </span></td> </tr> </tbody></table><table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: left;\">Name of Pupil :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: left;\" class=\"field_title\">Father\'s / Guardian\'s Name :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{guardian_name}}</b><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: left;\" class=\"field_title\">Mother\'s Name :<br></td> <td width=\"50%\" style=\"text-align: left;\"><b>{{father_name}}</b><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: left;\" class=\"field_title\">Place of Birth :</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{birth_place}}</b><br></td> </tr> <tr> <td>05.</td> <td style=\"text-align: left;\" class=\"field_title\">Nationality :&nbsp;<br></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td> </tr> <tr> <td>06.</td> <td style=\"text-align: left;\" class=\"field_title\">Caste / Category</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of the first admission in the School with the class</p></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}</span><br></td> </tr> <tr> <td>08.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of birth(in Christain Era) according to Admission Register:</p></td> <td width=\"50%\" style=\"text-align: left;\"> <p><span style=\"background-color: transparent;\">In figures:&nbsp;</span><span style=\"font-weight: 700;\">{{date_of_birth}}</span></p> <p><span style=\"background-color: transparent;\">In words:</span></p> <p><b>{{date_of_birth_in_word}}</b><br></p> </td> </tr> <tr> <td>09.</td> <td style=\"text-align: left;\" class=\"field_title\">Class in which the pupil last studied/studying:</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td> </tr> <tr> <td>10.</td> <td style=\"text-align: left;\" class=\"field_title\">School/Board Annual Examination last taken with the result:&nbsp;<br></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{last_taken_exam_with_result}}</span><br></td> </tr> <tr> <td>11.</td> <td style=\"text-align: left;\" class=\"field_title\">Promoted Class :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{promoted_class}}</span><br></td> </tr> <tr> <td>12.</td> <td style=\"text-align: left;\" class=\"field_title\">General Conduct :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{character}}</span><br></td> </tr> <tr> <td>13.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of application for Transfer certificate :</p></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td> </tr> <tr> <td>14.</td> <td style=\"text-align: left;\" class=\"field_title\">Date of issue of Transfer certificate :</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td> </tr> <tr> <td>15.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Reason for leaving the school:</p></td> <td width=\"50%\" style=\"text-align: left;\"><b>{{qualified_to_promote}}</b><br></td> </tr> <tr> <td>16.</td> <td style=\"text-align: left;\" class=\"field_title\">Any other remarks:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{any_other_remark}}</b><br></td> </tr> </tbody></table><p></p><p></p><p style=\"text-align: right;\"><br></p><table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td> <p><br></p> <p style=\"text-align: center; \"><br></p> <p style=\"text-align: center; \">_______________________</p> <p style=\"text-align: center; \"><b>&nbsp;Prepared By</b></p> </td> <td> <p><br></p> <p style=\"text-align: center; \"><br></p> <p style=\"text-align: center; \">_______________________<br></p> <p style=\"text-align: center; \"><b>Checked By</b></p> </td> <td> <p><br></p> <p><br></p> <p style=\"text-align: center; \">_______________________<br></p> <p style=\"text-align: center; \"><b style=\"background-color: transparent;\">Sign of Principal with Official Seal</b><br></p> </td> </tr> </tbody></table><p style=\"text-align: right;\"><br></p>', NULL, '.subpage{padding: 0px;}.field_title{width:60%;}p{margin: 0 0 0px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(5, 1, NULL, 'NIRGAMUTARA_1', '<table class=\"table table-bordered\"> <tbody> <tr> <td style=\"text-align: left;\">01.</td><td style=\"text-align: left;\"> Admission No </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{reg_no}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">02.</td><td style=\"text-align: left;\"> Student Full Name </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{student_name}}</b>&nbsp;</span><br></td> </tr> <tr> <td style=\"text-align: left;\">03.</td><td style=\"text-align: left;\"> Parent Full Name </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{parents_name}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">04.</td><td style=\"text-align: left;\"> Cast </td> <td style=\"text-align: left;\"><b>{{caste}}</b></td> </tr> <tr> <td style=\"text-align: left;\">05.</td><td style=\"text-align: left;\"> Parent Bussiness </td> <td style=\"text-align: left;\"><b><span style=\"color: rgb(57, 57, 57);\">{{father_occupation}} /&nbsp;</span>{{mother_occupation}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">06.</td><td style=\"text-align: left;\"> Mother Tongue </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{mother_tongue}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">07.</td><td style=\"text-align: left;\"> Admission Date </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{reg_date}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">08.</td><td style=\"text-align: left;\"> Birth Date in number </td> <td style=\"text-align: left;\"><b>{{date_of_birth}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">09.</td><td style=\"text-align: left;\"> Birth Date in word </td> <td style=\"text-align: left;\"><b>{{date_of_birth_in_word}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">10.</td><td style=\"text-align: left;\"> Class while admission </td> <td style=\"text-align: left;\"><b>{{join_time_class}}</b></td> </tr><tr><td style=\"text-align: left;\">11.</td><td style=\"text-align: left;\">Previous School Name</td><td style=\"text-align: left;\"><b>{{previous_school_name}}</b></td></tr><tr><td style=\"text-align: left;\">12.</td><td style=\"text-align: left;\">Standard</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">13.</td><td style=\"text-align: left;\">Sign of Authority</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">14.</td><td style=\"text-align: left;\">The class while leaving school</td><td style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td></tr><tr><td style=\"text-align: left;\">15.</td><td style=\"text-align: left;\">Leaving Date</td><td style=\"text-align: left;\"><b>{{date_of_leaving}}</b></td></tr><tr><td style=\"text-align: left;\">16.</td><td style=\"text-align: left;\">Reason for leaving School</td><td style=\"text-align: left;\"><b>{{reason_to_leave}}</b></td></tr><tr><td style=\"text-align: left;\">17</td><td style=\"text-align: left;\">Mention 2 Body Mark</td><td style=\"text-align: left;\"><b>{{mention_body_mark}}</b></td></tr><tr><td style=\"text-align: left;\">18.</td><td style=\"text-align: left;\">Sign of Authority while leaving school</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">19.</td><td style=\"text-align: left;\">Head Master\'s Sign</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">20.</td><td style=\"text-align: left;\">Description</td><td style=\"text-align: left;\"><b>{{any_other_remark}}</b></td></tr> </tbody></table><p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p>Date:</p></td><td>Place:<br></td><td style=\"text-align: center; \"><p><br></p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>______________________</p><p>Seal</p></td><td style=\"text-align: center; \"><p><br></p><p><br></p><p>______________________</p><p>Headmaster\'s Sign</p></td></tr></tbody></table><p><br></p><p><br></p>', NULL, '.subpage{padding: 0px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(6, 1, NULL, 'NIRGAMUTARA_2', '<table class=\"table table-bordered\"><tbody><tr><td>शालेचे नांवः</td><td><br></td><td>रजिस्टर नं.</td><td><br></td></tr></tbody></table><p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: left;\">१</td><td style=\"text-align: left;\">प्रवेश अनुक्रमांक&nbsp;&nbsp;</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{reg_no}}</span><br></td></tr><tr><td style=\"text-align: left;\">२</td><td style=\"text-align: left;\">विद्यार्थ्याचे संपूर्ण नांव अडनांवासह</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{student_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">३</td><td style=\"text-align: left;\">आई / वडिलांचे नांव / वडील ह्यात नसल्यास पालकाये नांव</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{parents_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">४</td><td style=\"text-align: left;\">जात</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td></tr><tr><td style=\"text-align: left;\">५</td><td style=\"text-align: left;\">वडिल पालकाचा व्यवसाय</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(57, 57, 57);\">{{father_occupation}} /&nbsp;</span>{{mother_occupation}}</span><br></td></tr><tr><td style=\"text-align: left;\">६</td><td style=\"text-align: left;\">मातृभाषा</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{mother_tongue}}</span><br></td></tr><tr><td style=\"text-align: left;\">७</td><td style=\"text-align: left;\">प्रवेश दिनांक</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{reg_date}}</span><br></td></tr><tr><td style=\"text-align: left;\">८</td><td style=\"text-align: left;\">जन्म दिनांक</td><td><p style=\"text-align: left;\">अंकातः&nbsp;<span style=\"font-weight: 700; background-color: transparent;\">{{date_of_birth}}</span></p><p style=\"text-align: left;\">अक्षरातः&nbsp;<span style=\"font-weight: 700; background-color: transparent;\">{{date_of_birth_in_word}}</span></p></td></tr><tr><td style=\"text-align: left;\">९</td><td style=\"text-align: left;\">प्रवेश समयीचा वर्ग</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{join_time_class}}</span><br></td></tr><tr><td style=\"text-align: left;\">१०</td><td style=\"text-align: left;\">पुर्वीध्या शालेचे नांव</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{previous_school_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">११</td><td style=\"text-align: left;\">इयत्ता</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१२</td><td style=\"text-align: left;\">प्रवेश देणार्‍या अधिकार्‍यांची सही</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१३</td><td style=\"text-align: left;\">निर्गम समयी वर्ग</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{leaving_time_class}}</span><br></td></tr><tr><td style=\"text-align: left;\">१४</td><td style=\"text-align: left;\">निर्गम दिनांक</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_leaving}}</span><br></td></tr><tr><td style=\"text-align: left;\">१५</td><td style=\"text-align: left;\">शाला सोडण्याचे कारण</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reason_to_leave}}</span><br></td></tr><tr><td style=\"text-align: left;\">१६</td><td style=\"text-align: left;\">परिचय चिन्‍ह विद्यार्थ्याचे थोडक्यात दोन चिन्ह नाँदवावे</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{mention_body_mark}}</span><br></td></tr><tr><td style=\"text-align: left;\">१७</td><td style=\"text-align: left;\">निर्गम समयी निर्गमाची नोंद घेणार्‍या अधिकारर्‍याची सही</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१८</td><td style=\"text-align: left;\">मुख्‍याध्यापकाची स्वाक्षरी</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१९</td><td style=\"text-align: left;\">विवरण</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{any_other_remark}}</span><br></td></tr></tbody></table><p><br></p><p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: left;\"><p>दिनांकः</p><p>स्थलः&nbsp;</p></td><td style=\"text-align: center; \">शालेचा शिका</td><td style=\"text-align: center; \">मुख्‍याध्यापकाची स्वाक्षरी</td></tr></tbody></table><p><br></p><p><br></p><p><br></p>', NULL, '.subpage{padding: 0px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(7, 1, NULL, 'CHARACTER', '<p>This is to certify that&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{student_name}}</b></span>&nbsp;Son of&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{father_name}}</b> </span>&amp;&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{mother_name}}</b></span>, Permanent Address<b>&nbsp;<span style=\"color: rgb(57, 57, 57);\">{{address}}</span></b>, is known to me for about&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{year}}</b></span>&nbsp;years. He is a citizen of&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{country}}</b>&nbsp;</span>by birth.</p><p><br></p><p>To the best of my knowledge, he bears a <b>{{character}}</b> character and is not involved in such activities which are against the state freedom and peace. I wish all success and prosperity in his life.</p>', NULL, '.subpage{padding: 100px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(8, 1, NULL, 'BONAFIDE', 'This is to certify that <b>{{student_name}} </b>Reg No. <b>{{reg_no}}</b>   Son of <b>{{parents_name}}</b> is a bonafide student of this College in the <b>{{course}}</b> course during the period <b>{{period}}</b>. His/Her Date of Birth as per our School/College record is <b>{{date_of_birth}}</b>.His/Her Conduct and Character are <b>{{character}}</b>.', NULL, '.subpage{padding: 100px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(9, 1, NULL, 'COURSE COMPLETION', '<p>This is to certify that <b>{{student_name}}</b> Reg No. <b>{{reg_no}}</b>&nbsp; Son of <b>{{parents_name}} </b>has studied <b>{{course}}</b> in our college during the <b>{{period}}</b>. His/Her Date of Birth as per our School/College record is <b>{{date_of_birth}}</b>.His/Her Conduct and Character are <b>{{character}}</b> during the tenure of his studies.<br></p>', NULL, '.subpage{padding: 100px;}', 0, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(10, 1, NULL, 'GENERAL TEMPLATE', '<p style=\"text-align: center; \">REG.NO.:<b>{{reg_no}}</b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;REG.DATE: <b>{{reg_date}}</b></p><p style=\"text-align: center; \"><b><br></b></p><p style=\"text-align: center; \">This is to certify that <b>{{student_name}}</b> son/daughter of <b>{{parents_name}}</b> Residing at <b>{{address}}</b> is bonafide Student of our school.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \">He/She is /was very obedient, sincere and hardworking.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \">He/She bears a good moral character. His/Her Date of Birth is <b>{{date_of_birth}}</b> and Place of Birth is <b>{{address}}</b>.<br></p>', NULL, '.subpage{padding: 100px;}', 1, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(11, 1, NULL, 'IDENTITY CARD', '<h5 style=\"text-align: center;\"><b>{{student_name}}</b></h5><h6 style=\"text-align: center; \"><b>{{faculty}}-</b><b>{{semester}}</b></h6><p></p><p><b>PARENT : {{parents_name}}</b></p><p></p><p><b>ADDRESS : {{address}}</b></p><p><b>CONTACT : {{guardian_mobile_1}}</b></p><p><b>VALID DATE : JAN 2019-  FEB 2020</b></p><p></p>', NULL, '.subpage{padding:83px 5px 5px;color:#000!important}.page-content{padding:8px 20px 24px}h5{font-size:14px;margin:2px auto}h6{font-size:12px;margin:2px auto}.student_image{border-radius:0;width:100px;height:auto;border:2px #438eb9 solid}p{margin:1px 0 0;font-size:10px;text-align:left!important}', 1, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `character_certificates`
--

CREATE TABLE `character_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `cc_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_directory_details`
--

CREATE TABLE `contact_directory_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `contact_directory_groups_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_directory_groups`
--

CREATE TABLE `contact_directory_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_mesages`
--

CREATE TABLE `contact_mesages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_completion_certificates`
--

CREATE TABLE `course_completion_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_status` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_statuses`
--

CREATE TABLE `customer_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_statuses`
--

INSERT INTO `customer_statuses` (`id`, `created_by`, `last_updated_by`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'New Customer', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, 1, 'Annual Contract', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, 1, 'Office Contract', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, 1, 'Individual', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(5, 1, 1, 'inquiry/Lead', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `created_by`, `last_updated_by`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Sunday', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'Monday', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, 'Tuesday', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, 'Wednesday', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(5, 1, NULL, 'Thursday', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(6, 1, NULL, 'Friday', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(7, 1, NULL, 'Saturday', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eating_times`
--

CREATE TABLE `eating_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `driver` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_mark_ledgers`
--

CREATE TABLE `exam_mark_ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `exam_schedule_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `obtain_mark_theory` int(11) NOT NULL DEFAULT 0,
  `absent_theory` tinyint(1) NOT NULL DEFAULT 0,
  `obtain_mark_practical` int(11) NOT NULL DEFAULT 0,
  `absent_practical` tinyint(1) NOT NULL DEFAULT 0,
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `exams_id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `full_mark_theory` int(11) NOT NULL DEFAULT 0,
  `pass_mark_theory` int(11) NOT NULL DEFAULT 0,
  `full_mark_practical` int(11) NOT NULL DEFAULT 0,
  `pass_mark_practical` int(11) NOT NULL DEFAULT 0,
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `faculty` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorting` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `created_by`, `last_updated_by`, `faculty`, `faculty_code`, `sorting`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'One', 'C001', 1, 1, '2021-09-27 10:15:23', '2021-09-27 11:47:56'),
(2, 1, 1, 'TWO', 'C002', 2, 1, '2021-09-27 10:15:44', '2021-09-27 11:48:11'),
(3, 1, NULL, 'THREE', 'C003', 3, 1, '2021-10-05 03:57:15', '2021-10-05 03:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_semester`
--

CREATE TABLE `faculty_semester` (
  `id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculty_semester`
--

INSERT INTO `faculty_semester` (`id`, `faculty_id`, `semester_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fee_collections`
--

CREATE TABLE `fee_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `fee_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_collections`
--

INSERT INTO `fee_collections` (`id`, `created_by`, `last_updated_by`, `students_id`, `fee_masters_id`, `date`, `paid_amount`, `discount`, `fine`, `payment_mode`, `note`, `response`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, '2021-09-01 00:00:00', 2500, 1000, 0, 'Cash', NULL, NULL, 1, '2021-09-28 06:10:21', '2021-09-28 06:10:21'),
(2, 1, NULL, 1, 4, '2021-09-01 00:00:00', 1000, 500, 0, 'Cash', NULL, NULL, 1, '2021-09-28 06:15:02', '2021-09-28 06:15:02'),
(3, 1, NULL, 1, 5, '2021-09-01 00:00:00', 2000, 0, 50, 'online', NULL, NULL, 1, '2021-09-28 06:16:22', '2021-09-28 06:16:22'),
(4, 1, NULL, 1, 5, '2021-09-03 00:00:00', 40, 10, 0, 'Cash', NULL, NULL, 1, '2021-09-28 06:19:43', '2021-09-28 06:19:43'),
(5, 1, NULL, 1, 4, '2021-09-16 00:00:00', 500, 0, 0, 'Cash', NULL, NULL, 1, '2021-09-28 08:14:50', '2021-09-28 08:14:50'),
(6, 1, NULL, 1, 6, '2021-09-01 00:00:00', 2000, 0, 0, 'online', NULL, NULL, 1, '2021-09-28 10:20:43', '2021-09-28 10:20:43'),
(7, 1, NULL, 2, 7, '2021-10-05 00:00:00', 0, NULL, 120, '-', 'Fine', NULL, 1, '2021-10-04 04:59:55', '2021-10-04 04:59:55'),
(8, 1, NULL, 2, 7, '2021-10-05 00:00:00', 0, 50, NULL, '-', 'Discount', NULL, 1, '2021-10-04 04:59:55', '2021-10-04 04:59:55'),
(9, 1, NULL, 2, 7, '2021-10-05 00:00:00', 1800, NULL, NULL, 'Cash', NULL, NULL, 1, '2021-10-04 04:59:55', '2021-10-04 04:59:55'),
(10, 1, NULL, 2, 7, '2021-10-05 00:00:00', 70, NULL, NULL, 'Cash', NULL, NULL, 1, '2021-10-04 05:05:07', '2021-10-04 05:05:07'),
(11, 1, NULL, 2, 8, '2021-10-07 00:00:00', 1800, NULL, NULL, 'Cash', NULL, NULL, 1, '2021-10-05 04:03:28', '2021-10-05 04:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `fee_heads`
--

CREATE TABLE `fee_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `fee_head_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head_amount` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_heads`
--

INSERT INTO `fee_heads` (`id`, `created_by`, `last_updated_by`, `fee_head_title`, `fee_head_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Admission Fee', 5000, 1, '2021-09-27 11:59:47', '2021-09-27 11:59:47'),
(2, 1, NULL, 'MONTHLY FEE', 2000, 1, '2021-09-27 12:00:19', '2021-09-27 12:00:19'),
(3, 1, NULL, 'DEVELOPMENT FEE', 1500, 1, '2021-09-27 12:00:36', '2021-09-27 12:00:36'),
(4, 1, NULL, 'MISCELLANEOUS FEE', 2000, 1, '2021-09-28 07:59:54', '2021-09-28 07:59:54'),
(5, 1, NULL, 'TUTION FEE', 1800, 1, '2021-10-04 04:16:42', '2021-10-04 04:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `fee_masters`
--

CREATE TABLE `fee_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `semester` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_due_date` datetime NOT NULL,
  `fee_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_masters`
--

INSERT INTO `fee_masters` (`id`, `created_by`, `last_updated_by`, `students_id`, `semester`, `fee_head`, `fee_due_date`, `fee_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, '1', '1', '2021-09-27 00:00:00', 3500, 1, '2021-09-27 12:05:08', '2021-09-27 12:05:08'),
(4, 1, 1, 1, '1', '3', '2021-09-28 00:00:00', 2000, 1, '2021-09-28 06:13:09', '2021-09-28 08:15:04'),
(5, 1, NULL, 1, '1', '2', '2021-09-22 00:00:00', 2000, 1, '2021-09-28 06:13:51', '2021-09-28 06:13:51'),
(6, 1, NULL, 1, '1', '4', '2021-09-01 00:00:00', 2000, 1, '2021-09-28 08:06:17', '2021-09-28 08:06:17'),
(7, 1, NULL, 2, '1', '5', '2021-10-04 00:00:00', 1800, 1, '2021-10-04 04:17:22', '2021-10-04 04:17:22'),
(8, 1, NULL, 2, '1', '5', '2021-04-02 00:00:00', 1800, 1, '2021-10-04 04:18:30', '2021-10-04 04:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `foodCategories_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_item_food_schedule`
--

CREATE TABLE `food_item_food_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_schedule_id` int(10) UNSIGNED NOT NULL,
  `food_item_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_schedules`
--

CREATE TABLE `food_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `eating_times_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `institute` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_header` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlePlus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordpress` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zones_id` int(10) UNSIGNED DEFAULT NULL,
  `quick_menu` tinyint(1) NOT NULL DEFAULT 0,
  `public_registration` tinyint(1) NOT NULL DEFAULT 0,
  `web_cms` tinyint(1) NOT NULL DEFAULT 1,
  `front_desk` tinyint(1) NOT NULL DEFAULT 1,
  `student_staff` tinyint(1) NOT NULL DEFAULT 1,
  `account` tinyint(1) NOT NULL DEFAULT 1,
  `inventory` tinyint(1) NOT NULL DEFAULT 1,
  `library` tinyint(1) NOT NULL DEFAULT 1,
  `attendance` tinyint(1) NOT NULL DEFAULT 1,
  `exam` tinyint(1) NOT NULL DEFAULT 1,
  `certificate` tinyint(1) NOT NULL DEFAULT 1,
  `hostel` tinyint(1) NOT NULL DEFAULT 1,
  `transport` tinyint(1) NOT NULL DEFAULT 1,
  `assignment` tinyint(1) NOT NULL DEFAULT 1,
  `upload_download` tinyint(1) NOT NULL DEFAULT 1,
  `meeting` tinyint(1) NOT NULL DEFAULT 1,
  `alert` tinyint(1) NOT NULL DEFAULT 1,
  `academic` tinyint(1) NOT NULL DEFAULT 1,
  `help` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `created_by`, `last_updated_by`, `institute`, `salogan`, `copyright`, `address`, `phone`, `email`, `website`, `favicon`, `logo`, `tracking_code`, `print_header`, `print_footer`, `facebook`, `twitter`, `linkedIn`, `youtube`, `googlePlus`, `instagram`, `whatsApp`, `skype`, `pinterest`, `wordpress`, `time_zones_id`, `quick_menu`, `public_registration`, `web_cms`, `front_desk`, `student_staff`, `account`, `inventory`, `library`, `attendance`, `exam`, `certificate`, `hostel`, `transport`, `assignment`, `upload_download`, `meeting`, `alert`, `academic`, `help`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Brajkishore Kindergarten', NULL, NULL, NULL, '06152 234 772', 'info@brajkishorekindergarten.co.in', NULL, '6749.png', '5725.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 274, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2021-09-27 10:05:31', '2021-09-28 08:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `grading_scales`
--

CREATE TABLE `grading_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_from` decimal(5,2) NOT NULL,
  `percentage_to` decimal(5,2) NOT NULL,
  `grade_point` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_scales`
--

INSERT INTO `grading_scales` (`id`, `created_by`, `last_updated_by`, `gradingType_id`, `name`, `percentage_from`, `percentage_to`, `grade_point`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'A+', '80.00', '95.00', 1, 'Excellent', 1, '2021-09-27 11:09:50', '2021-09-27 11:09:50'),
(2, 1, NULL, 1, 'A', '75.00', '80.00', 2, 'Very Good', 1, '2021-09-27 11:09:50', '2021-09-27 11:09:50'),
(3, 1, NULL, 1, 'B', '70.00', '75.00', 3, 'Good', 1, '2021-09-27 11:09:50', '2021-09-27 11:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `grading_types`
--

CREATE TABLE `grading_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_types`
--

INSERT INTO `grading_types` (`id`, `created_by`, `last_updated_by`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'School level', 'School-level', 1, '2021-09-27 11:09:50', '2021-09-27 11:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `guardian_details`
--

CREATE TABLE `guardian_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `guardian_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardian_details`
--

INSERT INTO `guardian_details` (`id`, `created_by`, `last_updated_by`, `guardian_first_name`, `guardian_middle_name`, `guardian_last_name`, `guardian_eligibility`, `guardian_occupation`, `guardian_office`, `guardian_office_number`, `guardian_residence_number`, `guardian_mobile_1`, `guardian_mobile_2`, `guardian_email`, `guardian_relation`, `guardian_address`, `guardian_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'RAJESH', NULL, 'KUMAR', NULL, 'FARMER', NULL, NULL, NULL, '8009654123', '7856321007', NULL, 'FATHER', 'PATNA', NULL, 1, '2021-09-27 11:55:09', '2021-09-27 11:57:24'),
(2, 1, NULL, 'FF', NULL, 'KUMAR', NULL, NULL, NULL, NULL, NULL, '8569123644', NULL, NULL, 'FATHER', 'PATNA', '', 1, '2021-09-29 04:24:58', '2021-09-29 04:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_contact` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_meals`
--

CREATE TABLE `hostel_meals` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `foods_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library_circulations`
--

CREATE TABLE `library_circulations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_prefix` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_limit_days` int(10) UNSIGNED DEFAULT NULL,
  `issue_limit_books` int(10) UNSIGNED DEFAULT NULL,
  `fine_per_day` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_circulations`
--

INSERT INTO `library_circulations` (`id`, `created_by`, `last_updated_by`, `user_type`, `slug`, `code_prefix`, `issue_limit_days`, `issue_limit_books`, `fine_per_day`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Student', 'student', 'STUDLIB', 7, 5, 5, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'Staff', 'staff', 'STALIB', 15, 5, 0, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_members`
--

INSERT INTO `library_members` (`id`, `created_by`, `last_updated_by`, `user_type`, `member_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, 1, '2021-09-30 06:41:06', '2021-09-30 06:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_answer_sheets`
--

CREATE TABLE `mcq_answer_sheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mcq_exam_participants_id` int(10) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exams`
--

CREATE TABLE `mcq_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `mcq_instructions_id` int(10) UNSIGNED NOT NULL,
  `question_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dynamic',
  `no_of_question` int(11) DEFAULT NULL,
  `pass_mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'date_duration',
  `duration` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `exam_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'one',
  `mark_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `result_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exam_participants`
--

CREATE TABLE `mcq_exam_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mcq_exams_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exam_questions`
--

CREATE TABLE `mcq_exam_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_instructions`
--

CREATE TABLE `mcq_instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_questions`
--

CREATE TABLE `mcq_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `mcq_question_groups_id` int(10) UNSIGNED NOT NULL,
  `mcq_question_levels_id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark` double(8,2) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Single',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_groups`
--

CREATE TABLE `mcq_question_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_levels`
--

CREATE TABLE `mcq_question_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_options`
--

CREATE TABLE `mcq_question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `mcq_questions_id` int(10) UNSIGNED NOT NULL,
  `option` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_settings`
--

CREATE TABLE `meeting_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_settings`
--

INSERT INTO `meeting_settings` (`id`, `identity`, `logo`, `link`, `config`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Zoom', 'zoom', 'https://zoom.us', '{\"Key\":\"\",\"Secret\":\"\",\"Email\":\"\"}', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_04_100236_create_staff_designations_table', 1),
(4, '2017_10_05_003733_create_grading_types_table', 1),
(5, '2017_10_05_003849_create_grading_scales_table', 1),
(6, '2017_10_05_072329_create_staff_table', 1),
(7, '2017_10_06_085150_create_faculties_table', 1),
(8, '2017_10_06_085202_create_semesters_table', 1),
(9, '2017_10_09_094821_create_attendance_statuses_table', 1),
(10, '2017_10_10_083645_create_time_zones_table', 1),
(11, '2017_10_21_012144_create_bed_statuses_table', 1),
(12, '2017_10_27_010354_create_student_statuses_table', 1),
(13, '2017_10_28_060832_create_book_statuses_table', 1),
(14, '2017_10_29_074155_create_student_batches_table', 1),
(15, '2017_11_06_084909_create_customers_table', 1),
(16, '2017_11_06_084909_create_students_table', 1),
(17, '2017_11_06_085106_create_parent_details_table', 1),
(18, '2017_11_06_085135_create_guardian_details_table', 1),
(19, '2017_11_07_091332_create_faculty_semester_table', 1),
(20, '2017_11_11_120928_create_addressinfos_table', 1),
(21, '2017_11_17_011606_create_documents_table', 1),
(22, '2017_11_18_005300_create_notes_table', 1),
(23, '2017_11_19_055352_create_fee_heads_table', 1),
(24, '2017_11_20_012242_create_fee_masters_table', 1),
(25, '2017_11_21_035458_create_fee_collections_table', 1),
(26, '2017_11_26_014317_create_book_categories_table', 1),
(27, '2017_11_27_010354_create_customer_statuses_table', 1),
(28, '2017_11_27_094949_create_book_masters_table', 1),
(29, '2017_11_27_095001_create_books_table', 1),
(30, '2017_11_29_084116_create_library_circulations_table', 1),
(31, '2017_11_30_015025_create_library_members_table', 1),
(32, '2017_12_02_010529_create_book_issues_table', 1),
(33, '2017_12_06_005401_create_transaction_heads_table', 1),
(34, '2017_12_06_012542_create_transactions_table', 1),
(35, '2017_12_08_084025_create_payroll_heads_table', 1),
(36, '2017_12_08_090233_create_payroll_masters_table', 1),
(37, '2017_12_08_090813_create_salary_pays_table', 1),
(38, '2017_12_13_084859_create_years_table', 1),
(39, '2017_12_13_084925_create_months_table', 1),
(40, '2017_12_14_062342_create_attendance_masters_table', 1),
(41, '2017_12_14_063449_create_attendances_table', 1),
(42, '2018_02_15_104206_create_settings_table', 1),
(43, '2018_02_18_061426_create_sms_emails_table', 1),
(44, '2018_02_18_061538_create_notices_table', 1),
(45, '2018_03_02_003733_create_categories_table', 1),
(46, '2018_03_02_003849_create_sub_categories_table', 1),
(47, '2018_03_02_173947_create_subjects_table', 1),
(48, '2018_03_02_180148_create_semester_subject_table', 1),
(49, '2018_03_03_140508_create_exams_table', 1),
(50, '2018_03_03_140529_create_exam_schedules_table', 1),
(51, '2018_03_03_140543_create_exam_mark_ledgers_table', 1),
(52, '2018_03_09_155741_create_hostels_table', 1),
(53, '2018_03_10_002019_create_room_types_table', 1),
(54, '2018_03_18_233110_create_rooms_table', 1),
(55, '2018_03_20_175730_create_beds_table', 1),
(56, '2018_03_21_181903_create_residents_table', 1),
(57, '2018_03_21_190050_create_resident_histories_table', 1),
(58, '2018_03_26_233817_create_days_table', 1),
(59, '2018_03_27_045931_create_food_categories_table', 1),
(60, '2018_03_27_050051_create_food_items_table', 1),
(61, '2018_03_27_050835_create_hostel_meals_table', 1),
(62, '2018_03_27_223813_create_eating_times_table', 1),
(63, '2018_03_27_225950_create_food_schedules_table', 1),
(64, '2018_03_30_001832_create_food_item_food_schedule_table', 1),
(65, '2018_03_30_234754_create_routes_table', 1),
(66, '2018_03_30_234825_create_vehicles_table', 1),
(67, '2018_03_30_234840_create_route_vehicles_table', 1),
(68, '2018_03_31_000843_create_vehicle_staffs_table', 1),
(69, '2018_04_02_062605_create_general_settings_table', 1),
(70, '2018_04_03_054649_create_email_settings_table', 1),
(71, '2018_04_03_054651_create_meeting_settings_table', 1),
(72, '2018_04_03_054708_create_sms_settings_table', 1),
(73, '2018_04_03_055400_create_alert_settings_table', 1),
(74, '2018_04_29_234215_create_academic_infos_table', 1),
(75, '2018_05_28_101725_create_student_guardians_table', 1),
(76, '2018_05_30_141644_create_payment_settings_table', 1),
(77, '2018_06_04_091509_create_transport_users_table', 1),
(78, '2018_06_04_092336_create_transport_histories_table', 1),
(79, '2018_06_06_055405_create_assignments_table', 1),
(80, '2018_06_06_055442_create_assignment_answers_table', 1),
(81, '2018_06_06_055503_create_download_table', 1),
(82, '2019_01_18_065901_create_products_table', 1),
(83, '2019_01_29_032038_create_vendors_table', 1),
(84, '2019_01_29_042314_create_stocks_table', 1),
(85, '2019_01_29_042738_create_product_prices_table', 1),
(86, '2019_04_06_021557_create_payment_methods_table', 1),
(87, '2019_04_06_031653_create_banks_table', 1),
(88, '2019_04_06_031713_create_bank_transactions_table', 1),
(89, '2019_04_08_063125_create_account_categories_table', 1),
(90, '2019_04_11_090124_create_jobs_table', 1),
(91, '2019_05_04_152142_create_certificate_templates_table', 1),
(92, '2019_05_10_192213_create_subject_attendances_table', 1),
(93, '2019_07_08_064020_create_audits_table', 1),
(94, '2019_08_10_065318_create_attendance_certificates_table', 1),
(95, '2019_08_10_205022_create_certificate_histories_table', 1),
(96, '2019_08_12_081920_create_transfer_certificates_table', 1),
(97, '2019_08_14_070841_create_bonafide_certificates_table', 1),
(98, '2019_08_14_203420_create_course_completion_certificates_table', 1),
(99, '2019_10_08_205822_create_book_requests_table', 1),
(100, '2019_11_24_184741_create_assets_table', 1),
(101, '2019_11_24_184850_create_semester_assets_table', 1),
(102, '2020_01_16_223708_create_purchases_table', 1),
(103, '2020_01_16_223806_create_purchase_details_table', 1),
(104, '2020_01_16_223831_create_purchase_returns_table', 1),
(105, '2020_01_16_223855_create_sales_table', 1),
(106, '2020_01_16_223910_create_sales_details_table', 1),
(107, '2020_01_16_223928_create_sales_returns_table', 1),
(108, '2020_02_18_004730_create_postal_exchange_types_table', 1),
(109, '2020_02_19_011008_create_postal_exchanges_table', 1),
(110, '2020_02_20_073315_create_visitor_purposes_table', 1),
(111, '2020_02_20_073316_create_visitor_logs_table', 1),
(112, '2020_02_25_192332_create_online_payments_table', 1),
(113, '2020_04_12_165239_create_meetings_table', 1),
(114, '2020_04_21_115723_create_character_certificates_table', 1),
(115, '2020_04_27_084132_create_institutions_table', 1),
(116, '2020_06_02_052634_create_contact_mesages_table', 1),
(117, '2020_06_02_084527_create_web_general_settings_table', 1),
(118, '2020_06_02_084552_create_web_home_settings_table', 1),
(119, '2020_06_02_084614_create_web_contact_us_settings_table', 1),
(120, '2020_06_02_084631_create_web_about_us_settings_table', 1),
(121, '2020_06_02_084708_create_web_menus_table', 1),
(122, '2020_06_02_084730_create_web_pages_table', 1),
(123, '2020_06_02_084748_create_web_menu_pages_table', 1),
(124, '2020_06_02_084801_create_web_sliders_table', 1),
(125, '2020_06_02_084836_create_web_blog_categories_table', 1),
(126, '2020_06_02_084847_create_web_blogs_table', 1),
(127, '2020_06_02_084934_create_web_notices_table', 1),
(128, '2020_06_02_084951_create_web_events_table', 1),
(129, '2020_06_02_085003_create_web_services_table', 1),
(130, '2020_06_02_085025_create_web_galleries_table', 1),
(131, '2020_06_02_085043_create_web_gallery_images_table', 1),
(132, '2020_06_02_085333_create_web_downloads_table', 1),
(133, '2020_06_02_085346_create_web_faqs_table', 1),
(134, '2020_06_02_085407_create_web_counters_table', 1),
(135, '2020_06_02_085439_create_web_client_awards_table', 1),
(136, '2020_06_02_085513_create_web_testimonials_table', 1),
(137, '2020_06_02_085612_create_web_pricings_table', 1),
(138, '2020_06_02_085659_create_web_subscribers_table', 1),
(139, '2020_06_03_070919_create_web_contact_lists_table', 1),
(140, '2020_06_03_141541_create_web_registrations_table', 1),
(141, '2020_06_03_141927_create_web_registration_academic_qualifications_table', 1),
(142, '2020_06_03_142036_create_web_registration_programmes_table', 1),
(143, '2020_06_03_142129_create_web_registration_work_experiences_table', 1),
(144, '2020_06_03_142204_create_web_registration_settings_table', 1),
(145, '2020_06_03_144224_create_contact_directory_groups_table', 1),
(146, '2020_06_03_144309_create_contact_directory_details_table', 1),
(147, '2020_06_04_122625_create_web_staff_table', 1),
(148, '2020_06_06_165013_create_online_registration_settings_table', 1),
(149, '2020_06_06_200541_create_online_registration_programs_table', 1),
(150, '2020_06_11_060457_create_mcq_instructions_table', 1),
(151, '2020_06_11_060724_create_mcq_question_levels_table', 1),
(152, '2020_06_11_060826_create_mcq_question_groups_table', 1),
(153, '2020_06_11_060924_create_mcq_questions_table', 1),
(154, '2020_06_11_061052_create_mcq_exams_table', 1),
(155, '2020_06_11_061455_create_mcq_question_options_table', 1),
(156, '2020_06_11_061557_create_mcq_answer_sheets_table', 1),
(157, '2020_06_11_090611_create_mcq_exam_participants_table', 1),
(158, '2020_06_11_091053_create_mcq_exam_questions_table', 1),
(159, '2021_04_21_062308_create_nirgam_utara_certificates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `created_by`, `last_updated_by`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'January', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'February', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, 'March', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, 'April', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(5, 1, NULL, 'May', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(6, 1, NULL, 'June', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(7, 1, NULL, 'July', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(8, 1, NULL, 'August', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(9, 1, NULL, 'September', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(10, 1, NULL, 'October', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(11, 1, NULL, 'November', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(12, 1, NULL, 'December', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `nirgam_utara_certificates`
--

CREATE TABLE `nirgam_utara_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `nu_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_leaving` date NOT NULL,
  `leaving_time_class` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_time_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_school_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_to_leave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mention_body_mark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `any_other_remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `display_group` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_payments`
--

CREATE TABLE `online_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_registration_programs`
--

CREATE TABLE `online_registration_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_registration_settings`
--

CREATE TABLE `online_registration_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Online Application for Admission',
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `rules_status` tinyint(1) NOT NULL DEFAULT 0,
  `rules` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_status` tinyint(1) NOT NULL DEFAULT 0,
  `agreement` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_guidelines` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_close_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_details`
--

CREATE TABLE `parent_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `grandfather_first_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_details`
--

INSERT INTO `parent_details` (`id`, `created_by`, `last_updated_by`, `students_id`, `grandfather_first_name`, `grandfather_middle_name`, `grandfather_last_name`, `father_first_name`, `father_middle_name`, `father_last_name`, `father_eligibility`, `father_occupation`, `father_office`, `father_office_number`, `father_residence_number`, `father_mobile_1`, `father_mobile_2`, `father_email`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `mother_eligibility`, `mother_occupation`, `mother_office`, `mother_office_number`, `mother_residence_number`, `mother_mobile_1`, `mother_mobile_2`, `mother_email`, `father_image`, `mother_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'PANKAJ', NULL, 'KUMAR', 'RAJESH', NULL, 'KUMAR', NULL, 'FARMER', NULL, NULL, NULL, NULL, '7856321007', NULL, 'RITA', NULL, 'SINGH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, '2021-09-27 11:55:09', '2021-09-27 11:57:24'),
(2, 1, NULL, 2, 'TEST', NULL, NULL, 'SURAV', NULL, 'KUMAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TEST', NULL, 'DD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, '2021-09-29 04:24:58', '2021-09-29 04:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `created_by`, `last_updated_by`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Cash', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, 1, 'Bank', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, 1, 'Online Payment', 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `identity`, `logo`, `link`, `config`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Stripe', 'stripe', 'https://stripe.com', '{\"Publishable_Key\":\"\",\"Secret_Key\":\"\"}', 0, NULL, NULL),
(2, 'Instamojo', 'instamojo', 'https://www.instamojo.com', '{\"API_KEY\":\"\",\"AUTH_TOKEN\":\"\"}', 0, NULL, NULL),
(3, 'PayUMoney', 'payumoney', 'https://www.payumoney.com', '{\"Merchant_Key\":\"\",\"Merchant_Salt\":\"\",\"Auth_Header\":\"\"}', 0, NULL, NULL),
(4, 'RozorPay', 'rozorpay', 'https://razorpay.com', '{\"Key\":\"\",\"Secret\":\"\"}', 0, NULL, NULL),
(5, 'PayStack', 'paystack', 'https://paystack.co', '{\"publicKey\":\"\",\"secretKey\":\"\",\"merchantEmail\":\"\"}', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_heads`
--

CREATE TABLE `payroll_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_heads`
--

INSERT INTO `payroll_heads` (`id`, `created_by`, `last_updated_by`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Monthly Salary', 'Monthly-Salary', 1, '2021-10-05 04:45:32', '2021-10-05 04:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_masters`
--

CREATE TABLE `payroll_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `tag_line` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payroll_head` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_masters`
--

INSERT INTO `payroll_masters` (`id`, `created_by`, `last_updated_by`, `staff_id`, `tag_line`, `payroll_head`, `due_date`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'September Salary', '1', '2021-10-02 00:00:00', 15000, 1, '2021-10-05 04:46:17', '2021-10-05 04:46:17'),
(2, 1, NULL, 1, 'August Salary', '1', '2021-08-31 00:00:00', 15000, 1, '2021-10-05 04:51:31', '2021-10-05 04:51:31'),
(3, 1, NULL, 1, 'October Salary', '1', '2021-10-02 00:00:00', 18000, 1, '2021-10-05 06:51:45', '2021-10-05 06:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_head` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin Setup Permission', 'super-admin-index', 'Super Admin Setup Permission', 'Super Admin Setup Permission', 1, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(2, 'Menu', 'expand-action-menu', 'Expand Nav Menu', 'Expand Nav Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(3, 'Menu', 'admin-control', 'Admin Control', 'Admin Control Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(4, 'Menu', 'dashboard', 'Dashboard', 'Dashboard Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(5, 'Menu', 'web-cms', 'Web CMS', 'Web CMS Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(6, 'Menu', 'front-office', 'Front Office', 'Front Office Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(7, 'Menu', 'student-staff', 'Student-Staff', 'Student-Staff Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(8, 'Menu', 'account', 'Account', 'Account Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(9, 'Menu', 'inventory', 'Inventory', 'Inventory Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(10, 'Menu', 'library', 'Library', 'Libaray Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(11, 'Menu', 'attendance', 'Attendance', 'Attendance Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(12, 'Menu', 'examination', 'Examination', 'Examination Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(13, 'Menu', 'certificate', 'Certificate', 'Certificate Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(14, 'Menu', 'hostel', 'Hostel', 'Hostel Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(15, 'Menu', 'transport', 'Transport', 'Transport Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(16, 'Menu', 'assignment', 'Assignment', 'Assignment Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(17, 'Menu', 'download', 'Download', 'Download Menu', 0, '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(18, 'Menu', 'meeting', 'Meeting', 'Meeting Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(19, 'Menu', 'report', 'Report', 'Report Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(20, 'Menu', 'alert-center', 'Alert Center', 'Alert Center Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(21, 'Menu', 'academic', 'Academic Setup', 'Academic Setup Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(22, 'Menu', 'help', 'Help', 'Help Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(23, 'Student Menu', 'student-dashboard', 'Dashboard', 'Dashboard Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(24, 'Student Menu', 'student-profile', 'Profile', 'Profile Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(25, 'Student Menu', 'student-profile-edit', 'Profile Edit', 'Profile Edit Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(26, 'Student Menu', 'student-fees', 'Fees', 'Fees Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(27, 'Student Menu', 'student-library', 'Library', 'Library Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(28, 'Student Menu', 'student-attendance', 'Attendance', 'Attendance Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(29, 'Student Menu', 'student-exam', 'Exam', 'Exam Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(30, 'Student Menu', 'student-hostel', 'Hostel', 'Hostel Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(31, 'Student Menu', 'student-transport', 'Transport', 'Transport Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(32, 'Student Menu', 'student-course', 'Course', 'Course Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(33, 'Student Menu', 'student-notice', 'Notice', 'Notice Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(34, 'Student Menu', 'student-download', 'Download', 'Download Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(35, 'Student Menu', 'student-assignment', 'Assignment', 'Assignment Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(36, 'Student Menu', 'student-meeting', 'Meeting', 'Meeting Student Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(37, 'Guardian Menu', 'guardian-dashboard', 'Dashboard', 'Dashboard Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(38, 'Guardian Menu', 'guardian-profile-edit', 'Profile Edit', 'Profile Edit Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(39, 'Guardian Menu', 'guardian-notice', 'Notice', 'Notice Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(40, 'Guardian Menu', 'guardian-student-list', 'Student List', 'Student List Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(41, 'Guardian Menu', 'guardian-student-profile', 'Student Profile', 'Student Profile Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(42, 'Guardian Menu', 'guardian-student-fees', 'Fees', 'Fees Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(43, 'Guardian Menu', 'guardian-student-library', 'Library', 'Library Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(44, 'Guardian Menu', 'guardian-student-attendance', 'Attendance', 'Attendance Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(45, 'Guardian Menu', 'guardian-student-hostel', 'Hostel', 'Hostel Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(46, 'Guardian Menu', 'guardian-student-transport', 'Transport', 'Transport Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(47, 'Guardian Menu', 'guardian-student-course', 'Course', 'Course Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(48, 'Guardian Menu', 'guardian-student-download', 'Download', 'Download Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(49, 'Guardian Menu', 'guardian-student-exam', 'Exam', 'Exam Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(50, 'Guardian Menu', 'guardian-student-assignment', 'Assignment', 'Assignment Guardian Menu', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(51, 'Super Suit', 'super-suit', 'Super Suit', 'Super Suit', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(52, 'User Activity', 'user-activity-index', 'Index', 'User Activity Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(53, 'User Activity', 'user-activity-delete', 'Delete', 'Delete User Activity', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(54, 'User Activity', 'user-activity-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Activity Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(55, 'Role', 'role-index', 'Index', 'Role Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(56, 'Role', 'role-add', 'Add', 'Role Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(57, 'Role', 'role-view', 'View', 'View Role', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(58, 'Role', 'role-edit', 'Edit', 'Edit Role', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(59, 'Role', 'role-delete', 'Delete', 'Delete Role', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(60, 'User', 'user-index', 'Index', 'User Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(61, 'User', 'user-add', 'Add', 'User Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(62, 'User', 'user-edit', 'Edit', 'Edit User', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(63, 'User', 'user-delete', 'Delete', 'Delete User', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(64, 'User', 'user-active', 'Active', 'Active User', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(65, 'User', 'user-in-active', 'In-Active', 'In-Active User', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(66, 'User', 'user-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(67, 'General Setting', 'general-setting-index', 'Index', 'General Setting Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(68, 'General Setting', 'general-setting-add', 'Add', 'General Setting Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(69, 'General Setting', 'general-setting-edit', 'Edit', 'Edit General Setting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(70, 'Alert Setting', 'alert-setting-index', 'Index', 'Alert Setting Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(71, 'Alert Setting', 'alert-setting-add', 'Add', 'Alert Setting Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(72, 'Alert Setting', 'alert-setting-edit', 'Edit', 'Edit Alert Setting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(73, 'SMS Setting', 'sms-setting-index', 'Index', 'SMS Setting Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(74, 'SMS Setting', 'sms-setting-add', 'Add', 'SMS Setting Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(75, 'SMS Setting', 'sms-setting-edit', 'Edit', 'Edit SMS Setting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(76, 'SMS Setting', 'sms-setting-active', 'Active', 'Active SMS', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(77, 'SMS Setting', 'sms-setting-in-active', 'In-Active', 'In-Active SMS', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(78, 'Email Setting', 'email-setting-index', 'Index', 'Email Setting Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(79, 'Email Setting', 'email-setting-add', 'Add', 'Email Setting Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(80, 'Email Setting', 'email-setting-edit', 'Edit', 'Edit Email Setting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(81, 'Email Setting', 'email-setting-status-change', 'Status', 'Change Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(82, 'Payment Gateway Setting', 'payment-gateway-setting-index', 'Index', 'Payment Gateway Setting Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(83, 'Payment Gateway Setting', 'payment-gateway-setting-add', 'Add', 'Payment Gateway Setting Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(84, 'Payment Gateway Setting', 'payment-gateway-setting-edit', 'Edit', 'Edit Payment Gateway Setting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(85, 'Payment Gateway Setting', 'payment-gateway-active', 'Active', 'Active Payment Gateway', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(86, 'Payment Gateway Setting', 'payment-gateway-in-active', 'In-Active', 'In-Active Payment Gateway', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(87, 'Payment Method Setting', 'payment-method-index', 'Index', 'Payment Method Setting Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(88, 'Payment Method Setting', 'payment-method-add', 'Add', 'Payment Method Setting Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(89, 'Payment Method Setting', 'payment-method-edit', 'Edit', 'Edit Payment Method Setting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(90, 'Payment Method Setting', 'payment-method-delete', 'Delete', 'Delete Payment Method', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(91, 'Payment Method Setting', 'payment-method-active', 'Active', 'Active Payment Method', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(92, 'Payment Method Setting', 'payment-method-in-active', 'In-Active', 'In-Active Payment Method', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(93, 'Payment Method Setting', 'payment-method-bulk-action', 'Bulk(Active,In-Active,Delete)', 'Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(94, 'Meeting Setting', 'meeting-setting-index', 'Index', 'Meeting Setting Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(95, 'Meeting Setting', 'meeting-setting-add', 'Add', 'Meeting Setting Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(96, 'Meeting Setting', 'meeting-setting-edit', 'Edit', 'Edit Meeting Setting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(97, 'Meeting Setting', 'meeting-setting-active', 'Active', 'Active SMS', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(98, 'Meeting Setting', 'meeting-setting-in-active', 'In-Active', 'In-Active SMS', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(99, 'Academic Management Permission', 'academic-index', 'Academic Permission', 'Academic Permission', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(100, 'Faculty', 'faculty-index', 'Index', 'Faculty Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(101, 'Faculty', 'faculty-add', 'Add', 'Faculty Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(102, 'Faculty', 'faculty-edit', 'Edit', 'Edit Faculty', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(103, 'Faculty', 'faculty-delete', 'Delete', 'Delete Faculty', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(104, 'Faculty', 'faculty-active', 'Active', 'Active Faculty', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(105, 'Faculty', 'faculty-in-active', 'In-Active', 'In-Active Faculty', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(106, 'Faculty', 'faculty-bulk-action', 'Bulk(Active,InActive,Delete)', 'Faculty Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(107, 'Semester', 'semester-index', 'Index', 'Semester Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(108, 'Semester', 'semester-add', 'Add', 'Semester Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(109, 'Semester', 'semester-edit', 'Edit', 'Edit Semester', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(110, 'Semester', 'semester-delete', 'Delete', 'Delete Semester', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(111, 'Semester', 'semester-active', 'Active', 'Active Semester', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(112, 'Semester', 'semester-in-active', 'In-Active', 'In-Active Semester', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(113, 'Semester', 'semester-bulk-action', 'Bulk(Active,InActive,Delete)', 'Semester Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(114, 'Student Batch', 'student-batch-index', 'Index', 'Student Batch Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(115, 'Student Batch', 'student-batch-add', 'Add', 'Student Batch Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(116, 'Student Batch', 'student-batch-edit', 'Edit', 'Edit Student Batch', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(117, 'Student Batch', 'student-batch-delete', 'Delete', 'Delete Student Batch', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(118, 'Student Batch', 'student-batch-active', 'Active', 'Active Student Batch', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(119, 'Student Batch', 'student-batch-in-active', 'In-Active', 'In-Active Student Batch', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(120, 'Student Batch', 'student-batch-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(121, 'Grading', 'grading-index', 'Index', 'Grading Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(122, 'Grading', 'grading-add', 'Add', 'Grading Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(123, 'Grading', 'grading-edit', 'Edit', 'Edit Grading', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(124, 'Grading', 'grading-delete', 'Delete', 'Delete Grading', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(125, 'Grading', 'grading-active', 'Active', 'Active Grading', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(126, 'Grading', 'grading-in-active', 'In-Active', 'In-Active Grading', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(127, 'Grading', 'grading-bulk-action', 'Bulk(Active,InActive,Delete)', 'Grading Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(128, 'Subject / Course', 'subject-index', 'Index', 'Subject / Course Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(129, 'Subject / Course', 'subject-add', 'Add', 'Subject / Course Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(130, 'Subject / Course', 'subject-edit', 'Edit', 'Edit Subject / Course', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(131, 'Subject / Course', 'subject-delete', 'Delete', 'Delete Subject / Course', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(132, 'Subject / Course', 'subject-active', 'Active', 'Active Subject / Course', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(133, 'Subject / Course', 'subject-in-active', 'In-Active', 'In-Active Subject / Course', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(134, 'Subject / Course', 'subject-bulk-action', 'Bulk(Active,InActive,Delete)', 'Subject / Course Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(135, 'Student Status', 'student-status-index', 'Index', 'Student Status Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(136, 'Student Status', 'student-status-add', 'Add', 'Student Status Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(137, 'Student Status', 'student-status-edit', 'Edit', 'Edit Student Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(138, 'Student Status', 'student-status-delete', 'Delete', 'Delete Student Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(139, 'Student Status', 'student-status-active', 'Active', 'Active Student Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(140, 'Student Status', 'student-status-in-active', 'In-Active', 'In-Active Student Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(141, 'Student Status', 'student-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(142, 'Book Status', 'book-status-index', 'Index', 'Book Status Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(143, 'Book Status', 'book-status-add', 'Add', 'Book Status Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(144, 'Book Status', 'book-status-edit', 'Edit', 'Edit Book Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(145, 'Book Status', 'book-status-delete', 'Delete', 'Delete Book Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(146, 'Book Status', 'book-status-active', 'Active', 'Active Book Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(147, 'Book Status', 'book-status-in-active', 'In-Active', 'In-Active Book Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(148, 'Book Status', 'book-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Status Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(149, 'Bed Status', 'bed-status-index', 'Index', 'Bed Status Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(150, 'Bed Status', 'bed-status-add', 'Add', 'Bed Status Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(151, 'Bed Status', 'bed-status-edit', 'Edit', 'Edit Bed Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(152, 'Bed Status', 'bed-status-delete', 'Delete', 'Delete Bed Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(153, 'Bed Status', 'bed-status-active', 'Active', 'Active Bed Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(154, 'Bed Status', 'bed-status-in-active', 'In-Active', 'In-Active Bed Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(155, 'Bed Status', 'bed-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Status Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(156, 'Year', 'year-index', 'Index', 'Year Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(157, 'Year', 'year-add', 'Add', 'Year Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(158, 'Year', 'year-edit', 'Edit', 'Edit Year', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(159, 'Year', 'year-delete', 'Delete', 'Delete Year', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(160, 'Year', 'year-active', 'Active', 'Active Year', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(161, 'Year', 'year-in-active', 'In-Active', 'In-Active Year', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(162, 'Year', 'year-bulk-action', 'Bulk(Active,InActive,Delete)', 'Year Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(163, 'Year', 'year-active-status', 'Make Active', 'Year Make Active', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(164, 'Month', 'month-index', 'Index', 'Month Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(165, 'Month', 'month-add', 'Add', 'Month Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(166, 'Month', 'month-edit', 'Edit', 'Edit Month', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(167, 'Month', 'month-delete', 'Delete', 'Delete Month', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(168, 'Month', 'month-active', 'Active', 'Active Month', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(169, 'Month', 'month-in-active', 'In-Active', 'In-Active Month', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(170, 'Month', 'month-bulk-action', 'Bulk(Active,InActive,Delete)', 'Month Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(171, 'Day', 'day-index', 'Index', 'Day Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(172, 'Day', 'day-add', 'Add', 'Day Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(173, 'Day', 'day-edit', 'Edit', 'Edit Day', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(174, 'Day', 'day-delete', 'Delete', 'Delete Day', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(175, 'Day', 'day-active', 'Active', 'Active Day', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(176, 'Day', 'day-in-active', 'In-Active', 'In-Active Day', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(177, 'Day', 'day-bulk-action', 'Bulk(Active,InActive,Delete)', 'Day Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(178, 'Front Office Permission', 'front-office-index', 'Front Office Management', 'Front Office Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(179, 'Postal Exchange', 'postal-exchange-index', 'Index', 'Postal Exchange Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(180, 'Postal Exchange', 'postal-exchange-add', 'Add', 'Postal Exchange Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(181, 'Postal Exchange', 'postal-exchange-edit', 'Edit', 'Edit Postal Exchange', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(182, 'Postal Exchange', 'postal-exchange-delete', 'Delete', 'Delete Postal Exchange', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(183, 'Postal Exchange', 'postal-exchange-bulk-action', 'Bulk(Active,InActive,Delete)', 'Postal Exchange Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(184, 'Exchange Type', 'postal-exchange-type-index', 'Index', 'Exchange Type Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(185, 'Exchange Type', 'postal-exchange-type-add', 'Add', 'Exchange Type Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(186, 'Exchange Type', 'postal-exchange-type-edit', 'Edit', 'Edit Exchange Type', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(187, 'Exchange Type', 'postal-exchange-type-active', 'Active', 'Active Exchange Type', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(188, 'Exchange Type', 'postal-exchange-type-in-active', 'In-Active', 'In-Active Exchange Type', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(189, 'Exchange Type', 'postal-exchange-type-delete', 'Delete', 'Delete Exchange Type', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(190, 'Exchange Type', 'postal-exchange-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exchange Type Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(191, 'Visitor Log', 'visitor-index', 'Index', 'Visitor Log Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(192, 'Visitor Log', 'visitor-add', 'Add', 'Visitor Log Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(193, 'Visitor Log', 'visitor-edit', 'Edit', 'Edit Visitor Log', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(194, 'Visitor Log', 'visitor-active', 'Active', 'Active Visitor Log', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(195, 'Visitor Log', 'visitor-in-active', 'In-Active', 'In-Active Visitor Log', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(196, 'Visitor Log', 'visitor-delete', 'Delete', 'Delete Visitor Log', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(197, 'Visitor Log', 'visitor-bulk-action', 'Bulk(Active,InActive,Delete)', 'Visitor Log Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(198, 'Visit Purpose', 'visitor-purpose-index', 'Index', 'Visit Purpose Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(199, 'Visit Purpose', 'visitor-purpose-add', 'Add', 'Visit Purpose Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(200, 'Visit Purpose', 'visitor-purpose-edit', 'Edit', 'Edit Visit Purpose', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(201, 'Visit Purpose', 'visitor-purpose-active', 'Active', 'Active Visit Purpose', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(202, 'Visit Purpose', 'visitor-purpose-in-active', 'In-Active', 'In-Active Visit Purpose', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(203, 'Visit Purpose', 'visitor-purpose-delete', 'Delete', 'Delete Visit Purpose', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(204, 'Visit Purpose', 'visitor-purpose-bulk-action', 'Bulk(Active,InActive,Delete)', 'Visit Purpose Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(205, 'Student Management Permission', 'student-management-index', 'Student Management', 'Student Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(206, 'Student', 'student-index', 'Index', 'Student Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(207, 'Student', 'student-registration', 'Registration', 'Student Registration', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(208, 'Student', 'student-view', 'View', 'View Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(209, 'Student', 'student-edit', 'Edit', 'Edit Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(210, 'Student', 'student-delete', 'Delete', 'Delete Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(211, 'Student', 'student-active', 'Active', 'Active Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(212, 'Student', 'student-in-active', 'In-Active', 'In-Active Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(213, 'Student', 'student-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(214, 'Student', 'student-delete-academic-info', 'Delete Academic Info', 'Student Delete Academic Info', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(215, 'Student', 'student-transfer', 'Transfer', 'Transfer Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(216, 'Student Document', 'student-document-index', 'Index', 'Student Document Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(217, 'Student Document', 'student-document-add', 'Add', 'Student Document Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(218, 'Student Document', 'student-document-edit', 'Edit', 'Edit Student Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(219, 'Student Document', 'student-document-delete', 'Delete', 'Delete Student Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(220, 'Student Document', 'student-document-active', 'Active', 'Active Student Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(221, 'Student Document', 'student-document-in-active', 'In-Active', 'In-Active Student Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(222, 'Student Document', 'student-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Document Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(223, 'Student Note', 'student-note-index', 'Index', 'Student Note Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(224, 'Student Note', 'student-note-add', 'Add', 'Student Note Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(225, 'Student Note', 'student-note-edit', 'Edit', 'Edit Student Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(226, 'Student Note', 'student-note-delete', 'Delete', 'Delete Student Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(227, 'Student Note', 'student-note-active', 'Active', 'Active Student Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(228, 'Student Note', 'student-note-in-active', 'In-Active', 'In-Active Student Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(229, 'Student Note', 'student-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Note Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(230, 'Report', 'student-report', 'Student', 'Student Report', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(231, 'Guardian Management Permission', 'guardian-management-index', 'Guardian Management', 'Guardian Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(232, 'Guardian', 'guardian-index', 'Index', 'Guardian Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(233, 'Guardian', 'guardian-registration', 'Registration', 'Guardian Registration', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(234, 'Guardian', 'guardian-view', 'View', 'View Guardian', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(235, 'Guardian', 'guardian-edit', 'Edit', 'Edit Guardian', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(236, 'Guardian', 'guardian-delete', 'Delete', 'Delete Guardian', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(237, 'Guardian', 'guardian-active', 'Active', 'Active Guardian', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(238, 'Guardian', 'guardian-in-active', 'In-Active', 'In-Active Guardian', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(239, 'Guardian', 'guardian-bulk-action', 'Bulk(Active,InActive,Delete)', 'Guardian Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(240, 'Guardian', 'guardian-link', 'Link Student', 'Guardian Link Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(241, 'Guardian', 'guardian-unlink', 'UnLink Student', 'Guardian UnLink Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(242, 'Staff Management Permission', 'staff-management-index', 'Staff Management', 'Staff Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(243, 'Staff', 'staff-index', 'Index', 'Staff Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(244, 'Staff', 'staff-add', 'Add', 'Staff Registration', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(245, 'Staff', 'staff-view', 'View', 'View Staff', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(246, 'Staff', 'staff-edit', 'Edit', 'Edit Staff', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(247, 'Staff', 'staff-delete', 'Delete', 'Delete Staff', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(248, 'Staff', 'staff-active', 'Active', 'Active Staff', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(249, 'Staff', 'staff-in-active', 'In-Active', 'In-Active Staff', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(250, 'Staff', 'staff-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(251, 'Staff Document', 'staff-document-index', 'Index', 'Staff Document Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(252, 'Staff Document', 'staff-document-add', 'Add', 'Staff Document Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(253, 'Staff Document', 'staff-document-edit', 'Edit', 'Edit Staff Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(254, 'Staff Document', 'staff-document-delete', 'Delete', 'Delete Staff Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(255, 'Staff Document', 'staff-document-active', 'Active', 'Active Staff Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(256, 'Staff Document', 'staff-document-in-active', 'In-Active', 'In-Active Staff Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(257, 'Staff Document', 'staff-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Document Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(258, 'Staff Note', 'staff-note-index', 'Index', 'Staff Note Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(259, 'Staff Note', 'staff-note-add', 'Add', 'Staff Note Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(260, 'Staff Note', 'staff-note-edit', 'Edit', 'Edit Staff Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(261, 'Staff Note', 'staff-note-delete', 'Delete', 'Delete Staff Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(262, 'Staff Note', 'staff-note-active', 'Active', 'Active Staff Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(263, 'Staff Note', 'staff-note-in-active', 'In-Active', 'In-Active Staff Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(264, 'Staff Note', 'staff-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Note Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(265, 'Staff Designation', 'staff-designation-index', 'Index', 'Staff Designation Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(266, 'Staff Designation', 'staff-designation-add', 'Add', 'Staff Designation Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(267, 'Staff Designation', 'staff-designation-edit', 'Edit', 'Edit Staff Designation', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(268, 'Staff Designation', 'staff-designation-delete', 'Delete', 'Delete Staff Designation', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(269, 'Staff Designation', 'staff-designation-active', 'Active', 'Active Staff Designation', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(270, 'Staff Designation', 'staff-designation-in-active', 'In-Active', 'In-Active Staff Designation', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(271, 'Staff Designation', 'staff-designation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Designation Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(272, 'Report', 'staff-report', 'Staff', 'Staff Report', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(273, 'Account Management Permission', 'account-management-index', 'Account Management', 'Account Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(274, 'Fees', 'fees-index', 'Index', 'Student Fees Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(275, 'Fees', 'fees-balance', 'Balance', 'Fees Balance', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(276, 'Fees Head', 'fees-head-index', 'Index', 'Fees Head Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(277, 'Fees Head', 'fees-head-add', 'Add', 'Fees Head Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(278, 'Fees Head', 'fees-head-edit', 'Edit', 'Edit Fees Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(279, 'Fees Head', 'fees-head-delete', 'Delete', 'Delete Fees Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(280, 'Fees Head', 'fees-head-active', 'Active', 'Active Fees Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(281, 'Fees Head', 'fees-head-in-active', 'In-Active', 'In-Active Fees Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(282, 'Fees Head', 'fees-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Head Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(283, 'Fees Master', 'fees-master-index', 'Index', 'Fees Master Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(284, 'Fees Master', 'fees-master-add', 'Add', 'Fees Master Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(285, 'Fees Master', 'fees-master-edit', 'Edit', 'Edit Fees Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(286, 'Fees Master', 'fees-master-delete', 'Delete', 'Delete Fees Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(287, 'Fees Master', 'fees-master-active', 'Active', 'Active Fees Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(288, 'Fees Master', 'fees-master-in-active', 'In-Active', 'In-Active Fees Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(289, 'Fees Master', 'fees-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Master Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(290, 'Quick Fee Receive', 'fees-quick-receive-add', 'Collect', 'Quick Fee Receive Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(291, 'Fees Collection', 'fees-collection-index', 'Index', 'Fees Collection Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(292, 'Fees Collection', 'fees-collection-add', 'Add', 'Fees Collection Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(293, 'Fees Collection', 'fees-collection-view', 'View', 'View Fees Collection', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(294, 'Fees Collection', 'fees-collection-delete', 'Delete', 'Delete Fees Collection', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(295, 'Online Fee Payment', 'fees-online-payment-pay', 'Pay', 'Pay Online Fee', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(296, 'Online Fee Payment', 'fees-online-payment-index', 'Index', 'Index Online Fee Payment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(297, 'Online Fee Payment', 'fees-online-payment-view', 'View', 'View Online Fee Payment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(298, 'Online Fee Payment', 'fees-online-payment-verify', 'Verify', 'Verify Online Fee Payment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(299, 'Payroll', 'payroll-index', 'Index', 'Staff Payroll Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(300, 'Payroll', 'payroll-balance', 'Balance', 'Payroll Balance', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(301, 'Payroll Head', 'payroll-head-index', 'Index', 'Payroll Head Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(302, 'Payroll Head', 'payroll-head-add', 'Add', 'Payroll Head Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(303, 'Payroll Head', 'payroll-head-edit', 'Edit', 'Edit Payroll Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(304, 'Payroll Head', 'payroll-head-delete', 'Delete', 'Delete Payroll Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(305, 'Payroll Head', 'payroll-head-active', 'Active', 'Active Payroll Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(306, 'Payroll Head', 'payroll-head-in-active', 'In-Active', 'In-Active Payroll Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(307, 'Payroll Head', 'payroll-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(308, 'Payroll Master', 'payroll-master-index', 'Index', 'Payroll Master Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(309, 'Payroll Master', 'payroll-master-add', 'Add', 'Payroll Master Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(310, 'Payroll Master', 'payroll-master-edit', 'Edit', 'Edit Payroll Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(311, 'Payroll Master', 'payroll-master-delete', 'Delete', 'Delete Payroll Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(312, 'Payroll Master', 'payroll-master-active', 'Active', 'Active Payroll Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(313, 'Payroll Master', 'payroll-master-in-active', 'In-Active', 'In-Active Payroll Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(314, 'Payroll Master', 'payroll-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Master Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(315, 'Salary Pay', 'salary-payment-index', 'Index', 'Salary Pay Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(316, 'Salary Pay', 'salary-payment-add', 'Add', 'Salary Pay Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(317, 'Salary Pay', 'salary-payment-view', 'View', 'View Salary Pay', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(318, 'Salary Pay', 'salary-payment-delete', 'Delete', 'Delete Salary Pay', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(319, 'Account Group', 'account-group-index', 'Index', 'Account Group Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(320, 'Account Group', 'account-group-add', 'Add', 'Account Group Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(321, 'Account Group', 'account-group-edit', 'Edit', 'Edit Account Group', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(322, 'Account Group', 'account-group-delete', 'Delete', 'Delete Account Group', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(323, 'Account Group', 'account-group-active', 'Active', 'Active Account Group', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(324, 'Account Group', 'account-group-in-active', 'In-Active', 'In-Active Account Group', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(325, 'Account Group', 'account-group-bulk-action', 'Bulk(Active,InActive,Delete)', 'Account Group Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(326, 'Account Group', 'account-group-chart-of-account', 'Chart of Account', 'Account Group Chart of Account', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(327, 'Transaction Head', 'transaction-head-index', 'Index', 'Transaction Head Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(328, 'Transaction Head', 'transaction-head-add', 'Add', 'Transaction Head Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(329, 'Transaction Head', 'transaction-head-edit', 'Edit', 'Edit Transaction Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(330, 'Transaction Head', 'transaction-head-delete', 'Delete', 'Delete Transaction Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(331, 'Transaction Head', 'transaction-head-active', 'Active', 'Active Transaction Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(332, 'Transaction Head', 'transaction-head-in-active', 'In-Active', 'In-Active Transaction Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(333, 'Transaction Head', 'transaction-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(334, 'Transaction', 'transaction-index', 'Index', 'Transaction Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(335, 'Transaction', 'transaction-add', 'Add', 'Transaction Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(336, 'Transaction', 'transaction-edit', 'Edit', 'Edit Transaction', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(337, 'Transaction', 'transaction-delete', 'Delete', 'Delete Transaction', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(338, 'Transaction', 'transaction-active', 'Active', 'Active Transaction', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(339, 'Transaction', 'transaction-in-active', 'In-Active', 'In-Active Transaction', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(340, 'Transaction', 'transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transaction Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(341, 'Bank', 'bank-index', 'Index', 'Bank Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(342, 'Bank', 'bank-add', 'Add', 'Bank Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(343, 'Bank', 'bank-edit', 'Edit', 'Edit Bank', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(344, 'Bank', 'bank-view', 'View', 'View Bank', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(345, 'Bank', 'bank-delete', 'Delete', 'Delete Bank', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(346, 'Bank', 'bank-active', 'Active', 'Active Bank', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(347, 'Bank', 'bank-in-active', 'In-Active', 'In-Active Bank', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(348, 'Bank', 'bank-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(349, 'Bank Transaction', 'bank-transaction-index', 'Index', 'Bank Transaction Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(350, 'Bank Transaction', 'bank-transaction-add', 'Add', 'Bank Transaction Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(351, 'Bank Transaction', 'bank-transaction-delete', 'Delete', 'Delete Bank Transaction', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(352, 'Bank Transaction', 'bank-transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Transaction Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(353, 'Account Print', 'fee-print-master', 'Master Slip', 'Fee Master Slip', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(354, 'Account Print', 'fee-print-collection', 'Collection', 'Print Fee Collection', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(355, 'Account Print', 'fee-print-today-receipt', 'Today Short Receipt', 'Print Today Short Receipt', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(356, 'Account Print', 'fee-print-today-detail-receipt', 'Today Detail Receipt', 'Print Today Detail Receip', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(357, 'Account Print', 'fee-print-student-ledger', 'Student Ledger', 'Print Student Ledger', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(358, 'Account Print', 'fee-print-student-due', 'Due Short Slip', 'Print Due Short Slip', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(359, 'Account Print', 'fee-print-student-due-detail', 'Due Detail Slip', 'Print Due Detail Slip', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(360, 'Account Print', 'fee-print-bulk-due-slip', 'Bulk Due Short Slip', 'Print Bulk Due Short Slip', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(361, 'Account Print', 'fee-print-bulk-due-detail-slip', 'Bulk Due Detail SLip', 'Print Bulk Due Detail SLip', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(362, 'Account Report', 'report-cash-book', 'Cashbook', 'Cashbook Detail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(363, 'Account Report', 'report-fee-collection', 'Fee Collection', 'Fee Collection Detail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(364, 'Account Report', 'report-fee-collection-head', 'Fee Collection Head', 'Fee Collection Head Detail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(365, 'Account Report', 'report-fee-online-payment', 'Online Payment', 'Fee Online Payment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(366, 'Account Report', 'report-balance-fee', 'Fee Balance Statement', 'Fee Balance Statement', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(367, 'Account Report', 'transaction-head-view', 'Statement of Ledger', 'View Transaction Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(368, 'Account Report', 'transaction-head-balance-statement', 'Ledger Balance Statement', 'View Transaction Head', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(369, 'Inventory Management Permission', 'inventory-index', 'Inventory Management', 'Inventory Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(370, 'Assets', 'assets-index', 'Index', 'Assets Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(371, 'Assets', 'assets-add', 'Add', 'Assets Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(372, 'Assets', 'assets-edit', 'Edit', 'Edit Assets', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(373, 'Assets', 'assets-view', 'View', 'View Assets', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(374, 'Assets', 'assets-delete', 'Delete', 'Delete Assets', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(375, 'Assets', 'assets-active', 'Active', 'Active Assets', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(376, 'Assets', 'assets-in-active', 'In-Active', 'In-Active Assets', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(377, 'Assets', 'assets-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(378, 'SemesterAssets', 'sem-assets-index', 'Index', 'SemesterAssets Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(379, 'SemesterAssets', 'sem-assets-add', 'Add', 'SemesterAssets Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(380, 'SemesterAssets', 'sem-assets-delete', 'Delete', 'Delete SemesterAssets', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(381, 'Product', 'product-index', 'Index', 'Product Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(382, 'Product', 'product-add', 'Add', 'Product Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(383, 'Product', 'product-view', 'View', 'Product View', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(384, 'Product', 'product-edit', 'Edit', 'Edit Product', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(385, 'Product', 'product-delete', 'Delete', 'Delete Product', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(386, 'Product', 'product-active', 'Active', 'Active Product', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(387, 'Product', 'product-in-active', 'In-Active', 'In-Active Product', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(388, 'Product', 'product-bulk-action', 'Bulk(Active,InActive,Delete)', 'Product Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(389, 'Product Category', 'product-category-index', 'Index', 'Product Category Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(390, 'Product Category', 'product-category-add', 'Add', 'Product Category Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(391, 'Product Category', 'product-category-edit', 'Edit', 'Edit Product Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(392, 'Product Category', 'product-category-delete', 'Delete', 'Delete Product Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(393, 'Product Category', 'product-category-active', 'Active', 'Active Product Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(394, 'Product Category', 'product-category-in-active', 'In-Active', 'In-Active Product Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(395, 'Product Category', 'product-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Product Category Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(396, 'Customer', 'customer-index', 'Index', 'Customer Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(397, 'Customer', 'customer-registration', 'Registration', 'Customer Registration', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30');
INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(398, 'Customer', 'customer-view', 'View', 'View Customer', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(399, 'Customer', 'customer-edit', 'Edit', 'Edit Customer', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(400, 'Customer', 'customer-delete', 'Delete', 'Delete Customer', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(401, 'Customer', 'customer-active', 'Active', 'Active Customer', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(402, 'Customer', 'customer-in-active', 'In-Active', 'In-Active Customer', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(403, 'Customer', 'customer-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(404, 'Customer', 'customer-bulk-registration', 'Bulk Registration', 'Bulk Registration', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(405, 'Customer Document', 'customer-document-index', 'Index', 'Customer Document Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(406, 'Customer Document', 'customer-document-add', 'Add', 'Customer Document Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(407, 'Customer Document', 'customer-document-edit', 'Edit', 'Edit Customer Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(408, 'Customer Document', 'customer-document-delete', 'Delete', 'Delete Customer Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(409, 'Customer Document', 'customer-document-active', 'Active', 'Active Customer Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(410, 'Customer Document', 'customer-document-in-active', 'In-Active', 'In-Active Customer Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(411, 'Customer Document', 'customer-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Document Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(412, 'Customer Note', 'customer-note-index', 'Index', 'Customer Note Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(413, 'Customer Note', 'customer-note-add', 'Add', 'Customer Note Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(414, 'Customer Note', 'customer-note-edit', 'Edit', 'Edit Customer Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(415, 'Customer Note', 'customer-note-delete', 'Delete', 'Delete Customer Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(416, 'Customer Note', 'customer-note-active', 'Active', 'Active Customer Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(417, 'Customer Note', 'customer-note-in-active', 'In-Active', 'In-Active Customer Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(418, 'Customer Note', 'customer-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Note Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(419, 'Customer Status', 'customer-status-index', 'Index', 'Customer Status Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(420, 'Customer Status', 'customer-status-add', 'Add', 'Customer Status Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(421, 'Customer Status', 'customer-status-edit', 'Edit', 'Edit Customer Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(422, 'Customer Status', 'customer-status-delete', 'Delete', 'Delete Customer Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(423, 'Customer Status', 'customer-status-active', 'Active', 'Active Customer Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(424, 'Customer Status', 'customer-status-in-active', 'In-Active', 'In-Active Customer Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(425, 'Customer Status', 'customer-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Status Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(426, 'Vendor', 'vendor-index', 'Index', 'Vendor Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(427, 'Vendor', 'vendor-registration', 'Registration', 'Vendor Registration', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(428, 'Vendor', 'vendor-view', 'View', 'View Vendor', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(429, 'Vendor', 'vendor-edit', 'Edit', 'Edit Vendor', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(430, 'Vendor', 'vendor-delete', 'Delete', 'Delete Vendor', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(431, 'Vendor', 'vendor-active', 'Active', 'Active Vendor', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(432, 'Vendor', 'vendor-in-active', 'In-Active', 'In-Active Vendor', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(433, 'Vendor', 'vendor-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(434, 'Vendor', 'vendor-bulk-registration', 'Bulk Registration', 'Bulk Registration', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(435, 'Vendor Document', 'vendor-document-index', 'Index', 'Vendor Document Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(436, 'Vendor Document', 'vendor-document-add', 'Add', 'Vendor Document Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(437, 'Vendor Document', 'vendor-document-edit', 'Edit', 'Edit Vendor Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(438, 'Vendor Document', 'vendor-document-delete', 'Delete', 'Delete Vendor Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(439, 'Vendor Document', 'vendor-document-active', 'Active', 'Active Vendor Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(440, 'Vendor Document', 'vendor-document-in-active', 'In-Active', 'In-Active Vendor Document', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(441, 'Vendor Document', 'vendor-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Document Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(442, 'Vendor Note', 'vendor-note-index', 'Index', 'Vendor Note Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(443, 'Vendor Note', 'vendor-note-add', 'Add', 'Vendor Note Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(444, 'Vendor Note', 'vendor-note-edit', 'Edit', 'Edit Vendor Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(445, 'Vendor Note', 'vendor-note-delete', 'Delete', 'Delete Vendor Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(446, 'Vendor Note', 'vendor-note-active', 'Active', 'Active Vendor Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(447, 'Vendor Note', 'vendor-note-in-active', 'In-Active', 'In-Active Vendor Note', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(448, 'Vendor Note', 'vendor-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Note Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(449, 'Library Management Permission', 'library-management-index', 'Library Management', 'Library Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(450, 'Library', 'library-index', 'Index', 'Library Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(451, 'Library', 'library-book-issue', 'Book Issue', 'Book Issue', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(452, 'Library', 'library-book-return', 'Book Return', 'Return Book', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(453, 'Library', 'library-return-over', 'Return Period Over', 'Return Period Over', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(454, 'Library', 'library-staff-request-index', 'Staff Request', 'Staff Request', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(455, 'Library', 'library-student-request-index', 'Student Request', 'Student Request', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(456, 'Library', 'library-issue-history', 'History', 'Issue History', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(457, 'Book', 'book-index', 'Index', 'Book Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(458, 'Book', 'book-add', 'Add', 'Book Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(459, 'Book', 'book-edit', 'Edit', 'Edit Book', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(460, 'Book', 'book-view', 'View', 'View Book', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(461, 'Book', 'book-delete', 'Delete', 'Delete Book', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(462, 'Book', 'book-active', 'Active', 'Active Book', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(463, 'Book', 'book-in-active', 'In-Active', 'In-Active Book', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(464, 'Book', 'book-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(465, 'Book', 'book-add-copies', 'Add Book Copies', 'Add Book Copies', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(466, 'Book', 'book-status', 'Status', 'Book Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(467, 'Book', 'book-bulk-copies-delete', 'Delete Bulk Copies', 'Delete Bulk Copes', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(468, 'Book Category', 'book-category-index', 'Index', 'Book Category Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(469, 'Book Category', 'book-category-add', 'Add', 'Book Category Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(470, 'Book Category', 'book-category-edit', 'Edit', 'Edit Book Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(471, 'Book Category', 'book-category-delete', 'Delete', 'Delete Book Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(472, 'Book Category', 'book-category-active', 'Active', 'Active Book Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(473, 'Book Category', 'book-category-in-active', 'In-Active', 'In-Active Book Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(474, 'Book Category', 'book-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Category Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(475, 'Library Circulation', 'library-circulation-index', 'Index', 'Library Circulation Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(476, 'Library Circulation', 'library-circulation-add', 'Add', 'Library Circulation Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(477, 'Library Circulation', 'library-circulation-edit', 'Edit', 'Edit Library Circulation', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(478, 'Library Circulation', 'library-circulation-delete', 'Delete', 'Delete Library Circulation', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(479, 'Library Circulation', 'library-circulation-active', 'Active', 'Active Library Circulation', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(480, 'Library Circulation', 'library-circulation-in-active', 'In-Active', 'In-Active Library Circulation', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(481, 'Library Circulation', 'library-circulation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Circulation Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(482, 'Library Member', 'library-member-index', 'Index', 'Library Member Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(483, 'Library Member', 'library-member-add', 'Add', 'Library Member Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(484, 'Library Member', 'library-member-edit', 'Edit', 'Edit Library Member', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(485, 'Library Member', 'library-member-delete', 'Delete', 'Delete Library Member', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(486, 'Library Member', 'library-member-active', 'Active', 'Active Library Member', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(487, 'Library Member', 'library-member-in-active', 'In-Active', 'In-Active Library Member', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(488, 'Library Member', 'library-member-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Member Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(489, 'Library Member', 'library-member-staff', 'Staff Index', 'Library Member Staff', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(490, 'Library Member', 'library-member-staff-view', 'Staff View', 'Library Member Staff', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(491, 'Library Member', 'library-member-student', 'Student Index', 'Library Member Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(492, 'Library Member', 'library-member-student-view', 'Student View', 'Library Member Student', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(493, 'Attendance Management Permission', 'attendance-management-index', 'Attendance Management', 'Attendance Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(494, 'Attendance Master', 'attendance-master-index', 'Index', 'Attendance Master Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(495, 'Attendance Master', 'attendance-master-add', 'Add', 'Attendance Master Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(496, 'Attendance Master', 'attendance-master-edit', 'Edit', 'Edit Attendance Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(497, 'Attendance Master', 'attendance-master-delete', 'Delete', 'Delete Attendance Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(498, 'Attendance Master', 'attendance-master-active', 'Active', 'Active Attendance Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(499, 'Attendance Master', 'attendance-master-in-active', 'In-Active', 'In-Active Attendance Master', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(500, 'Attendance Master', 'attendance-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Attendance Master Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(501, 'Student Regular Attendance', 'student-attendance-index', 'Index', 'Student Regular Attendance Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(502, 'Student Regular Attendance', 'student-attendance-add', 'Add', 'Student Regular Attendance Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(503, 'Student Regular Attendance', 'student-attendance-delete', 'Delete', 'Delete Student Regular Attendance', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(504, 'Student Regular Attendance', 'student-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Regular Attendance Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(505, 'Student SubjectWise Attendance', 'subject-attendance-index', 'Index', 'Student SubjectWise Attendance Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(506, 'Student SubjectWise Attendance', 'subject-attendance-add', 'Add', 'Student SubjectWise Attendance Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(507, 'Student SubjectWise Attendance', 'subject-attendance-delete', 'Delete', 'Delete Student SubjectWise Attendance', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(508, 'Student SubjectWise Attendance', 'subject-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student SubjectWise Attendance Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(509, 'Student SubjectWise Attendance', 'subject-attendance-alert', 'Alert', 'Student SubjectWise Attendance Alert', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(510, 'Staff Attendance', 'staff-attendance-index', 'Index', 'Staff Attendance Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(511, 'Staff Attendance', 'staff-attendance-add', 'Add', 'Staff Attendance Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(512, 'Staff Attendance', 'staff-attendance-delete', 'Delete', 'Delete Staff Attendance', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(513, 'Staff Attendance', 'staff-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Attendance Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(514, 'Exam Management Permission', 'exam-management-index', 'Exam Management', 'Exam Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(515, 'Exam', 'exam-index', 'Index', 'Exam Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(516, 'Exam', 'exam-add', 'Add', 'Exam Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(517, 'Exam', 'exam-edit', 'Edit', 'Edit Exam', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(518, 'Exam', 'exam-delete', 'Delete', 'Delete Exam', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(519, 'Exam', 'exam-active', 'Active', 'Active Exam', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(520, 'Exam', 'exam-in-active', 'In-Active', 'In-Active Exam', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(521, 'Exam', 'exam-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exam Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(522, 'Exam', 'exam-admit-card', 'Admit Card', 'Exam Admit Card', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(523, 'Exam', 'exam-exam-routine', 'Routin/Schedule', 'Exam Routine/Schedule', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(524, 'Exam', 'exam-mark-ledger', 'MarkLedger', 'Exam Mark Ledger', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(525, 'Exam', 'exam-result-publish', 'Result Publish', 'Exam Result Publish', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(526, 'Exam', 'exam-result-un-publish', 'Result UnPublish', 'Exam Result UnPublish', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(527, 'Exam Schedule', 'exam-schedule-index', 'Index', 'Exam Schedule Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(528, 'Exam Schedule', 'exam-schedule-add', 'Add', 'Exam Schedule Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(529, 'Exam Schedule', 'exam-schedule-edit', 'Edit', 'Edit Exam Schedule', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(530, 'Exam Schedule', 'exam-schedule-delete', 'Delete', 'Delete Exam Schedule', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(531, 'Exam Schedule', 'exam-schedule-active', 'Active', 'Active Exam Schedule', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(532, 'Exam Schedule', 'exam-schedule-in-active', 'In-Active', 'In-Active Exam Schedule', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(533, 'Exam Mark Ledger', 'exam-mark-ledger-index', 'Index', 'Exam Mark Ledger Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(534, 'Exam Mark Ledger', 'exam-mark-ledger-add', 'Add', 'Exam Mark Ledger Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(535, 'Exam Mark Ledger', 'exam-mark-ledger-edit', 'Edit', 'Edit Exam Mark Ledger', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(536, 'Exam Mark Ledger', 'exam-mark-ledger-delete', 'Delete', 'Delete Exam Mark Ledger', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(537, 'Exam Mark Ledger', 'exam-mark-ledger-active', 'Active', 'Active Exam Mark Ledger', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(538, 'Exam Mark Ledger', 'exam-mark-ledger-in-active', 'In-Active', 'In-Active Exam Mark Ledger', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(539, 'Exam Print', 'exam-print-admitcard', 'Admit Card', 'Exam Admit Card', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(540, 'Exam Print', 'exam-print-routine', 'Routine/Schedule', 'Exam Routine/Schedule', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(541, 'Exam Print', 'exam-print-mark-sheet', 'Mark/Grade Sheet', 'Exam Mark/Grade Sheet', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(542, 'Exam Print', 'exam-print-mark-ledger', 'Mark Ledger', 'Exam Mark Ledger Sheet', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(543, 'Certificate Management Permission', 'certificate-management-index', 'Certificate Management', 'Certificate Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(544, 'Certificate', 'issue-certificate', 'Certificate Issue', 'Certificate Issue', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(545, 'Certificate', 'certificate-history', 'Certificate History', 'Certificate History', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(546, 'General Certificate', 'certificate-generate', 'General Certificate Generate', 'General Certificate Generate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(547, 'General Certificate', 'general-certificate-print', 'General Certificate Print', 'General Certificate Print', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(548, 'Certificate Template', 'certificate-template-index', 'Index', 'Certificate Template Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(549, 'Certificate Template', 'certificate-template-add', 'Add', 'Certificate Template Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(550, 'Certificate Template', 'certificate-template-edit', 'Edit', 'Edit Certificate Template', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(551, 'Certificate Template', 'certificate-template-view', 'View', 'View Certificate Template', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(552, 'Certificate Template', 'certificate-template-delete', 'Delete', 'Delete Certificate Template', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(553, 'Certificate Template', 'certificate-template-active', 'Active', 'Active Certificate Template', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(554, 'Certificate Template', 'certificate-template-in-active', 'In-Active', 'In-Active Certificate Template', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(555, 'Certificate Template', 'certificate-template-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Certificate Template', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(556, 'Attendance Certificate', 'attendance-certificate-index', 'Index', 'Attendance Certificate Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(557, 'Attendance Certificate', 'attendance-certificate-add', 'Add', 'Attendance Certificate Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(558, 'Attendance Certificate', 'attendance-certificate-edit', 'Edit', 'Edit Attendance Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(559, 'Attendance Certificate', 'attendance-certificate-view', 'View', 'View Attendance Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(560, 'Attendance Certificate', 'attendance-certificate-delete', 'Delete', 'Delete Attendance Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(561, 'Attendance Certificate', 'attendance-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Attendance Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(562, 'Attendance Certificate', 'attendance-certificate-print', 'Print', 'Print Attendance Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(563, 'Attendance Certificate', 'attendance-certificate-bulk-print', 'Bulk Print', 'Bulk Print Attendance Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(564, 'Transfer Certificate', 'transfer-certificate-index', 'Index', 'Transfer Certificate Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(565, 'Transfer Certificate', 'transfer-certificate-add', 'Add', 'Transfer Certificate Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(566, 'Transfer Certificate', 'transfer-certificate-edit', 'Edit', 'Edit Transfer Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(567, 'Transfer Certificate', 'transfer-certificate-view', 'View', 'View Transfer Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(568, 'Transfer Certificate', 'transfer-certificate-delete', 'Delete', 'Delete Transfer Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(569, 'Transfer Certificate', 'transfer-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Transfer Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(570, 'Transfer Certificate', 'transfer-certificate-print', 'Print', 'Print Transfer Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(571, 'Transfer Certificate', 'transfer-certificate-bulk-print', 'Bulk Print', 'Bulk Print Transfer Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(572, 'Bonafide Certificate', 'bonafide-certificate-index', 'Index', 'Bonafide Certificate Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(573, 'Bonafide Certificate', 'bonafide-certificate-add', 'Add', 'Bonafide Certificate Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(574, 'Bonafide Certificate', 'bonafide-certificate-edit', 'Edit', 'Edit Bonafide Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(575, 'Bonafide Certificate', 'bonafide-certificate-view', 'View', 'View Bonafide Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(576, 'Bonafide Certificate', 'bonafide-certificate-delete', 'Delete', 'Delete Bonafide Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(577, 'Bonafide Certificate', 'bonafide-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Bonafide Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(578, 'Bonafide Certificate', 'bonafide-certificate-print', 'Print', 'Print Bonafide Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(579, 'Bonafide Certificate', 'bonafide-certificate-bulk-print', 'Bulk Print', 'Bulk Print Bonafide Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(580, 'Course Completion Certificate', 'course-completion-certificate-index', 'Index', 'Course Completion Certificate Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(581, 'Course Completion Certificate', 'course-completion-certificate-add', 'Add', 'Course Completion Certificate Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(582, 'Course Completion Certificate', 'course-completion-certificate-edit', 'Edit', 'Edit Course Completion Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(583, 'Course Completion Certificate', 'course-completion-certificate-view', 'View', 'View Course Completion Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(584, 'Course Completion Certificate', 'course-completion-certificate-delete', 'Delete', 'Delete Course Completion Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(585, 'Course Completion Certificate', 'course-completion-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Course Completion Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(586, 'Course Completion Certificate', 'course-completion-certificate-print', 'Print', 'Print Course Completion Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(587, 'Course Completion Certificate', 'course-completion-certificate-bulk-print', 'Bulk Print', 'Bulk Print Course Completion Certificate', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(588, 'Hostel Management Permission', 'hostel-management-index', 'Hostel Management', 'Hostel Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(589, 'Hostel', 'hostel-index', 'Index', 'Hostel Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(590, 'Hostel', 'hostel-add', 'Add', 'Hostel Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(591, 'Hostel', 'hostel-view', 'view', 'Hostel View', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(592, 'Hostel', 'hostel-edit', 'Edit', 'Edit Hostel', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(593, 'Hostel', 'hostel-delete', 'Delete', 'Delete Hostel', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(594, 'Hostel', 'hostel-active', 'Active', 'Active Hostel', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(595, 'Hostel', 'hostel-in-active', 'In-Active', 'In-Active Hostel', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(596, 'Hostel', 'hostel-bulk-action', 'Bulk(Active,InActive,Delete)', 'Hostel Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(597, 'Room', 'room-add', 'Add', 'Room Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(598, 'Room', 'room-view', 'View', 'Room View', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(599, 'Room', 'room-edit', 'Edit', 'Edit Room', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(600, 'Room', 'room-delete', 'Delete', 'Delete Room', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(601, 'Room', 'room-active', 'Active', 'Active Room', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(602, 'Room', 'room-in-active', 'In-Active', 'In-Active Room', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(603, 'Room', 'room-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(604, 'Bed', 'bed-add', 'Add', 'Bed Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(605, 'Bed', 'bed-status', 'Status', 'Bed Status', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(606, 'Bed', 'bed-delete', 'Delete', 'Delete Bed', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(607, 'Bed', 'bed-active', 'Active', 'Active Bed', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(608, 'Bed', 'bed-in-active', 'In-Active', 'In-Active Bed', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(609, 'Bed', 'bed-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(610, 'Room Type', 'room-type-index', 'Index', 'Room Type Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(611, 'Room Type', 'room-type-add', 'Add', 'Room Type Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(612, 'Room Type', 'room-type-edit', 'Edit', 'Edit Room Type', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(613, 'Room Type', 'room-type-delete', 'Delete', 'Delete Room Type', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(614, 'Room Type', 'room-type-active', 'Active', 'Active Room Type', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(615, 'Room Type', 'room-type-in-active', 'In-Active', 'In-Active Room Type', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(616, 'Room Type', 'room-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Type Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(617, 'Resident', 'resident-index', 'Index', 'Resident Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(618, 'Resident', 'resident-add', 'Add', 'Resident Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(619, 'Resident', 'resident-edit', 'Edit', 'Edit Resident', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(620, 'Resident', 'resident-delete', 'Delete', 'Delete Resident', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(621, 'Resident', 'resident-bulk-action', 'Bulk(Active,InActive,Delete)', 'Resident Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(622, 'Resident', 'resident-renew', 'Renew', 'Renew Resident', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(623, 'Resident', 'resident-leave', 'Leave', 'Leave Resident', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(624, 'Resident', 'resident-shift', 'Shift', 'Shift Resident', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(625, 'Resident', 'resident-history', 'History', 'Resident History', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(626, 'Food', 'food-index', 'Index', 'Food Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(627, 'Food', 'food-add', 'Add', 'Food Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(628, 'Food', 'food-edit', 'Edit', 'Edit Food', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(629, 'Food', 'food-delete', 'Delete', 'Delete Food', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(630, 'Food', 'food-active', 'Active', 'Active Food', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(631, 'Food', 'food-in-active', 'In-Active', 'In-Active Food', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(632, 'Food', 'food-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(633, 'Food Category', 'food-category-index', 'Index', 'Food Category Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(634, 'Food Category', 'food-category-add', 'Add', 'Food Category Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(635, 'Food Category', 'food-category-edit', 'Edit', 'Edit Food Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(636, 'Food Category', 'food-category-delete', 'Delete', 'Delete Food Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(637, 'Food Category', 'food-category-active', 'Active', 'Active Food Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(638, 'Food Category', 'food-category-in-active', 'In-Active', 'In-Active Food Category', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(639, 'Food Category', 'food-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Category Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(640, 'Food Item', 'food-item-index', 'Index', 'Food Item Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(641, 'Food Item', 'food-item-add', 'Add', 'Food Item Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(642, 'Food Item', 'food-item-edit', 'Edit', 'Edit Food Item', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(643, 'Food Item', 'food-item-delete', 'Delete', 'Delete Food Item', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(644, 'Food Item', 'food-item-active', 'Active', 'Active Food Item', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(645, 'Food Item', 'food-item-in-active', 'In-Active', 'In-Active Food Item', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(646, 'Food Item', 'food-item-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Item Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(647, 'Eating Time', 'eating-time-index', 'Index', 'Eating Time Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(648, 'Eating Time', 'eating-time-add', 'Add', 'Eating Time Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(649, 'Eating Time', 'eating-time-edit', 'Edit', 'Edit Eating Time', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(650, 'Eating Time', 'eating-time-delete', 'Delete', 'Delete Eating Time', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(651, 'Eating Time', 'eating-time-active', 'Active', 'Active Eating Time', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(652, 'Eating Time', 'eating-time-in-active', 'In-Active', 'In-Active Eating Time', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(653, 'Eating Time', 'eating-time-bulk-action', 'Bulk(Active,InActive,Delete)', 'Eating Time Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(654, 'Transport Management Permission', 'transport-management-index', 'Transport Management', 'Transport Management', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(655, 'Transport Route', 'transport-route-index', 'Index', 'Transport Route Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(656, 'Transport Route', 'transport-route-add', 'Add', 'Transport Route Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(657, 'Transport Route', 'transport-route-edit', 'Edit', 'Edit Transport Route', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(658, 'Transport Route', 'transport-route-delete', 'Delete', 'Delete Transport Route', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(659, 'Transport Route', 'transport-route-active', 'Active', 'Active Transport Route', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(660, 'Transport Route', 'transport-route-in-active', 'In-Active', 'In-Active Transport Route', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(661, 'Transport Route', 'transport-route-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport Route Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(662, 'Vehicle', 'vehicle-index', 'Index', 'Vehicle Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(663, 'Vehicle', 'vehicle-add', 'Add', 'Vehicle Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(664, 'Vehicle', 'vehicle-edit', 'Edit', 'Edit Vehicle', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(665, 'Vehicle', 'vehicle-delete', 'Delete', 'Delete Vehicle', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(666, 'Vehicle', 'vehicle-active', 'Active', 'Active Vehicle', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(667, 'Vehicle', 'vehicle-in-active', 'In-Active', 'In-Active Vehicle', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(668, 'Vehicle', 'vehicle-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vehicle Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(669, 'Transport User/Traveller', 'transport-user-index', 'Index', 'Transport User/Traveller Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(670, 'Transport User/Traveller', 'transport-user-add', 'Add', 'Transport User/Traveller Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(671, 'Transport User/Traveller', 'transport-user-edit', 'Edit', 'Edit Transport User/Traveller', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(672, 'Transport User/Traveller', 'transport-user-delete', 'Delete', 'Delete Transport User/Traveller', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(673, 'Transport User/Traveller', 'transport-user-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport User/Traveller Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(674, 'Transport User/Traveller', 'transport-user-renew', 'Renew', 'Renew Transport User/Traveller', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(675, 'Transport User/Traveller', 'transport-user-leave', 'Leave', 'Leave Transport User/Traveller', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(676, 'Transport User/Traveller', 'transport-user-shift', 'Shift', 'Shift Transport User/Traveller', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(677, 'Transport User/Traveller', 'transport-user-history', 'History', 'Resident History', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(678, 'Notice & Alert Management Permission', 'notice-group-index', 'Notice & Alert Permission', 'Notice & Alert Permission', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(679, 'Notice', 'notice-index', 'Index', 'Notice Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(680, 'Notice', 'notice-add', 'Add', 'Notice Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(681, 'Notice', 'notice-edit', 'Edit', 'Edit Notice', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(682, 'Notice', 'notice-delete', 'Delete', 'Delete Notice', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(683, 'SMS/E-Mail', 'sms-email-index', 'Index', 'SMS/E-Mail Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(684, 'SMS/E-Mail', 'sms-email-delete', 'Delete', 'SMS/E-Mail Delete', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(685, 'SMS/E-Mail', 'sms-email-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bulk SMS/E-Mail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(686, 'SMS/E-Mail', 'sms-email-create', 'Create', 'Create SMS/E-Mail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(687, 'SMS/E-Mail', 'sms-email-send', 'Send', 'Send SMS/E-Mail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(688, 'SMS/E-Mail', 'sms-email-student-guardian-send', 'Student & Guardian', 'Student & Guardian SMS/E-Mail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(689, 'SMS/E-Mail', 'sms-email-staff-send', 'Staff', 'Staff SMS/E-Mail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(690, 'SMS/E-Mail', 'sms-email-individual-send', 'Individual', 'Individual SMS/E-Mail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(691, 'SMS/E-Mail', 'sms-email-fee-receipt', 'Fee Receipt', 'Fee ReceiptSMS/E-Mail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(692, 'SMS/E-Mail', 'sms-email-due-reminder', 'Due Reminder', 'Due Reminder SMS/E-Mail', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(693, 'SMS/E-Mail', 'sms-email-book-return-reminder', 'Book Return Reminder', 'Book Return Reminder', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(694, 'More(Assignment & Download) Management Permission', 'more-index', 'More(Assignment & Download) Permission', 'More(Assignment & Download) Permission', 1, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(695, 'Assignment', 'assignment-index', 'Index', 'Assignment Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(696, 'Assignment', 'assignment-add', 'Add', 'Assignment Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(697, 'Assignment', 'assignment-edit', 'Edit', 'Edit Assignment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(698, 'Assignment', 'assignment-view', 'View', 'View Assignment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(699, 'Assignment', 'assignment-delete', 'Delete', 'Delete Assignment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(700, 'Assignment', 'assignment-active', 'Active', 'Active Assignment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(701, 'Assignment', 'assignment-in-active', 'In-Active', 'In-Active Assignment', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(702, 'Assignment', 'assignment-bulk-action', 'Bulk(Active,InActive,Delete)', 'Assignment Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(703, 'Assignment Answer', 'assignment-answer-view', 'View', 'Assignment Answer View', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(704, 'Assignment Answer', 'assignment-answer-approve', 'Approve', 'Approve Assignment Answer', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(705, 'Assignment Answer', 'assignment-answer-reject', 'Reject', 'Reject Assignment Answer', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(706, 'Assignment Answer', 'assignment-answer-delete', 'Delete', 'Delete Assignment Answer', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(707, 'Assignment Answer', 'assignment-answer-bulk-action', 'Bulk(Approve, Reject,Delete)', 'Assignment Answer Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(708, 'Download', 'download-index', 'Index', 'Download Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(709, 'Download', 'download-add', 'Add', 'Download Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(710, 'Download', 'download-edit', 'Edit', 'Edit Download', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(711, 'Download', 'download-delete', 'Delete', 'Delete Download', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(712, 'Download', 'download-active', 'Active', 'Active Download', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(713, 'Download', 'download-in-active', 'In-Active', 'In-Active Download', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(714, 'Download', 'download-bulk-action', 'Bulk(Active,InActive,Delete)', 'Download Bulk Action', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(715, 'Meeting', 'meeting-index', 'Index', 'Meeting Index', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(716, 'Meeting', 'meeting-add', 'Add', 'Meeting Add', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(717, 'Meeting', 'meeting-delete', 'Delete', 'Delete Meeting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(718, 'Meeting', 'meeting-complete', 'Complete', 'Complete Meeting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(719, 'Meeting', 'meeting-start', 'Start', 'Start Meeting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(720, 'Meeting', 'meeting-pending', 'Pending', 'Pending Meeting', 0, '2021-09-27 10:05:30', '2021-09-27 10:05:30'),
(721, 'Meeting', 'meeting-bulk-action', 'Bulk(Active,InActive,Delete)', 'Meeting Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(722, 'Meeting', 'meeting-zoom-index', 'Zoom Server Index', 'Meeting Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(723, 'Meeting', 'sms-email-meeting', 'Send Meeting Alert', 'Meeting Alert Sending', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(724, 'Web Portal Content Management Permission', 'web-cms-index', 'Web CMS Permission', 'Web CMS Permission', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(725, 'Module', 'web-menu-dashboard', 'Dashboard', 'Dashboard', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(726, 'Module', 'web-menu-analytics', 'Analytics', 'Analytics', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(727, 'Module', 'web-menu-setting', 'Settings', 'Settings', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(728, 'Module', 'web-menu-menu-page', 'Menu & Pages', 'Menu & Pages', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(729, 'Module', 'web-menu-slider', 'Slider', 'Slider', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(730, 'Module', 'web-menu-notice', 'Notice', 'Notice', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(731, 'Module', 'web-menu-blog', 'Blog', 'Blog', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(732, 'Module', 'web-menu-event', 'Event', 'Event', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(733, 'Module', 'web-menu-services', 'Services', 'Services', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(734, 'Module', 'web-menu-gallery', 'Gallery', 'Gallery', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(735, 'Module', 'web-menu-download', 'Download', 'Download', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(736, 'Module', 'web-menu-faq', 'FAQ', 'FAQ', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(737, 'Module', 'web-menu-counter', 'Counter', 'Counter', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(738, 'Module', 'web-menu-client', 'Client', 'Client', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(739, 'Module', 'web-menu-testimonial', 'Testimonial', 'Testimonial', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(740, 'Module', 'web-menu-staff', 'Staff', 'Staff', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(741, 'Module', 'web-menu-pricing', 'Pricing', 'Pricing', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(742, 'Module', 'web-menu-registration', 'Online Registration', 'Online Registration', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(743, 'Module', 'web-menu-contact', 'Contact Detail Manager', 'Contact Detail Manager', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(744, 'Module', 'web-menu-alert', 'Alert/Notification Manager', 'Alert/Notification Manager', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(745, 'Module', 'web-menu-user-role', 'User & Role', 'User & Role', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(746, 'General Setting', 'web-settings-general-index', 'Index', 'General Setting Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(747, 'General Setting', 'web-settings-general-add', 'Add', 'General Setting Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(748, 'General Setting', 'web-settings-general-edit', 'Edit', 'Edit General Setting', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(749, 'HomePage Setting', 'web-settings-home-index', 'Index', 'HomePage Setting Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(750, 'HomePage Setting', 'web-settings-home-add', 'Add', 'HomePage Setting Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(751, 'HomePage Setting', 'web-settings-home-edit', 'Edit', 'Edit HomePage Setting', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(752, 'AboutUs Setting', 'web-settings-about-us-index', 'Index', 'AboutUs Setting Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(753, 'AboutUs Setting', 'web-settings-about-us-add', 'Add', 'AboutUs Setting Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(754, 'AboutUs Setting', 'web-settings-about-us-edit', 'Edit', 'Edit AboutUs Setting', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(755, 'ContactUs Setting', 'web-settings-contact-us-index', 'Index', 'ContactUs Setting Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(756, 'ContactUs Setting', 'web-settings-contact-us-add', 'Add', 'ContactUs Setting Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(757, 'ContactUs Setting', 'web-settings-contact-us-edit', 'Edit', 'Edit ContactUs Setting', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(758, 'Online Registration Setting', 'web-setting-registration-index', 'Index', 'Online Registration Setting Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(759, 'Online Registration Setting', 'web-setting-registration-add', 'Add', 'Online Registration Setting Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(760, 'Online Registration Setting', 'web-setting-registration-edit', 'Edit', 'Edit Online Registration Setting', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(761, 'Dashboard', 'web-dashboard-index', 'Index', 'Dashboard Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(762, 'Analytics', 'web-view-analytics', 'View', 'Analytics View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(763, 'Menu', 'web-menu-index', 'Index', 'Menu Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(764, 'Menu', 'web-menu-edit', 'Edit', 'Edit Menu', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(765, 'Page', 'web-page-index', 'Index', 'Page Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(766, 'Page', 'web-page-add', 'Add', 'Page Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(767, 'Page', 'web-page-edit', 'Edit', 'Edit Page', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(768, 'Page', 'web-page-view', 'View', 'View Page', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(769, 'Page', 'web-page-delete', 'Delete', 'Delete Page', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(770, 'Page', 'web-page-active', 'Active', 'Active Page', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(771, 'Page', 'web-page-in-active', 'In-Active', 'In-Active Page', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(772, 'Page', 'web-page-bulk-action', 'Bulk(Active,InActive,Delete)', 'Page Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(773, 'Slider', 'web-slider-index', 'Index', 'Slider Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(774, 'Slider', 'web-slider-add', 'Add', 'Slider Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(775, 'Slider', 'web-slider-view', 'View', 'Slider View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(776, 'Slider', 'web-slider-edit', 'Edit', 'Edit Slider', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(777, 'Slider', 'web-slider-delete', 'Delete', 'Delete Slider', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(778, 'Slider', 'web-slider-active', 'Active', 'Active Slider', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(779, 'Slider', 'web-slider-in-active', 'In-Active', 'In-Active Slider', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31');
INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(780, 'Slider', 'web-slider-bulk-action', 'Bulk(Active,InActive,Delete)', 'Slider Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(781, 'Notice', 'web-notice-index', 'Index', 'Notice Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(782, 'Notice', 'web-notice-add', 'Add', 'Notice Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(783, 'Notice', 'web-notice-view', 'View', 'Notice View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(784, 'Notice', 'web-notice-edit', 'Edit', 'Edit Notice', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(785, 'Notice', 'web-notice-delete', 'Delete', 'Delete Notice', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(786, 'Notice', 'web-notice-active', 'Active', 'Active Notice', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(787, 'Notice', 'web-notice-in-active', 'In-Active', 'In-Active Notice', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(788, 'Notice', 'web-notice-bulk-action', 'Bulk(Active,InActive,Delete)', 'Notice Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(789, 'Category', 'web-category-index', 'Index', 'Category Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(790, 'Category', 'web-category-add', 'Add', 'Category Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(791, 'Category', 'web-category-view', 'View', 'Category View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(792, 'Category', 'web-category-edit', 'Edit', 'Edit Category', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(793, 'Category', 'web-category-delete', 'Delete', 'Delete Category', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(794, 'Category', 'web-category-active', 'Active', 'Active Category', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(795, 'Category', 'web-category-in-active', 'In-Active', 'In-Active Category', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(796, 'Category', 'web-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Category Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(797, 'Blog', 'web-blog-index', 'Index', 'Blog Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(798, 'Blog', 'web-blog-add', 'Add', 'Blog Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(799, 'Blog', 'web-blog-view', 'View', 'Blog View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(800, 'Blog', 'web-blog-edit', 'Edit', 'Edit Blog', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(801, 'Blog', 'web-blog-delete', 'Delete', 'Delete Blog', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(802, 'Blog', 'web-blog-active', 'Active', 'Active Blog', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(803, 'Blog', 'web-blog-in-active', 'In-Active', 'In-Active Blog', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(804, 'Blog', 'web-blog-bulk-action', 'Bulk(Active,InActive,Delete)', 'Blog Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(805, 'Events', 'web-events-index', 'Index', 'Events Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(806, 'Events', 'web-events-add', 'Add', 'Events Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(807, 'Events', 'web-events-view', 'View', 'Events View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(808, 'Events', 'web-events-edit', 'Edit', 'Edit Events', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(809, 'Events', 'web-events-delete', 'Delete', 'Delete Events', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(810, 'Events', 'web-events-active', 'Active', 'Active Events', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(811, 'Events', 'web-events-in-active', 'In-Active', 'In-Active Events', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(812, 'Events', 'web-events-bulk-action', 'Bulk(Active,InActive,Delete)', 'Events Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(813, 'Services', 'web-services-index', 'Index', 'Services Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(814, 'Services', 'web-services-add', 'Add', 'Services Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(815, 'Services', 'web-services-view', 'View', 'Services View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(816, 'Services', 'web-services-edit', 'Edit', 'Edit Services', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(817, 'Services', 'web-services-delete', 'Delete', 'Delete Services', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(818, 'Services', 'web-services-active', 'Active', 'Active Services', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(819, 'Services', 'web-services-in-active', 'In-Active', 'In-Active Services', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(820, 'Services', 'web-services-bulk-action', 'Bulk(Active,InActive,Delete)', 'Services Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(821, 'Gallery', 'web-gallery-index', 'Index', 'Gallery Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(822, 'Gallery', 'web-gallery-add', 'Add', 'Gallery Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(823, 'Gallery', 'web-gallery-view', 'View', 'Gallery View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(824, 'Gallery', 'web-gallery-edit', 'Edit', 'Edit Gallery', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(825, 'Gallery', 'web-gallery-delete', 'Delete', 'Delete Gallery', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(826, 'Gallery', 'web-gallery-active', 'Active', 'Active Gallery', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(827, 'Gallery', 'web-gallery-in-active', 'In-Active', 'In-Active Gallery', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(828, 'Gallery', 'web-gallery-bulk-action', 'Bulk(Active,InActive,Delete)', 'Notice Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(829, 'Download', 'web-download-index', 'Index', 'Download Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(830, 'Download', 'web-download-add', 'Add', 'Download Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(831, 'Download', 'web-download-view', 'View', 'Download View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(832, 'Download', 'web-download-edit', 'Edit', 'Edit Download', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(833, 'Download', 'web-download-delete', 'Delete', 'Delete Download', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(834, 'Download', 'web-download-active', 'Active', 'Active Download', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(835, 'Download', 'web-download-in-active', 'In-Active', 'In-Active Download', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(836, 'Download', 'web-download-bulk-action', 'Bulk(Active,InActive,Delete)', 'Download Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(837, 'Staff', 'web-staff-index', 'Index', 'Staff Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(838, 'Staff', 'web-staff-add', 'Add', 'Staff Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(839, 'Staff', 'web-staff-view', 'View', 'Staff View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(840, 'Staff', 'web-staff-edit', 'Edit', 'Edit Staff', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(841, 'Staff', 'web-staff-delete', 'Delete', 'Delete Staff', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(842, 'Staff', 'web-staff-active', 'Active', 'Active Staff', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(843, 'Staff', 'web-staff-in-active', 'In-Active', 'In-Active Staff', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(844, 'Staff', 'web-staff-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(845, 'Testimonial', 'web-testimonial-index', 'Index', 'Testimonial Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(846, 'Testimonial', 'web-testimonial-add', 'Add', 'Testimonial Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(847, 'Testimonial', 'web-testimonial-view', 'View', 'Testimonial View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(848, 'Testimonial', 'web-testimonial-edit', 'Edit', 'Edit Testimonial', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(849, 'Testimonial', 'web-testimonial-delete', 'Delete', 'Delete Testimonial', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(850, 'Testimonial', 'web-testimonial-active', 'Active', 'Active Testimonial', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(851, 'Testimonial', 'web-testimonial-in-active', 'In-Active', 'In-Active Testimonial', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(852, 'Testimonial', 'web-testimonial-bulk-action', 'Bulk(Active,InActive,Delete)', 'Testimonial Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(853, 'FAQ', 'web-faq-index', 'Index', 'FAQ Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(854, 'FAQ', 'web-faq-add', 'Add', 'FAQ Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(855, 'FAQ', 'web-faq-view', 'View', 'FAQ View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(856, 'FAQ', 'web-faq-edit', 'Edit', 'Edit FAQ', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(857, 'FAQ', 'web-faq-delete', 'Delete', 'Delete FAQ', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(858, 'FAQ', 'web-faq-active', 'Active', 'Active FAQ', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(859, 'FAQ', 'web-faq-in-active', 'In-Active', 'In-Active FAQ', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(860, 'FAQ', 'web-faq-bulk-action', 'Bulk(Active,InActive,Delete)', 'FAQ Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(861, 'Counter', 'web-counter-index', 'Index', 'Counter Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(862, 'Counter', 'web-counter-add', 'Add', 'Counter Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(863, 'Counter', 'web-counter-view', 'View', 'Counter View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(864, 'Counter', 'web-counter-edit', 'Edit', 'Edit Counter', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(865, 'Counter', 'web-counter-delete', 'Delete', 'Delete Counter', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(866, 'Counter', 'web-counter-active', 'Active', 'Active Counter', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(867, 'Counter', 'web-counter-in-active', 'In-Active', 'In-Active Counter', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(868, 'Counter', 'web-counter-bulk-action', 'Bulk(Active,InActive,Delete)', 'Counter Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(869, 'Clint', 'web-clint-index', 'Index', 'Clint Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(870, 'Clint', 'web-clint-add', 'Add', 'Clint Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(871, 'Clint', 'web-clint-view', 'View', 'Clint View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(872, 'Clint', 'web-clint-edit', 'Edit', 'Edit Clint', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(873, 'Clint', 'web-clint-delete', 'Delete', 'Delete Clint', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(874, 'Clint', 'web-clint-active', 'Active', 'Active Clint', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(875, 'Clint', 'web-clint-in-active', 'In-Active', 'In-Active Clint', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(876, 'Clint', 'web-clint-bulk-action', 'Bulk(Active,InActive,Delete)', 'Clint Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(877, 'Pricing', 'web-pricing-index', 'Index', 'Pricing Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(878, 'Pricing', 'web-pricing-add', 'Add', 'Pricing Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(879, 'Pricing', 'web-pricing-view', 'View', 'Pricing View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(880, 'Pricing', 'web-pricing-edit', 'Edit', 'Edit Pricing', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(881, 'Pricing', 'web-pricing-delete', 'Delete', 'Delete Pricing', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(882, 'Pricing', 'web-pricing-active', 'Active', 'Active Pricing', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(883, 'Pricing', 'web-pricing-in-active', 'In-Active', 'In-Active Pricing', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(884, 'Pricing', 'web-pricing-bulk-action', 'Bulk(Active,InActive,Delete)', 'Pricing Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(885, 'Online Registration', 'web-registration-index', 'Index', 'Online Registration Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(886, 'Online Registration', 'web-registration-add', 'Add', 'Online Registration Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(887, 'Online Registration', 'web-registration-view', 'View', 'Online Registration View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(888, 'Online Registration', 'web-registration-edit', 'Edit', 'Edit Online Registration', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(889, 'Online Registration', 'web-registration-delete', 'Delete', 'Delete Online Registration', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(890, 'Online Registration', 'web-registration-active', 'Active', 'Active Online Registration', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(891, 'Online Registration', 'web-registration-in-active', 'In-Active', 'In-Active Online Registration', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(892, 'Online Registration', 'web-registration-bulk-action', 'Bulk(Active,InActive,Delete)', 'Online Registration Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(893, 'Online Registration', 'web-registration-delete-academic-info', 'Delete Academic Qualification', 'Delete Academic Qualification', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(894, 'Online Registration', 'web-registration-delete-work-experience', 'Delete Work Experience', 'Delete Work Experience', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(895, 'Registration Programme', 'web-programme-index', 'Index', 'Registration  ProgrammeIndex', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(896, 'Registration Programme', 'web-programme-add', 'Add', 'Registration  ProgrammeAdd', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(897, 'Registration Programme', 'web-programme-view', 'View', 'Registration  ProgrammeView', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(898, 'Registration Programme', 'web-programme-edit', 'Edit', 'Edit Registration Programme', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(899, 'Registration Programme', 'web-programme-delete', 'Delete', 'Delete Registration Programme', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(900, 'Registration Programme', 'web-programme-active', 'Active', 'Active Registration Programme', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(901, 'Registration Programme', 'web-programme-in-active', 'In-Active', 'In-Active Registration Programme', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(902, 'Registration Programme', 'web-programme-bulk-action', 'Bulk(Active,InActive,Delete)', 'Registration  ProgrammeBulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(903, 'Contact Detail Manager', 'web-contact-index', 'Index', 'Contact Detail Manager Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(904, 'Contact Detail Manager', 'web-contact-add', 'Add', 'Contact Detail Manager Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(905, 'Contact Detail Manager', 'web-contact-view', 'View', 'Contact Detail Manager View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(906, 'Contact Detail Manager', 'web-contact-edit', 'Edit', 'Edit Contact Detail Manager', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(907, 'Contact Detail Manager', 'web-contact-delete', 'Delete', 'Delete Contact Detail Manager', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(908, 'Contact Detail Manager', 'web-contact-active', 'Active', 'Active Contact Detail Manager', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(909, 'Contact Detail Manager', 'web-contact-in-active', 'In-Active', 'In-Active Contact Detail Manager', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(910, 'Contact Detail Manager', 'web-contact-bulk-action', 'Bulk(Active,InActive,Delete)', 'Contact Detail Manager Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(911, 'Contact Detail Manager', 'web-contact-import', 'Import Contact', 'Import Contact', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(912, 'Contact Group', 'web-contact-group-index', 'Index', 'Contact Detail Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(913, 'Contact Group', 'web-contact-group-add', 'Add', 'Contact Detail Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(914, 'Contact Group', 'web-contact-group-view', 'View', 'Contact Detail View', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(915, 'Contact Group', 'web-contact-group-edit', 'Edit', 'Edit Contact Group', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(916, 'Contact Group', 'web-contact-group-delete', 'Delete', 'Delete Contact Group', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(917, 'Contact Group', 'web-contact-group-active', 'Active', 'Active Contact Group', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(918, 'Contact Group', 'web-contact-group-in-active', 'In-Active', 'In-Active Contact Group', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(919, 'Contact Group', 'web-contact-group-bulk-action', 'Bulk(Active,InActive,Delete)', 'Contact Detail Bulk Action', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(920, 'Subscribers', 'web-subscribers-index', 'Index', 'Subscribers Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(921, 'Subscribers', 'web-subscribers-active', 'Active', 'Active Subscribers', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(922, 'Subscribers', 'web-subscribers-in-active', 'InActive', 'InActive Subscribers', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(923, 'Subscribers', 'web-subscribers-delete', 'Delete', 'Delete Subscribers', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(924, 'Subscribers', 'web-subscribers-import', 'Import', 'Import Subscribers', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(925, 'Subscribers', 'web-subscribers-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bul kAction Subscribers', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(926, 'ContactMessage', 'web-contact-us-index', 'Index', 'ContactMessage Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(927, 'ContactMessage', 'web-contact-us-view', 'View', 'ContactMessage Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(928, 'ContactMessage', 'web-contact-us-delete', 'Delete', 'Delete Message', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(929, 'User Notice', 'web-user-notice-index', 'Index', 'User Notice Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(930, 'User Notice', 'web-user-notice-add', 'Add', 'User Notice Add', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(931, 'User Notice', 'web-user-notice-edit', 'Edit', 'User Notice Edit', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(932, 'User Notice', 'web-user-notice-delete', 'Delete', 'User Notice Delete', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(933, 'SMS & Email', 'web-sms-email-index', 'Index', 'SMS & Email Index', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(934, 'SMS & Email', 'web-sms-email-create', 'Create', 'SMS & Email Create', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(935, 'SMS & Email', 'web-sms-email-send', 'Send', 'SMS & Email Send', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(936, 'SMS & Email', 'web-sms-email-delete', 'Delete', 'SMS & Email Delete', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(937, 'SMS & Email', 'web-sms-email-bulk-action', 'Bulk Action', 'SMS & Email Delete', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(938, 'SMS & Email', 'web-sms-email-subscriber', 'Mail Subscribers', 'Mail Subscribers', 0, '2021-09-27 10:05:31', '2021-09-27 10:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(100, 6),
(101, 1),
(101, 6),
(102, 1),
(102, 6),
(103, 1),
(103, 6),
(104, 1),
(104, 6),
(105, 1),
(105, 6),
(106, 1),
(106, 6),
(107, 1),
(107, 6),
(108, 1),
(108, 6),
(109, 1),
(109, 6),
(110, 1),
(110, 6),
(111, 1),
(111, 6),
(112, 1),
(112, 6),
(113, 1),
(113, 6),
(114, 1),
(114, 6),
(115, 1),
(115, 6),
(116, 1),
(116, 6),
(117, 1),
(117, 6),
(118, 1),
(118, 6),
(119, 1),
(119, 6),
(120, 1),
(120, 6),
(121, 1),
(121, 6),
(122, 1),
(122, 6),
(123, 1),
(123, 6),
(124, 1),
(124, 6),
(125, 1),
(125, 6),
(126, 1),
(126, 6),
(127, 1),
(127, 6),
(128, 1),
(128, 6),
(129, 1),
(129, 6),
(130, 1),
(130, 6),
(131, 1),
(131, 6),
(132, 1),
(132, 6),
(133, 1),
(133, 6),
(134, 1),
(134, 6),
(135, 1),
(135, 6),
(136, 1),
(136, 6),
(137, 1),
(137, 6),
(138, 1),
(138, 6),
(139, 1),
(139, 6),
(140, 1),
(140, 6),
(141, 1),
(141, 6),
(142, 1),
(142, 6),
(143, 1),
(143, 6),
(144, 1),
(144, 6),
(145, 1),
(145, 6),
(146, 1),
(146, 6),
(147, 1),
(147, 6),
(148, 1),
(148, 6),
(149, 1),
(149, 6),
(150, 1),
(150, 6),
(151, 1),
(151, 6),
(152, 1),
(152, 6),
(153, 1),
(153, 6),
(154, 1),
(154, 6),
(155, 1),
(155, 6),
(156, 1),
(156, 6),
(157, 1),
(157, 6),
(158, 1),
(158, 6),
(159, 1),
(159, 6),
(160, 1),
(160, 6),
(161, 1),
(161, 6),
(162, 1),
(162, 6),
(163, 1),
(163, 6),
(164, 1),
(164, 6),
(165, 1),
(165, 6),
(166, 1),
(166, 6),
(167, 1),
(167, 6),
(168, 1),
(168, 6),
(169, 1),
(169, 6),
(170, 1),
(170, 6),
(171, 1),
(171, 6),
(172, 1),
(172, 6),
(173, 1),
(173, 6),
(174, 1),
(174, 6),
(175, 1),
(175, 6),
(176, 1),
(176, 6),
(177, 1),
(177, 6),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(206, 6),
(207, 1),
(207, 6),
(208, 1),
(208, 6),
(209, 1),
(209, 6),
(210, 1),
(210, 6),
(211, 1),
(211, 6),
(212, 1),
(212, 6),
(213, 1),
(213, 6),
(214, 1),
(214, 6),
(215, 1),
(215, 6),
(216, 1),
(216, 6),
(217, 1),
(217, 6),
(218, 1),
(218, 6),
(219, 1),
(219, 6),
(220, 1),
(220, 6),
(221, 1),
(221, 6),
(222, 1),
(222, 6),
(223, 1),
(223, 6),
(224, 1),
(224, 6),
(225, 1),
(225, 6),
(226, 1),
(226, 6),
(227, 1),
(227, 6),
(228, 1),
(228, 6),
(229, 1),
(229, 6),
(230, 1),
(230, 6),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(272, 6),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1),
(440, 1),
(441, 1),
(442, 1),
(443, 1),
(444, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1),
(456, 1),
(457, 1),
(458, 1),
(459, 1),
(460, 1),
(461, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(469, 1),
(470, 1),
(471, 1),
(472, 1),
(473, 1),
(474, 1),
(475, 1),
(476, 1),
(477, 1),
(478, 1),
(479, 1),
(480, 1),
(481, 1),
(482, 1),
(483, 1),
(484, 1),
(485, 1),
(486, 1),
(487, 1),
(488, 1),
(489, 1),
(490, 1),
(491, 1),
(492, 1),
(493, 1),
(494, 1),
(495, 1),
(496, 1),
(497, 1),
(498, 1),
(499, 1),
(500, 1),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1);

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchanges`
--

CREATE TABLE `postal_exchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `ref_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchange_types`
--

CREATE TABLE `postal_exchange_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchange_types`
--

INSERT INTO `postal_exchange_types` (`id`, `created_by`, `last_updated_by`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'LETTER DISPATCH', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(2, 1, NULL, 'LETTER RECEIVE', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(3, 1, NULL, 'COURIER RECEIVE', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT 0,
  `sub_category_id` int(10) UNSIGNED DEFAULT 0,
  `warranty` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `cost_price` double(10,2) DEFAULT 0.00,
  `sale_price` double(10,2) DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `purchase_date` datetime NOT NULL,
  `grand_total_amount` int(11) NOT NULL,
  `total_discount` int(11) NOT NULL,
  `purchase_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `purchase_date` datetime NOT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `purchase_detail_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `register_date` datetime NOT NULL,
  `leave_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resident_histories`
--

CREATE TABLE `resident_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `residents_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin', '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(2, 'admin', 'Administrator', 'Administrator', '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(3, 'account', 'Accountant', 'Accountant', '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(4, 'library', 'Librarian', 'Librarian', '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(5, 'staff', 'Staff/Teacher', 'Staff', '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(6, 'student', 'Student', 'Student', '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(7, 'guardian', 'Guardian', 'Guardian', '2021-09-27 10:05:29', '2021-09-27 10:05:29'),
(8, 'web-admin', 'Web Admin', 'Web Admin', '2021-09-27 10:05:29', '2021-09-27 10:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 6),
(3, 6),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `room_type` int(10) UNSIGNED NOT NULL,
  `room_number` int(11) NOT NULL,
  `rate_perbed` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_vehicles`
--

CREATE TABLE `route_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `routes_id` int(10) UNSIGNED NOT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_pays`
--

CREATE TABLE `salary_pays` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `salary_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `allowance` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_pays`
--

INSERT INTO `salary_pays` (`id`, `created_by`, `last_updated_by`, `staff_id`, `salary_masters_id`, `date`, `paid_amount`, `allowance`, `fine`, `payment_mode`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, '2021-10-16 00:00:00', 15000, 0, 0, 'Cheque', NULL, 1, '2021-10-05 04:46:38', '2021-10-05 04:46:38'),
(2, 1, NULL, 1, 2, '2021-09-03 00:00:00', 15000, 0, 0, 'Cheque', NULL, 1, '2021-10-05 04:54:15', '2021-10-05 04:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_returns`
--

CREATE TABLE `sales_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `created_by`, `last_updated_by`, `semester`, `slug`, `staff_id`, `gradingType_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'A', 'A', 1, 1, 1, '2021-09-27 11:16:26', '2021-09-27 11:16:26'),
(2, 1, NULL, 'B', 'B', 1, 1, 1, '2021-09-27 11:31:20', '2021-09-27 11:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `semester_assets`
--

CREATE TABLE `semester_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `assets_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester_subject`
--

CREATE TABLE `semester_subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_emails`
--

CREATE TABLE `sms_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT 0,
  `email` tinyint(1) NOT NULL DEFAULT 0,
  `group` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `identity`, `logo`, `link`, `config`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Msg91', 'msg91', 'https://msg91.com', '{\"Authkey\":\"\",\"Sender\":\"\",\"Route\":\"\",\"Country\":\"\"}', 0, NULL, NULL),
(2, 'Msg94', 'msg94', 'http://www.msg94.com', '{\"Authkey\":\"\",\"Sender\":\"\",\"Route\":\"\",\"Country\":\"\"}', 0, NULL, NULL),
(3, 'KeswaTech', 'keswasms', 'http://ktsms.keswatech.com', '{\"Sender\":\"\",\"apiKey\":\"\"}', 0, NULL, NULL),
(4, 'Twilio', 'twilio', 'https://www.twilio.com', '{\"SID\":\"\",\"Token\":\"\",\"FromNumber\":\"\"}', 0, NULL, NULL),
(5, 'MessageBird', 'messagebird', 'https://www.messagebird.com', '{\"Originator\":\"\",\"AcccessKey\":\"\"}', 0, NULL, NULL),
(6, 'Clickatell', 'clickatell', 'http://clickatell.com', '{\"API_ID\":\"\",\"User\":\"\",\"Password\":\"\",\"Unicode\":\"0\"}', 0, NULL, NULL),
(7, 'BudgetSmsNet', 'budgetsms', 'https://www.budgetsms.net', '{\"Username\":\"\",\"UserID\":\"\",\"Handle\":\"\",\"From\":\"\"}', 0, NULL, NULL),
(8, 'Nexmo', 'nexmo', 'https://www.nexmo.com', '{\"From\":\"\",\"API_KEY\":\"\",\"API_SECRET\":\"\"}', 0, NULL, NULL),
(9, 'smsCountry', 'smscountry', 'https://www.smscountry.com', '{\"UserName\":\"\",\"Password\":\"\",\"SenderId\":\"\",\"Token\":\"\"}', 0, NULL, NULL),
(10, 'MsgClub', 'msgclub', 'http://msg.msgclub.net', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\"}', 0, NULL, NULL),
(11, 'Digimiles', 'digimiles', 'http://www.digimiles.in', '{\"UserName\":\"\",\"Password\":\"\",\"Type\":0,\"Sender_ID\":\"\"}', 0, NULL, NULL),
(12, 'Textlocal', 'textlocal', 'https://www.textlocal.in', '{\"apiKey\":\"\",\"sender\":\"\"}', 0, NULL, NULL),
(13, 'SmartSMS', 'smartsms', 'https://smartsmssolutions.com/', '{\"ACCESS_TOKEN\":\"\",\"Sender\":\"\",\"Routing\":\"2\",\"Type\":\"0\"}', 0, NULL, NULL),
(14, 'Sparrow', 'sparrow', 'http://sparrowsms.com', '{\"From\":\"\",\"Token\":\"\"}', 0, NULL, NULL),
(15, 'InitiativeNepal', 'aayosms', 'https://www.ininepal.com', '{\"Sender\":\"\",\"UserName\":\"\",\"Password\":\"\"}', 0, NULL, NULL),
(16, 'SendPK', 'sendpk', 'https://sendpk.com/api.php', '{\"UserName\":\"\",\"Password\":\"\",\"Sender\":\"\",\"Type\":\"\"}', 0, NULL, NULL),
(17, 'LifetimeSMS', 'lifetimesms', 'http://lifetimesms.com', '{\"ApiToken\":\"\",\"ApiSecret\":\"\",\"From\":\"\"}', 0, NULL, NULL),
(18, 'SmsCluster', 'smscluster', 'http://www.smscluster.com', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\",\"smsContentType\":\"English\"}', 0, NULL, NULL),
(19, 'marketsmsPK', 'marketsms', 'http://www.marketsms.pk', '{\"UserName\":\"\",\"Password\":\"\",\"From\":\"\"}', 0, NULL, NULL),
(20, 'springEdge', 'springedge', 'http://springedge.com', '{\"API_KEY\":\"\",\"SenderID\":\"\"}', 0, NULL, NULL),
(21, 'africastalking', 'africastalking', 'https://africastalking.com', '{\"API_KEY\":\"\",\"UserName\":\"\"}', 0, NULL, NULL),
(22, 'TheSMSCentral', 'thesmscentral', 'https://thesmscentral.com', '{\"ApiToken\":\"\",\"Sender\":\"\"}', 0, NULL, NULL),
(23, 'AakashNepal', 'aakashsms', 'https://aakashsms.com', '{\"AuthToken\":\"\"}', 0, NULL, NULL),
(24, 'FullTimeBulk', 'fulltimesms', 'http://www.sms.fulltimesms.com', '{\"ApiToken\":\"\",\"ApiSecret\":\"\",\"From\":\"\"}', 0, NULL, NULL),
(25, 'AmetechSolution', 'ametechsolution', 'https://ametechsolution.in', '{\"User\":\"\",\"Auth\":\"\",\"Sender\":\"\"}', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL,
  `designation` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `created_by`, `last_updated_by`, `reg_no`, `join_date`, `designation`, `first_name`, `middle_name`, `last_name`, `father_name`, `mother_name`, `date_of_birth`, `gender`, `blood_group`, `nationality`, `address`, `state`, `country`, `temp_address`, `temp_state`, `temp_country`, `home_phone`, `mobile_1`, `mobile_2`, `mother_tongue`, `email`, `qualification`, `experience`, `experience_info`, `other_info`, `staff_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'S001', '2021-09-02 00:00:00', 1, 'SAURAV', NULL, 'KUMAR', 'PANKAJ KUMAR', NULL, '2001-01-12 00:00:00', 'MALE', 'B+', 'INDIAN', 'PATNA', 'BIHAR', 'INDIA', 'PATNA', 'BIHAR', 'INDIA', '9770233333', '9845120365', '7541268520', 'HINDI', 'saurav@gmail.com', 'GRADUATION', '1', NULL, NULL, '', 1, '2021-09-27 10:22:51', '2021-09-27 10:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `staff_designations`
--

CREATE TABLE `staff_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_designations`
--

INSERT INTO `staff_designations` (`id`, `created_by`, `last_updated_by`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Teacher', 1, '2021-09-27 10:20:47', '2021-09-27 10:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `transaction_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `qty_in` int(11) DEFAULT 0,
  `qty_out` int(11) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `university_reg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `academic_status` int(10) UNSIGNED DEFAULT NULL,
  `batch` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_id_card_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_id_card_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `created_by`, `last_updated_by`, `reg_no`, `reg_date`, `university_reg`, `faculty`, `semester`, `academic_status`, `batch`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `blood_group`, `religion`, `caste`, `nationality`, `national_id_type`, `national_id_number`, `extra_id_card_type`, `extra_id_card_number`, `mother_tongue`, `email`, `extra_info`, `student_image`, `student_signature`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'STU1001', '2021-09-01 00:00:00', '1001', 2, 1, 1, 1, 'RAHUL', NULL, 'KUMAR', '2016-09-01 00:00:00', 'MALE', 'A+', 'HINDU', NULL, 'INDIAN', '1032456987', NULL, NULL, NULL, 'HINDI', 'rahul@gmail.com', NULL, 'A001.jpeg', '', 1, '2021-09-27 11:55:09', '2021-09-27 11:57:24'),
(2, 1, NULL, 'STU002', '2021-09-01 00:00:00', '1001', 3, 1, 3, 2, 'PANKAJ', NULL, 'KUMAR', '2021-09-10 00:00:00', 'MALE', 'A+', 'HINDU', NULL, 'INDIAN', '1032456987', NULL, NULL, NULL, NULL, 'pankaj@gmail.com', NULL, '', '', 1, '2021-09-29 04:24:58', '2021-10-05 03:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `student_batches`
--

CREATE TABLE `student_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_batches`
--

INSERT INTO `student_batches` (`id`, `created_by`, `last_updated_by`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2020-21', 1, '2021-09-27 10:17:23', '2021-09-27 10:17:23'),
(2, 1, NULL, '2021-22', 1, '2021-10-04 08:03:34', '2021-10-04 08:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `student_guardians`
--

CREATE TABLE `student_guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `guardians_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_guardians`
--

INSERT INTO `student_guardians` (`id`, `students_id`, `guardians_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-09-27 11:55:09', '2021-09-27 11:55:09'),
(2, 2, 2, '2021-09-29 04:24:59', '2021-09-29 04:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `student_statuses`
--

CREATE TABLE `student_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_statuses`
--

INSERT INTO `student_statuses` (`id`, `created_by`, `last_updated_by`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'New Admission', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(2, 1, 1, 'Continue', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(3, 1, 1, 'Pass Out', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(4, 1, 1, 'Back Continue', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(5, 1, 1, 'Drop Out', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(6, 1, 1, 'Transfer in', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(7, 1, 1, 'Transfer Out', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31'),
(8, 1, 1, 'Online Registration', 1, '2021-09-27 10:05:31', '2021-09-27 10:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_mark_theory` int(11) DEFAULT NULL,
  `pass_mark_theory` int(11) DEFAULT NULL,
  `full_mark_practical` int(11) DEFAULT NULL,
  `pass_mark_practical` int(11) DEFAULT NULL,
  `credit_hour` int(11) DEFAULT NULL,
  `sub_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `created_by`, `last_updated_by`, `title`, `code`, `full_mark_theory`, `pass_mark_theory`, `full_mark_practical`, `pass_mark_practical`, `credit_hour`, `sub_type`, `class_type`, `staff_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'English', 'S001', 100, 30, 100, 30, 1, 'Compulsory', 'Theory', 1, NULL, 1, '2021-09-27 10:25:23', '2021-09-27 10:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `subject_attendances`
--

CREATE TABLE `subject_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `attendance_type` int(11) NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT 0,
  `day_2` int(11) NOT NULL DEFAULT 0,
  `day_3` int(11) NOT NULL DEFAULT 0,
  `day_4` int(11) NOT NULL DEFAULT 0,
  `day_5` int(11) NOT NULL DEFAULT 0,
  `day_6` int(11) NOT NULL DEFAULT 0,
  `day_7` int(11) NOT NULL DEFAULT 0,
  `day_8` int(11) NOT NULL DEFAULT 0,
  `day_9` int(11) NOT NULL DEFAULT 0,
  `day_10` int(11) NOT NULL DEFAULT 0,
  `day_11` int(11) NOT NULL DEFAULT 0,
  `day_12` int(11) NOT NULL DEFAULT 0,
  `day_13` int(11) NOT NULL DEFAULT 0,
  `day_14` int(11) NOT NULL DEFAULT 0,
  `day_15` int(11) NOT NULL DEFAULT 0,
  `day_16` int(11) NOT NULL DEFAULT 0,
  `day_17` int(11) NOT NULL DEFAULT 0,
  `day_18` int(11) NOT NULL DEFAULT 0,
  `day_19` int(11) NOT NULL DEFAULT 0,
  `day_20` int(11) NOT NULL DEFAULT 0,
  `day_21` int(11) NOT NULL DEFAULT 0,
  `day_22` int(11) NOT NULL DEFAULT 0,
  `day_23` int(11) NOT NULL DEFAULT 0,
  `day_24` int(11) NOT NULL DEFAULT 0,
  `day_25` int(11) NOT NULL DEFAULT 0,
  `day_26` int(11) NOT NULL DEFAULT 0,
  `day_27` int(11) NOT NULL DEFAULT 0,
  `day_28` int(11) NOT NULL DEFAULT 0,
  `day_29` int(11) NOT NULL DEFAULT 0,
  `day_30` int(11) NOT NULL DEFAULT 0,
  `day_31` int(11) NOT NULL DEFAULT 0,
  `day_32` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `timezone` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `timezone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Africa/Abidjan', 0, NULL, '2021-09-28 08:28:22'),
(2, 'Africa/Accra', 0, NULL, '2021-09-28 08:28:22'),
(3, 'Africa/Addis_Ababa', 0, NULL, '2021-09-28 08:28:22'),
(4, 'Africa/Algiers', 0, NULL, '2021-09-28 08:28:22'),
(5, 'Africa/Asmara', 0, NULL, '2021-09-28 08:28:22'),
(6, 'Africa/Asmera', 0, NULL, '2021-09-28 08:28:22'),
(7, 'Africa/Bamako', 0, NULL, '2021-09-28 08:28:22'),
(8, 'Africa/Bangui', 0, NULL, '2021-09-28 08:28:22'),
(9, 'Africa/Banjul', 0, NULL, '2021-09-28 08:28:22'),
(10, 'Africa/Bissau', 0, NULL, '2021-09-28 08:28:22'),
(11, 'Africa/Blantyre', 0, NULL, '2021-09-28 08:28:22'),
(12, 'Africa/Brazzaville', 0, NULL, '2021-09-28 08:28:22'),
(13, 'Africa/Bujumbura', 0, NULL, '2021-09-28 08:28:22'),
(14, 'Africa/Cairo', 0, NULL, '2021-09-28 08:28:22'),
(15, 'Africa/Casablanca', 0, NULL, '2021-09-28 08:28:22'),
(16, 'Africa/Ceuta', 0, NULL, '2021-09-28 08:28:22'),
(17, 'Africa/Conakry', 0, NULL, '2021-09-28 08:28:22'),
(18, 'Africa/Dakar', 0, NULL, '2021-09-28 08:28:22'),
(19, 'Africa/Dar_es_Salaam', 0, NULL, '2021-09-28 08:28:22'),
(20, 'Africa/Djibouti', 0, NULL, '2021-09-28 08:28:22'),
(21, 'Africa/Douala', 0, NULL, '2021-09-28 08:28:22'),
(22, 'Africa/El_Aaiun', 0, NULL, '2021-09-28 08:28:22'),
(23, 'Africa/Freetown', 0, NULL, '2021-09-28 08:28:22'),
(24, 'Africa/Gaborone', 0, NULL, '2021-09-28 08:28:22'),
(25, 'Africa/Harare', 0, NULL, '2021-09-28 08:28:22'),
(26, 'Africa/Johannesburg', 0, NULL, '2021-09-28 08:28:22'),
(27, 'Africa/Juba', 0, NULL, '2021-09-28 08:28:22'),
(28, 'Africa/Kampala', 0, NULL, '2021-09-28 08:28:22'),
(29, 'Africa/Khartoum', 0, NULL, '2021-09-28 08:28:22'),
(30, 'Africa/Kigali', 0, NULL, '2021-09-28 08:28:22'),
(31, 'Africa/Kinshasa', 0, NULL, '2021-09-28 08:28:22'),
(32, 'Africa/Lagos', 0, NULL, '2021-09-28 08:28:22'),
(33, 'Africa/Libreville', 0, NULL, '2021-09-28 08:28:22'),
(34, 'Africa/Lome', 0, NULL, '2021-09-28 08:28:22'),
(35, 'Africa/Luanda', 0, NULL, '2021-09-28 08:28:22'),
(36, 'Africa/Lubumbashi', 0, NULL, '2021-09-28 08:28:22'),
(37, 'Africa/Lusaka', 0, NULL, '2021-09-28 08:28:22'),
(38, 'Africa/Malabo', 0, NULL, '2021-09-28 08:28:22'),
(39, 'Africa/Maputo', 0, NULL, '2021-09-28 08:28:22'),
(40, 'Africa/Maseru', 0, NULL, '2021-09-28 08:28:22'),
(41, 'Africa/Mbabane', 0, NULL, '2021-09-28 08:28:22'),
(42, 'Africa/Mogadishu', 0, NULL, '2021-09-28 08:28:22'),
(43, 'Africa/Monrovia', 0, NULL, '2021-09-28 08:28:22'),
(44, 'Africa/Nairobi', 0, NULL, '2021-09-28 08:28:22'),
(45, 'Africa/Ndjamena', 0, NULL, '2021-09-28 08:28:22'),
(46, 'Africa/Niamey', 0, NULL, '2021-09-28 08:28:22'),
(47, 'Africa/Nouakchott', 0, NULL, '2021-09-28 08:28:22'),
(48, 'Africa/Ouagadougou', 0, NULL, '2021-09-28 08:28:22'),
(49, 'Africa/Porto-Novo', 0, NULL, '2021-09-28 08:28:22'),
(50, 'Africa/Sao_Tome', 0, NULL, '2021-09-28 08:28:22'),
(51, 'Africa/Timbuktu', 0, NULL, '2021-09-28 08:28:22'),
(52, 'Africa/Tripoli', 0, NULL, '2021-09-28 08:28:22'),
(53, 'Africa/Tunis', 0, NULL, '2021-09-28 08:28:22'),
(54, 'Africa/Windhoek', 0, NULL, '2021-09-28 08:28:22'),
(55, 'America/Adak', 0, NULL, '2021-09-28 08:28:22'),
(56, 'America/Anchorage', 0, NULL, '2021-09-28 08:28:22'),
(57, 'America/Anguilla', 0, NULL, '2021-09-28 08:28:22'),
(58, 'America/Antigua', 0, NULL, '2021-09-28 08:28:22'),
(59, 'America/Araguaina', 0, NULL, '2021-09-28 08:28:22'),
(60, 'America/Argentina/Buenos_Aires', 0, NULL, '2021-09-28 08:28:22'),
(61, 'America/Argentina/Catamarca', 0, NULL, '2021-09-28 08:28:22'),
(62, 'America/Argentina/ComodRivadavia', 0, NULL, '2021-09-28 08:28:22'),
(63, 'America/Argentina/Cordoba', 0, NULL, '2021-09-28 08:28:22'),
(64, 'America/Argentina/Jujuy', 0, NULL, '2021-09-28 08:28:22'),
(65, 'America/Argentina/La_Rioja', 0, NULL, '2021-09-28 08:28:22'),
(66, 'America/Argentina/Mendoza', 0, NULL, '2021-09-28 08:28:22'),
(67, 'America/Argentina/Rio_Gallegos', 0, NULL, '2021-09-28 08:28:22'),
(68, 'America/Argentina/Salta', 0, NULL, '2021-09-28 08:28:22'),
(69, 'America/Argentina/San_Juan', 0, NULL, '2021-09-28 08:28:22'),
(70, 'America/Argentina/San_Luis', 0, NULL, '2021-09-28 08:28:22'),
(71, 'America/Argentina/Tucuman', 0, NULL, '2021-09-28 08:28:22'),
(72, 'America/Argentina/Ushuaia', 0, NULL, '2021-09-28 08:28:22'),
(73, 'America/Aruba', 0, NULL, '2021-09-28 08:28:22'),
(74, 'America/Asuncion', 0, NULL, '2021-09-28 08:28:22'),
(75, 'America/Atikokan', 0, NULL, '2021-09-28 08:28:22'),
(76, 'America/Atka', 0, NULL, '2021-09-28 08:28:22'),
(77, 'America/Bahia', 0, NULL, '2021-09-28 08:28:22'),
(78, 'America/Bahia_Banderas', 0, NULL, '2021-09-28 08:28:22'),
(79, 'America/Barbados', 0, NULL, '2021-09-28 08:28:22'),
(80, 'America/Belem', 0, NULL, '2021-09-28 08:28:22'),
(81, 'America/Belize', 0, NULL, '2021-09-28 08:28:22'),
(82, 'America/Blanc-Sablon', 0, NULL, '2021-09-28 08:28:22'),
(83, 'America/Boa_Vista', 0, NULL, '2021-09-28 08:28:22'),
(84, 'America/Bogota', 0, NULL, '2021-09-28 08:28:22'),
(85, 'America/Boise', 0, NULL, '2021-09-28 08:28:22'),
(86, 'America/Buenos_Aires', 0, NULL, '2021-09-28 08:28:22'),
(87, 'America/Cambridge_Bay', 0, NULL, '2021-09-28 08:28:22'),
(88, 'America/Campo_Grande', 0, NULL, '2021-09-28 08:28:22'),
(89, 'America/Cancun', 0, NULL, '2021-09-28 08:28:22'),
(90, 'America/Caracas', 0, NULL, '2021-09-28 08:28:22'),
(91, 'America/Catamarca', 0, NULL, '2021-09-28 08:28:22'),
(92, 'America/Cayenne', 0, NULL, '2021-09-28 08:28:22'),
(93, 'America/Cayman', 0, NULL, '2021-09-28 08:28:22'),
(94, 'America/Chicago', 0, NULL, '2021-09-28 08:28:22'),
(95, 'America/Chihuahua', 0, NULL, '2021-09-28 08:28:22'),
(96, 'America/Coral_Harbour', 0, NULL, '2021-09-28 08:28:22'),
(97, 'America/Cordoba', 0, NULL, '2021-09-28 08:28:22'),
(98, 'America/Costa_Rica', 0, NULL, '2021-09-28 08:28:22'),
(99, 'America/Creston', 0, NULL, '2021-09-28 08:28:22'),
(100, 'America/Cuiaba', 0, NULL, '2021-09-28 08:28:22'),
(101, 'America/Curacao', 0, NULL, '2021-09-28 08:28:22'),
(102, 'America/Danmarkshavn', 0, NULL, '2021-09-28 08:28:22'),
(103, 'America/Dawson', 0, NULL, '2021-09-28 08:28:22'),
(104, 'America/Dawson_Creek', 0, NULL, '2021-09-28 08:28:22'),
(105, 'America/Denver', 0, NULL, '2021-09-28 08:28:22'),
(106, 'America/Detroit', 0, NULL, '2021-09-28 08:28:22'),
(107, 'America/Dominica', 0, NULL, '2021-09-28 08:28:22'),
(108, 'America/Edmonton', 0, NULL, '2021-09-28 08:28:22'),
(109, 'America/Eirunepe', 0, NULL, '2021-09-28 08:28:22'),
(110, 'America/El_Salvador', 0, NULL, '2021-09-28 08:28:22'),
(111, 'America/Ensenada', 0, NULL, '2021-09-28 08:28:22'),
(112, 'America/Fort_Wayne', 0, NULL, '2021-09-28 08:28:22'),
(113, 'America/Fortaleza', 0, NULL, '2021-09-28 08:28:22'),
(114, 'America/Glace_Bay', 0, NULL, '2021-09-28 08:28:22'),
(115, 'America/Godthab', 0, NULL, '2021-09-28 08:28:22'),
(116, 'America/Goose_Bay', 0, NULL, '2021-09-28 08:28:22'),
(117, 'America/Grand_Turk', 0, NULL, '2021-09-28 08:28:22'),
(118, 'America/Grenada', 0, NULL, '2021-09-28 08:28:22'),
(119, 'America/Guadeloupe', 0, NULL, '2021-09-28 08:28:22'),
(120, 'America/Guatemala', 0, NULL, '2021-09-28 08:28:22'),
(121, 'America/Guayaquil', 0, NULL, '2021-09-28 08:28:22'),
(122, 'America/Guyana', 0, NULL, '2021-09-28 08:28:22'),
(123, 'America/Halifax', 0, NULL, '2021-09-28 08:28:22'),
(124, 'America/Havana', 0, NULL, '2021-09-28 08:28:22'),
(125, 'America/Hermosillo', 0, NULL, '2021-09-28 08:28:22'),
(126, 'America/Indiana/Indianapolis', 0, NULL, '2021-09-28 08:28:22'),
(127, 'America/Indiana/Knox', 0, NULL, '2021-09-28 08:28:22'),
(128, 'America/Indiana/Marengo', 0, NULL, '2021-09-28 08:28:22'),
(129, 'America/Indiana/Petersburg', 0, NULL, '2021-09-28 08:28:22'),
(130, 'America/Indiana/Tell_City', 0, NULL, '2021-09-28 08:28:22'),
(131, 'America/Indiana/Vevay', 0, NULL, '2021-09-28 08:28:22'),
(132, 'America/Indiana/Vincennes', 0, NULL, '2021-09-28 08:28:22'),
(133, 'America/Indiana/Winamac', 0, NULL, '2021-09-28 08:28:22'),
(134, 'America/Indianapolis', 0, NULL, '2021-09-28 08:28:22'),
(135, 'America/Inuvik', 0, NULL, '2021-09-28 08:28:22'),
(136, 'America/Iqaluit', 0, NULL, '2021-09-28 08:28:22'),
(137, 'America/Jamaica', 0, NULL, '2021-09-28 08:28:22'),
(138, 'America/Jujuy', 0, NULL, '2021-09-28 08:28:22'),
(139, 'America/Juneau', 0, NULL, '2021-09-28 08:28:22'),
(140, 'America/Kentucky/Louisville', 0, NULL, '2021-09-28 08:28:22'),
(141, 'America/Kentucky/Monticello', 0, NULL, '2021-09-28 08:28:22'),
(142, 'America/Knox_IN', 0, NULL, '2021-09-28 08:28:22'),
(143, 'America/Kralendijk', 0, NULL, '2021-09-28 08:28:22'),
(144, 'America/La_Paz', 0, NULL, '2021-09-28 08:28:22'),
(145, 'America/Lima', 0, NULL, '2021-09-28 08:28:22'),
(146, 'America/Los_Angeles', 0, NULL, '2021-09-28 08:28:22'),
(147, 'America/Louisville', 0, NULL, '2021-09-28 08:28:22'),
(148, 'America/Lower_Princes', 0, NULL, '2021-09-28 08:28:22'),
(149, 'America/Maceio', 0, NULL, '2021-09-28 08:28:22'),
(150, 'America/Managua', 0, NULL, '2021-09-28 08:28:22'),
(151, 'America/Manaus', 0, NULL, '2021-09-28 08:28:22'),
(152, 'America/Marigot', 0, NULL, '2021-09-28 08:28:22'),
(153, 'America/Martinique', 0, NULL, '2021-09-28 08:28:22'),
(154, 'America/Matamoros', 0, NULL, '2021-09-28 08:28:22'),
(155, 'America/Mazatlan', 0, NULL, '2021-09-28 08:28:22'),
(156, 'America/Mendoza', 0, NULL, '2021-09-28 08:28:22'),
(157, 'America/Menominee', 0, NULL, '2021-09-28 08:28:22'),
(158, 'America/Merida', 0, NULL, '2021-09-28 08:28:22'),
(159, 'America/Metlakatla', 0, NULL, '2021-09-28 08:28:22'),
(160, 'America/Mexico_City', 0, NULL, '2021-09-28 08:28:22'),
(161, 'America/Miquelon', 0, NULL, '2021-09-28 08:28:22'),
(162, 'America/Moncton', 0, NULL, '2021-09-28 08:28:22'),
(163, 'America/Monterrey', 0, NULL, '2021-09-28 08:28:22'),
(164, 'America/Montevideo', 0, NULL, '2021-09-28 08:28:22'),
(165, 'America/Montreal', 0, NULL, '2021-09-28 08:28:22'),
(166, 'America/Montserrat', 0, NULL, '2021-09-28 08:28:22'),
(167, 'America/Nassau', 0, NULL, '2021-09-28 08:28:22'),
(168, 'America/New_York', 0, NULL, '2021-09-28 08:28:22'),
(169, 'America/Nipigon', 0, NULL, '2021-09-28 08:28:22'),
(170, 'America/Nome', 0, NULL, '2021-09-28 08:28:22'),
(171, 'America/Noronha', 0, NULL, '2021-09-28 08:28:22'),
(172, 'America/North_Dakota/Beulah', 0, NULL, '2021-09-28 08:28:22'),
(173, 'America/North_Dakota/Center', 0, NULL, '2021-09-28 08:28:22'),
(174, 'America/North_Dakota/New_Salem', 0, NULL, '2021-09-28 08:28:22'),
(175, 'America/Ojinaga', 0, NULL, '2021-09-28 08:28:22'),
(176, 'America/Panama', 0, NULL, '2021-09-28 08:28:22'),
(177, 'America/Pangnirtung', 0, NULL, '2021-09-28 08:28:22'),
(178, 'America/Paramaribo', 0, NULL, '2021-09-28 08:28:22'),
(179, 'America/Phoenix', 0, NULL, '2021-09-28 08:28:22'),
(180, 'America/Port-au-Prince', 0, NULL, '2021-09-28 08:28:22'),
(181, 'America/Port_of_Spain', 0, NULL, '2021-09-28 08:28:22'),
(182, 'America/Porto_Acre', 0, NULL, '2021-09-28 08:28:22'),
(183, 'America/Porto_Velho', 0, NULL, '2021-09-28 08:28:22'),
(184, 'America/Puerto_Rico', 0, NULL, '2021-09-28 08:28:22'),
(185, 'America/Rainy_River', 0, NULL, '2021-09-28 08:28:22'),
(186, 'America/Rankin_Inlet', 0, NULL, '2021-09-28 08:28:22'),
(187, 'America/Recife', 0, NULL, '2021-09-28 08:28:22'),
(188, 'America/Regina', 0, NULL, '2021-09-28 08:28:22'),
(189, 'America/Resolute', 0, NULL, '2021-09-28 08:28:22'),
(190, 'America/Rio_Branco', 0, NULL, '2021-09-28 08:28:22'),
(191, 'America/Rosario', 0, NULL, '2021-09-28 08:28:22'),
(192, 'America/Santa_Isabel', 0, NULL, '2021-09-28 08:28:22'),
(193, 'America/Santarem', 0, NULL, '2021-09-28 08:28:22'),
(194, 'America/Santiago', 0, NULL, '2021-09-28 08:28:22'),
(195, 'America/Santo_Domingo', 0, NULL, '2021-09-28 08:28:22'),
(196, 'America/Sao_Paulo', 0, NULL, '2021-09-28 08:28:22'),
(197, 'America/Scoresbysund', 0, NULL, '2021-09-28 08:28:22'),
(198, 'America/Shiprock', 0, NULL, '2021-09-28 08:28:22'),
(199, 'America/Sitka', 0, NULL, '2021-09-28 08:28:22'),
(200, 'America/St_Barthelemy', 0, NULL, '2021-09-28 08:28:22'),
(201, 'America/St_Johns', 0, NULL, '2021-09-28 08:28:22'),
(202, 'America/St_Kitts', 0, NULL, '2021-09-28 08:28:22'),
(203, 'America/St_Lucia', 0, NULL, '2021-09-28 08:28:22'),
(204, 'America/St_Thomas', 0, NULL, '2021-09-28 08:28:22'),
(205, 'America/St_Vincent', 0, NULL, '2021-09-28 08:28:22'),
(206, 'America/Swift_Current', 0, NULL, '2021-09-28 08:28:22'),
(207, 'America/Tegucigalpa', 0, NULL, '2021-09-28 08:28:22'),
(208, 'America/Thule', 0, NULL, '2021-09-28 08:28:22'),
(209, 'America/Thunder_Bay', 0, NULL, '2021-09-28 08:28:22'),
(210, 'America/Tijuana', 0, NULL, '2021-09-28 08:28:22'),
(211, 'America/Toronto', 0, NULL, '2021-09-28 08:28:22'),
(212, 'America/Tortola', 0, NULL, '2021-09-28 08:28:22'),
(213, 'America/Vancouver', 0, NULL, '2021-09-28 08:28:22'),
(214, 'America/Virgin', 0, NULL, '2021-09-28 08:28:22'),
(215, 'America/Whitehorse', 0, NULL, '2021-09-28 08:28:22'),
(216, 'America/Winnipeg', 0, NULL, '2021-09-28 08:28:22'),
(217, 'America/Yakutat', 0, NULL, '2021-09-28 08:28:22'),
(218, 'America/Yellowknife', 0, NULL, '2021-09-28 08:28:22'),
(219, 'Antarctica/Casey', 0, NULL, '2021-09-28 08:28:22'),
(220, 'Antarctica/Davis', 0, NULL, '2021-09-28 08:28:22'),
(221, 'Antarctica/DumontDUrville', 0, NULL, '2021-09-28 08:28:22'),
(222, 'Antarctica/Macquarie', 0, NULL, '2021-09-28 08:28:22'),
(223, 'Antarctica/Mawson', 0, NULL, '2021-09-28 08:28:22'),
(224, 'Antarctica/McMurdo', 0, NULL, '2021-09-28 08:28:22'),
(225, 'Antarctica/Palmer', 0, NULL, '2021-09-28 08:28:22'),
(226, 'Antarctica/Rothera', 0, NULL, '2021-09-28 08:28:22'),
(227, 'Antarctica/South_Pole', 0, NULL, '2021-09-28 08:28:22'),
(228, 'Antarctica/Syowa', 0, NULL, '2021-09-28 08:28:22'),
(229, 'Antarctica/Vostok', 0, NULL, '2021-09-28 08:28:22'),
(230, 'Arctic/Longyearbyen', 0, NULL, '2021-09-28 08:28:22'),
(231, 'Asia/Aden', 0, NULL, '2021-09-28 08:28:22'),
(232, 'Asia/Almaty', 0, NULL, '2021-09-28 08:28:22'),
(233, 'Asia/Amman', 0, NULL, '2021-09-28 08:28:22'),
(234, 'Asia/Anadyr', 0, NULL, '2021-09-28 08:28:22'),
(235, 'Asia/Aqtau', 0, NULL, '2021-09-28 08:28:22'),
(236, 'Asia/Aqtobe', 0, NULL, '2021-09-28 08:28:22'),
(237, 'Asia/Ashgabat', 0, NULL, '2021-09-28 08:28:22'),
(238, 'Asia/Ashkhabad', 0, NULL, '2021-09-28 08:28:22'),
(239, 'Asia/Baghdad', 0, NULL, '2021-09-28 08:28:22'),
(240, 'Asia/Bahrain', 0, NULL, '2021-09-28 08:28:22'),
(241, 'Asia/Baku', 0, NULL, '2021-09-28 08:28:22'),
(242, 'Asia/Bangkok', 0, NULL, '2021-09-28 08:28:22'),
(243, 'Asia/Beirut', 0, NULL, '2021-09-28 08:28:22'),
(244, 'Asia/Bishkek', 0, NULL, '2021-09-28 08:28:22'),
(245, 'Asia/Brunei', 0, NULL, '2021-09-28 08:28:22'),
(246, 'Asia/Calcutta', 0, NULL, '2021-09-28 08:28:22'),
(247, 'Asia/Choibalsan', 0, NULL, '2021-09-28 08:28:22'),
(248, 'Asia/Chongqing', 0, NULL, '2021-09-28 08:28:22'),
(249, 'Asia/Chungking', 0, NULL, '2021-09-28 08:28:22'),
(250, 'Asia/Colombo', 0, NULL, '2021-09-28 08:28:22'),
(251, 'Asia/Dacca', 0, NULL, '2021-09-28 08:28:22'),
(252, 'Asia/Damascus', 0, NULL, '2021-09-28 08:28:22'),
(253, 'Asia/Dhaka', 0, NULL, '2021-09-28 08:28:22'),
(254, 'Asia/Dili', 0, NULL, '2021-09-28 08:28:22'),
(255, 'Asia/Dubai', 0, NULL, '2021-09-28 08:28:22'),
(256, 'Asia/Dushanbe', 0, NULL, '2021-09-28 08:28:22'),
(257, 'Asia/Gaza', 0, NULL, '2021-09-28 08:28:22'),
(258, 'Asia/Harbin', 0, NULL, '2021-09-28 08:28:22'),
(259, 'Asia/Hebron', 0, NULL, '2021-09-28 08:28:22'),
(260, 'Asia/Ho_Chi_Minh', 0, NULL, '2021-09-28 08:28:22'),
(261, 'Asia/Hong_Kong', 0, NULL, '2021-09-28 08:28:22'),
(262, 'Asia/Hovd', 0, NULL, '2021-09-28 08:28:22'),
(263, 'Asia/Irkutsk', 0, NULL, '2021-09-28 08:28:22'),
(264, 'Asia/Istanbul', 0, NULL, '2021-09-28 08:28:22'),
(265, 'Asia/Jakarta', 0, NULL, '2021-09-28 08:28:22'),
(266, 'Asia/Jayapura', 0, NULL, '2021-09-28 08:28:22'),
(267, 'Asia/Jerusalem', 0, NULL, '2021-09-28 08:28:22'),
(268, 'Asia/Kabul', 0, NULL, '2021-09-28 08:28:22'),
(269, 'Asia/Kamchatka', 0, NULL, '2021-09-28 08:28:22'),
(270, 'Asia/Karachi', 0, NULL, '2021-09-28 08:28:22'),
(271, 'Asia/Kashgar', 0, NULL, '2021-09-28 08:28:22'),
(272, 'Asia/Kathmandu', 0, NULL, '2021-09-28 08:28:22'),
(273, 'Asia/Khandyga', 0, NULL, '2021-09-28 08:28:22'),
(274, 'Asia/Kolkata', 1, NULL, '2021-09-28 08:28:22'),
(275, 'Asia/Krasnoyarsk', 0, NULL, '2021-09-28 08:28:22'),
(276, 'Asia/Kuala_Lumpur', 0, NULL, '2021-09-28 08:28:22'),
(277, 'Asia/Kuching', 0, NULL, '2021-09-28 08:28:22'),
(278, 'Asia/Kuwait', 0, NULL, '2021-09-28 08:28:22'),
(279, 'Asia/Macao', 0, NULL, '2021-09-28 08:28:22'),
(280, 'Asia/Macau', 0, NULL, '2021-09-28 08:28:22'),
(281, 'Asia/Magadan', 0, NULL, '2021-09-28 08:28:22'),
(282, 'Asia/Makassar', 0, NULL, '2021-09-28 08:28:22'),
(283, 'Asia/Manila', 0, NULL, '2021-09-28 08:28:22'),
(284, 'Asia/Muscat', 0, NULL, '2021-09-28 08:28:22'),
(285, 'Asia/Nicosia', 0, NULL, '2021-09-28 08:28:22'),
(286, 'Asia/Novokuznetsk', 0, NULL, '2021-09-28 08:28:22'),
(287, 'Asia/Novosibirsk', 0, NULL, '2021-09-28 08:28:22'),
(288, 'Asia/Omsk', 0, NULL, '2021-09-28 08:28:22'),
(289, 'Asia/Oral', 0, NULL, '2021-09-28 08:28:22'),
(290, 'Asia/Phnom_Penh', 0, NULL, '2021-09-28 08:28:22'),
(291, 'Asia/Pontianak', 0, NULL, '2021-09-28 08:28:22'),
(292, 'Asia/Pyongyang', 0, NULL, '2021-09-28 08:28:22'),
(293, 'Asia/Qatar', 0, NULL, '2021-09-28 08:28:22'),
(294, 'Asia/Qyzylorda', 0, NULL, '2021-09-28 08:28:22'),
(295, 'Asia/Rangoon', 0, NULL, '2021-09-28 08:28:22'),
(296, 'Asia/Riyadh', 0, NULL, '2021-09-28 08:28:22'),
(297, 'Asia/Saigon', 0, NULL, '2021-09-28 08:28:22'),
(298, 'Asia/Sakhalin', 0, NULL, '2021-09-28 08:28:22'),
(299, 'Asia/Samarkand', 0, NULL, '2021-09-28 08:28:22'),
(300, 'Asia/Seoul', 0, NULL, '2021-09-28 08:28:22'),
(301, 'Asia/Shanghai', 0, NULL, '2021-09-28 08:28:22'),
(302, 'Asia/Singapore', 0, NULL, '2021-09-28 08:28:22'),
(303, 'Asia/Taipei', 0, NULL, '2021-09-28 08:28:22'),
(304, 'Asia/Tashkent', 0, NULL, '2021-09-28 08:28:22'),
(305, 'Asia/Tbilisi', 0, NULL, '2021-09-28 08:28:22'),
(306, 'Asia/Tehran', 0, NULL, '2021-09-28 08:28:22'),
(307, 'Asia/Tel_Aviv', 0, NULL, '2021-09-28 08:28:22'),
(308, 'Asia/Thimbu', 0, NULL, '2021-09-28 08:28:22'),
(309, 'Asia/Thimphu', 0, NULL, '2021-09-28 08:28:22'),
(310, 'Asia/Tokyo', 0, NULL, '2021-09-28 08:28:22'),
(311, 'Asia/Ujung_Pandang', 0, NULL, '2021-09-28 08:28:22'),
(312, 'Asia/Ulaanbaatar', 0, NULL, '2021-09-28 08:28:22'),
(313, 'Asia/Ulan_Bator', 0, NULL, '2021-09-28 08:28:22'),
(314, 'Asia/Urumqi', 0, NULL, '2021-09-28 08:28:22'),
(315, 'Asia/Ust-Nera', 0, NULL, '2021-09-28 08:28:22'),
(316, 'Asia/Vientiane', 0, NULL, '2021-09-28 08:28:22'),
(317, 'Asia/Vladivostok', 0, NULL, '2021-09-28 08:28:22'),
(318, 'Asia/Yakutsk', 0, NULL, '2021-09-28 08:28:22'),
(319, 'Asia/Yekaterinburg', 0, NULL, '2021-09-28 08:28:22'),
(320, 'Asia/Yerevan', 0, NULL, '2021-09-28 08:28:22'),
(321, 'Atlantic/Azores', 0, NULL, '2021-09-28 08:28:22'),
(322, 'Atlantic/Bermuda', 0, NULL, '2021-09-28 08:28:22'),
(323, 'Atlantic/Canary', 0, NULL, '2021-09-28 08:28:22'),
(324, 'Atlantic/Cape_Verde', 0, NULL, '2021-09-28 08:28:22'),
(325, 'Atlantic/Faeroe', 0, NULL, '2021-09-28 08:28:22'),
(326, 'Atlantic/Faroe', 0, NULL, '2021-09-28 08:28:22'),
(327, 'Atlantic/Jan_Mayen', 0, NULL, '2021-09-28 08:28:22'),
(328, 'Atlantic/Madeira', 0, NULL, '2021-09-28 08:28:22'),
(329, 'Atlantic/Reykjavik', 0, NULL, '2021-09-28 08:28:22'),
(330, 'Atlantic/South_Georgia', 0, NULL, '2021-09-28 08:28:22'),
(331, 'Atlantic/St_Helena', 0, NULL, '2021-09-28 08:28:22'),
(332, 'Atlantic/Stanley', 0, NULL, '2021-09-28 08:28:22'),
(333, 'Australia/ACT', 0, NULL, '2021-09-28 08:28:22'),
(334, 'Australia/Adelaide', 0, NULL, '2021-09-28 08:28:22'),
(335, 'Australia/Brisbane', 0, NULL, '2021-09-28 08:28:22'),
(336, 'Australia/Broken_Hill', 0, NULL, '2021-09-28 08:28:22'),
(337, 'Australia/Canberra', 0, NULL, '2021-09-28 08:28:22'),
(338, 'Australia/Currie', 0, NULL, '2021-09-28 08:28:22'),
(339, 'Australia/Darwin', 0, NULL, '2021-09-28 08:28:22'),
(340, 'Australia/Eucla', 0, NULL, '2021-09-28 08:28:22'),
(341, 'Australia/Hobart', 0, NULL, '2021-09-28 08:28:22'),
(342, 'Australia/LHI', 0, NULL, '2021-09-28 08:28:22'),
(343, 'Australia/Lindeman', 0, NULL, '2021-09-28 08:28:22'),
(344, 'Australia/Lord_Howe', 0, NULL, '2021-09-28 08:28:22'),
(345, 'Australia/Melbourne', 0, NULL, '2021-09-28 08:28:22'),
(346, 'Australia/North', 0, NULL, '2021-09-28 08:28:22'),
(347, 'Australia/NSW', 0, NULL, '2021-09-28 08:28:22'),
(348, 'Australia/Perth', 0, NULL, '2021-09-28 08:28:22'),
(349, 'Australia/Queensland', 0, NULL, '2021-09-28 08:28:22'),
(350, 'Australia/South', 0, NULL, '2021-09-28 08:28:22'),
(351, 'Australia/Sydney', 0, NULL, '2021-09-28 08:28:22'),
(352, 'Australia/Tasmania', 0, NULL, '2021-09-28 08:28:22'),
(353, 'Australia/Victoria', 0, NULL, '2021-09-28 08:28:22'),
(354, 'Australia/West', 0, NULL, '2021-09-28 08:28:22'),
(355, 'Australia/Yancowinna', 0, NULL, '2021-09-28 08:28:22'),
(356, 'Europe/Amsterdam', 0, NULL, '2021-09-28 08:28:22'),
(357, 'Europe/Andorra', 0, NULL, '2021-09-28 08:28:22'),
(358, 'Europe/Athens', 0, NULL, '2021-09-28 08:28:22'),
(359, 'Europe/Belfast', 0, NULL, '2021-09-28 08:28:22'),
(360, 'Europe/Belgrade', 0, NULL, '2021-09-28 08:28:22'),
(361, 'Europe/Berlin', 0, NULL, '2021-09-28 08:28:22'),
(362, 'Europe/Bratislava', 0, NULL, '2021-09-28 08:28:22'),
(363, 'Europe/Brussels', 0, NULL, '2021-09-28 08:28:22'),
(364, 'Europe/Bucharest', 0, NULL, '2021-09-28 08:28:22'),
(365, 'Europe/Budapest', 0, NULL, '2021-09-28 08:28:22'),
(366, 'Europe/Busingen', 0, NULL, '2021-09-28 08:28:22'),
(367, 'Europe/Chisinau', 0, NULL, '2021-09-28 08:28:22'),
(368, 'Europe/Copenhagen', 0, NULL, '2021-09-28 08:28:22'),
(369, 'Europe/Dublin', 0, NULL, '2021-09-28 08:28:22'),
(370, 'Europe/Gibraltar', 0, NULL, '2021-09-28 08:28:22'),
(371, 'Europe/Guernsey', 0, NULL, '2021-09-28 08:28:22'),
(372, 'Europe/Helsinki', 0, NULL, '2021-09-28 08:28:22'),
(373, 'Europe/Isle_of_Man', 0, NULL, '2021-09-28 08:28:22'),
(374, 'Europe/Istanbul', 0, NULL, '2021-09-28 08:28:22'),
(375, 'Europe/Jersey', 0, NULL, '2021-09-28 08:28:22'),
(376, 'Europe/Kaliningrad', 0, NULL, '2021-09-28 08:28:22'),
(377, 'Europe/Kiev', 0, NULL, '2021-09-28 08:28:22'),
(378, 'Europe/Lisbon', 0, NULL, '2021-09-28 08:28:22'),
(379, 'Europe/Ljubljana', 0, NULL, '2021-09-28 08:28:22'),
(380, 'Europe/London', 0, NULL, '2021-09-28 08:28:22'),
(381, 'Europe/Luxembourg', 0, NULL, '2021-09-28 08:28:22'),
(382, 'Europe/Madrid', 0, NULL, '2021-09-28 08:28:22'),
(383, 'Europe/Malta', 0, NULL, '2021-09-28 08:28:22'),
(384, 'Europe/Mariehamn', 0, NULL, '2021-09-28 08:28:22'),
(385, 'Europe/Minsk', 0, NULL, '2021-09-28 08:28:22'),
(386, 'Europe/Monaco', 0, NULL, '2021-09-28 08:28:22'),
(387, 'Europe/Moscow', 0, NULL, '2021-09-28 08:28:22'),
(388, 'Europe/Nicosia', 0, NULL, '2021-09-28 08:28:22'),
(389, 'Europe/Oslo', 0, NULL, '2021-09-28 08:28:22'),
(390, 'Europe/Paris', 0, NULL, '2021-09-28 08:28:22'),
(391, 'Europe/Podgorica', 0, NULL, '2021-09-28 08:28:22'),
(392, 'Europe/Prague', 0, NULL, '2021-09-28 08:28:22'),
(393, 'Europe/Riga', 0, NULL, '2021-09-28 08:28:22'),
(394, 'Europe/Rome', 0, NULL, '2021-09-28 08:28:22'),
(395, 'Europe/Samara', 0, NULL, '2021-09-28 08:28:22'),
(396, 'Europe/San_Marino', 0, NULL, '2021-09-28 08:28:22'),
(397, 'Europe/Sarajevo', 0, NULL, '2021-09-28 08:28:22'),
(398, 'Europe/Simferopol', 0, NULL, '2021-09-28 08:28:22'),
(399, 'Europe/Skopje', 0, NULL, '2021-09-28 08:28:22'),
(400, 'Europe/Sofia', 0, NULL, '2021-09-28 08:28:22'),
(401, 'Europe/Stockholm', 0, NULL, '2021-09-28 08:28:22'),
(402, 'Europe/Tallinn', 0, NULL, '2021-09-28 08:28:22'),
(403, 'Europe/Tirane', 0, NULL, '2021-09-28 08:28:22'),
(404, 'Europe/Tiraspol', 0, NULL, '2021-09-28 08:28:22'),
(405, 'Europe/Uzhgorod', 0, NULL, '2021-09-28 08:28:22'),
(406, 'Europe/Vaduz', 0, NULL, '2021-09-28 08:28:22'),
(407, 'Europe/Vatican', 0, NULL, '2021-09-28 08:28:22'),
(408, 'Europe/Vienna', 0, NULL, '2021-09-28 08:28:22'),
(409, 'Europe/Vilnius', 0, NULL, '2021-09-28 08:28:22'),
(410, 'Europe/Volgograd', 0, NULL, '2021-09-28 08:28:22'),
(411, 'Europe/Warsaw', 0, NULL, '2021-09-28 08:28:22'),
(412, 'Europe/Zagreb', 0, NULL, '2021-09-28 08:28:22'),
(413, 'Europe/Zaporozhye', 0, NULL, '2021-09-28 08:28:22'),
(414, 'Europe/Zurich', 0, NULL, '2021-09-28 08:28:22'),
(415, 'Indian/Antananarivo', 0, NULL, '2021-09-28 08:28:22'),
(416, 'Indian/Chagos', 0, NULL, '2021-09-28 08:28:22'),
(417, 'Indian/Christmas', 0, NULL, '2021-09-28 08:28:22'),
(418, 'Indian/Cocos', 0, NULL, '2021-09-28 08:28:22'),
(419, 'Indian/Comoro', 0, NULL, '2021-09-28 08:28:22'),
(420, 'Indian/Kerguelen', 0, NULL, '2021-09-28 08:28:22'),
(421, 'Indian/Mahe', 0, NULL, '2021-09-28 08:28:22'),
(422, 'Indian/Maldives', 0, NULL, '2021-09-28 08:28:22'),
(423, 'Indian/Mauritius', 0, NULL, '2021-09-28 08:28:22'),
(424, 'Indian/Mayotte', 0, NULL, '2021-09-28 08:28:22'),
(425, 'Indian/Reunion', 0, NULL, '2021-09-28 08:28:22'),
(426, 'Pacific/Apia', 0, NULL, '2021-09-28 08:28:22'),
(427, 'Pacific/Auckland', 0, NULL, '2021-09-28 08:28:22'),
(428, 'Pacific/Chatham', 0, NULL, '2021-09-28 08:28:22'),
(429, 'Pacific/Chuuk', 0, NULL, '2021-09-28 08:28:22'),
(430, 'Pacific/Easter', 0, NULL, '2021-09-28 08:28:22'),
(431, 'Pacific/Efate', 0, NULL, '2021-09-28 08:28:22'),
(432, 'Pacific/Enderbury', 0, NULL, '2021-09-28 08:28:22'),
(433, 'Pacific/Fakaofo', 0, NULL, '2021-09-28 08:28:22'),
(434, 'Pacific/Fiji', 0, NULL, '2021-09-28 08:28:22'),
(435, 'Pacific/Funafuti', 0, NULL, '2021-09-28 08:28:22'),
(436, 'Pacific/Galapagos', 0, NULL, '2021-09-28 08:28:22'),
(437, 'Pacific/Gambier', 0, NULL, '2021-09-28 08:28:22'),
(438, 'Pacific/Guadalcanal', 0, NULL, '2021-09-28 08:28:22'),
(439, 'Pacific/Guam', 0, NULL, '2021-09-28 08:28:22'),
(440, 'Pacific/Honolulu', 0, NULL, '2021-09-28 08:28:22'),
(441, 'Pacific/Johnston', 0, NULL, '2021-09-28 08:28:22'),
(442, 'Pacific/Kiritimati', 0, NULL, '2021-09-28 08:28:22'),
(443, 'Pacific/Kosrae', 0, NULL, '2021-09-28 08:28:22'),
(444, 'Pacific/Kwajalein', 0, NULL, '2021-09-28 08:28:22'),
(445, 'Pacific/Majuro', 0, NULL, '2021-09-28 08:28:22'),
(446, 'Pacific/Marquesas', 0, NULL, '2021-09-28 08:28:22'),
(447, 'Pacific/Midway', 0, NULL, '2021-09-28 08:28:22'),
(448, 'Pacific/Nauru', 0, NULL, '2021-09-28 08:28:22'),
(449, 'Pacific/Niue', 0, NULL, '2021-09-28 08:28:22'),
(450, 'Pacific/Norfolk', 0, NULL, '2021-09-28 08:28:22'),
(451, 'Pacific/Noumea', 0, NULL, '2021-09-28 08:28:22'),
(452, 'Pacific/Pago_Pago', 0, NULL, '2021-09-28 08:28:22'),
(453, 'Pacific/Palau', 0, NULL, '2021-09-28 08:28:22'),
(454, 'Pacific/Pitcairn', 0, NULL, '2021-09-28 08:28:22'),
(455, 'Pacific/Pohnpei', 0, NULL, '2021-09-28 08:28:22'),
(456, 'Pacific/Ponape', 0, NULL, '2021-09-28 08:28:22'),
(457, 'Pacific/Port_Moresby', 0, NULL, '2021-09-28 08:28:22'),
(458, 'Pacific/Rarotonga', 0, NULL, '2021-09-28 08:28:22'),
(459, 'Pacific/Saipan', 0, NULL, '2021-09-28 08:28:22'),
(460, 'Pacific/Samoa', 0, NULL, '2021-09-28 08:28:22'),
(461, 'Pacific/Tahiti', 0, NULL, '2021-09-28 08:28:22'),
(462, 'Pacific/Tarawa', 0, NULL, '2021-09-28 08:28:22'),
(463, 'Pacific/Tongatapu', 0, NULL, '2021-09-28 08:28:22'),
(464, 'Pacific/Truk', 0, NULL, '2021-09-28 08:28:22'),
(465, 'Pacific/Wake', 0, NULL, '2021-09-28 08:28:22'),
(466, 'Pacific/Wallis', 0, NULL, '2021-09-28 08:28:22'),
(467, 'Pacific/Yap', 0, NULL, '2021-09-28 08:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `dr_amount` int(11) DEFAULT NULL,
  `cr_amount` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_heads`
--

CREATE TABLE `transaction_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` int(10) UNSIGNED DEFAULT NULL,
  `acc_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_heads`
--

INSERT INTO `transaction_heads` (`id`, `created_by`, `last_updated_by`, `tr_head`, `ref_id`, `acc_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Cash A/C', NULL, 13, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, 'Purchase A/C', NULL, 68, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, 'Sales A/C', NULL, 77, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, 'SAURAV  KUMAR  [S001]', 1, 76, 1, '2021-09-27 10:22:51', '2021-09-27 10:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_certificates`
--

CREATE TABLE `transfer_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `application_date` date NOT NULL,
  `date_of_issue` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `tc_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leaving_time_class` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualified_to_promote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_fee_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_time_class` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promoted_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_concession_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_fail_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_studies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_taken_exam_with_result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cadet_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_to_leave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_attendance` int(11) DEFAULT NULL,
  `school_college_open_total` int(11) DEFAULT NULL,
  `extra_activity_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `any_other_remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_histories`
--

CREATE TABLE `transport_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `travellers_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_users`
--

CREATE TABLE `transport_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `hook_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `last_login_at`, `last_login_ip`, `created_at`, `updated_at`, `contact_number`, `address`, `profile_image`, `role_id`, `hook_id`, `status`) VALUES
(1, 'Super Admin', 'superadmin@gmail.com', '$2y$10$n931/85Cv7RDrxgmfnMDLOIerqn2fULQZc3KD/78nJqcZ6mXeaYaC', NULL, '2021-10-05 03:56:32', '127.0.0.1', NULL, '2021-10-05 03:56:32', NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Student', 'student@gmail.com', '$2y$10$tPIurncV2rffRc8G6d.8putLlQ8AbN0EkZQ1kvHS7f/wCq4kG4IC6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'RAHUL KUMAR', 'rahul@gmail.com', '$2y$10$mlotCR1NKr2Q/h3s0nm1UeSKyzlFHZCq0TYmqASAAq2xnpsRJMfPG', NULL, '2021-09-29 04:42:44', '127.0.0.1', '2021-09-27 11:58:30', '2021-09-29 04:42:44', NULL, NULL, NULL, 6, 1, 1),
(4, 'PANKAJ KUMAR', 'pankaj@gmail.com', '$2y$10$p17B6B4kQlyMJB4f3k/LOumNEnfu.3fcDXx5V/JHYAV1N8CN00DXi', NULL, NULL, NULL, '2021-09-29 04:25:12', '2021-09-29 04:35:35', NULL, NULL, NULL, 6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_staffs`
--

CREATE TABLE `vehicle_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `staffs_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs`
--

CREATE TABLE `visitor_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `purpose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_time` time NOT NULL,
  `out_time` time DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_purposes`
--

CREATE TABLE `visitor_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_about_us_settings`
--

CREATE TABLE `web_about_us_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staffs_status` tinyint(1) NOT NULL DEFAULT 0,
  `staffs_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_status` tinyint(1) NOT NULL DEFAULT 0,
  `counter_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_blogs`
--

CREATE TABLE `web_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_blog_categories`
--

CREATE TABLE `web_blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_client_awards`
--

CREATE TABLE `web_client_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_contact_lists`
--

CREATE TABLE `web_contact_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_contact_us_settings`
--

CREATE TABLE `web_contact_us_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `contact_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webURL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlePlus_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_counters`
--

CREATE TABLE `web_counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter` smallint(6) NOT NULL DEFAULT 0,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_downloads`
--

CREATE TABLE `web_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_events`
--

CREATE TABLE `web_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `event_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_place` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_faqs`
--

CREATE TABLE `web_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_galleries`
--

CREATE TABLE `web_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_gallery_images`
--

CREATE TABLE `web_gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_general_settings`
--

CREATE TABLE `web_general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `site_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_slogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `top_nav_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_nav_text_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `main_nav_button_status` tinyint(1) NOT NULL DEFAULT 0,
  `main_nav_button_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_nav_button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sticky_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `footer_status` tinyint(1) NOT NULL DEFAULT 0,
  `quick_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `footer_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `header_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_detail_foot` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analytics_view_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analytics_json_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_site_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_widget` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_home_settings`
--

CREATE TABLE `web_home_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT 0,
  `slider_caption_status` tinyint(1) NOT NULL DEFAULT 0,
  `slider_call_to_action_status` tinyint(1) NOT NULL DEFAULT 0,
  `slider_call_to_action_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_call_to_action_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT 0,
  `notice_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_status` tinyint(1) NOT NULL DEFAULT 0,
  `blog_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_status` tinyint(1) NOT NULL DEFAULT 0,
  `event_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_status` tinyint(1) NOT NULL DEFAULT 0,
  `welcome_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_status` tinyint(1) NOT NULL DEFAULT 0,
  `introduction_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services_status` tinyint(1) NOT NULL DEFAULT 0,
  `services_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_status` tinyint(1) NOT NULL DEFAULT 0,
  `staff_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_status` tinyint(1) NOT NULL DEFAULT 0,
  `testimonial_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_status` tinyint(1) NOT NULL DEFAULT 0,
  `client_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_status` tinyint(1) NOT NULL DEFAULT 0,
  `email_call_to_action_status` tinyint(1) NOT NULL DEFAULT 0,
  `email_call_to_action_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_call_to_action_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_call_to_action_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_menus`
--

CREATE TABLE `web_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_menus`
--

INSERT INTO `web_menus` (`id`, `created_by`, `last_updated_by`, `title`, `slug`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'WELCOME PAGE', 'welcome_menu', 1, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(2, 1, NULL, 'TOP NAV', 'top_menu', 10, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(3, 1, NULL, 'MAIN NAVIGATION', 'main_navigation_menu', 20, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(4, 1, NULL, 'STICKY NAVIGATION', 'sticky_navigation_menu', 30, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(5, 1, NULL, 'USEFUL LINKS', 'useful_links', 40, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(6, 1, NULL, 'FOOTER', 'footer_menu', 50, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_web_page`
--

CREATE TABLE `web_menu_web_page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `web_menu_id` int(10) UNSIGNED NOT NULL,
  `web_page_id` int(10) UNSIGNED NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_notices`
--

CREATE TABLE `web_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_pages`
--

CREATE TABLE `web_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_pages`
--

INSERT INTO `web_pages` (`id`, `created_by`, `last_updated_by`, `parent_id`, `title`, `slug`, `page_type`, `link`, `image`, `short_desc`, `detail_desc`, `seo_title`, `seo_keywords`, `seo_description`, `view_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 'About Us', 'about-us', 'predefine-link', 'about-us', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(2, 1, NULL, 0, 'Blog', 'blog', 'predefine-link', 'blog', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(3, 1, NULL, 0, 'Category', 'category', 'predefine-link', 'category', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(4, 1, NULL, 0, 'Contact Us', 'contact-us', 'predefine-link', 'contact-us', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(5, 1, NULL, 0, 'Download', 'downloads', 'predefine-link', 'download', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(6, 1, NULL, 0, 'Events', 'events', 'predefine-link', 'events', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(7, 1, NULL, 0, 'Services', 'services', 'predefine-link', 'services', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(8, 1, NULL, 0, 'FAQ', 'faqs', 'predefine-link', 'faqs', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(9, 1, NULL, 0, 'Gallery', 'gallery', 'predefine-link', 'gallery', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(10, 1, NULL, 0, 'Home', '', 'predefine-link', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(11, 1, NULL, 0, 'Notice', 'public-notice', 'predefine-link', 'notice', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(12, 1, NULL, 0, 'Online Registration', 'online-registration', 'predefine-link', 'online-registration', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(13, 1, NULL, 0, 'Pricing', 'pricing', 'predefine-link', 'pricing', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(14, 1, NULL, 0, 'Staff', 'staffs', 'predefine-link', 'staff', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2021-09-27 10:05:33', '2021-09-27 10:05:33'),
(15, 1, NULL, 0, 'Certificate Verification', 'certificate-verification', 'predefine-link', 'certificate-verification', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-09-27 10:05:33', '2021-09-27 10:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `web_pricings`
--

CREATE TABLE `web_pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` double(10,2) DEFAULT NULL,
  `new_price` double(10,2) DEFAULT NULL,
  `per_term` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registrations`
--

CREATE TABLE `web_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `web_registration_programmes_id` int(10) UNSIGNED NOT NULL,
  `reg_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` date NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disease_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_annual_income` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_academic_qualifications`
--

CREATE TABLE `web_registration_academic_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `web_registrations_id` int(10) UNSIGNED NOT NULL,
  `examination` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_university` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_of_pass` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage_grade` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_programmes`
--

CREATE TABLE `web_registration_programmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_settings`
--

CREATE TABLE `web_registration_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_info_status` tinyint(1) NOT NULL DEFAULT 0,
  `guardian_detail_status` tinyint(1) NOT NULL DEFAULT 0,
  `permanent_address_status` tinyint(1) NOT NULL DEFAULT 0,
  `mailing_address_status` tinyint(1) NOT NULL DEFAULT 0,
  `photo_status` tinyint(1) NOT NULL DEFAULT 0,
  `applicant_photo_status` tinyint(1) NOT NULL DEFAULT 0,
  `applicant_signature_status` tinyint(1) NOT NULL DEFAULT 0,
  `guardian_photo_status` tinyint(1) NOT NULL DEFAULT 0,
  `qualification` tinyint(1) NOT NULL DEFAULT 0,
  `experience` tinyint(1) NOT NULL DEFAULT 0,
  `rules_status` tinyint(1) NOT NULL DEFAULT 0,
  `rules` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_status` tinyint(1) NOT NULL DEFAULT 0,
  `agreement` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_work_experiences`
--

CREATE TABLE `web_registration_work_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `web_registrations_id` int(10) UNSIGNED NOT NULL,
  `experience_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_services`
--

CREATE TABLE `web_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_sliders`
--

CREATE TABLE `web_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_staff`
--

CREATE TABLE `web_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the staff',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_subscribers`
--

CREATE TABLE `web_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_testimonials`
--

CREATE TABLE `web_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the testimonial giver',
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `created_by`, `last_updated_by`, `title`, `active_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2018', 0, 0, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(2, 1, NULL, '2019', 0, 0, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(3, 1, NULL, '2020', 0, 0, '2021-09-27 10:05:32', '2021-09-27 10:05:32'),
(4, 1, NULL, '2021', 1, 1, '2021-09-27 10:05:32', '2021-09-27 10:05:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_infos_students_id_foreign` (`students_id`);

--
-- Indexes for table `account_categories`
--
ALTER TABLE `account_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_categories_ac_name_unique` (`ac_name`);

--
-- Indexes for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressinfos_students_id_foreign` (`students_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assets_title_unique` (`title`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_years_id_foreign` (`years_id`),
  ADD KEY `assignments_semesters_id_foreign` (`semesters_id`),
  ADD KEY `assignments_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_answers_assignments_id_foreign` (`assignments_id`),
  ADD KEY `assignment_answers_students_id_foreign` (`students_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_years_id_foreign` (`years_id`),
  ADD KEY `attendances_months_id_foreign` (`months_id`);

--
-- Indexes for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_masters_year_foreign` (`year`),
  ADD KEY `attendance_masters_month_foreign` (`month`);

--
-- Indexes for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_statuses_title_unique` (`title`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_transactions_banks_id_foreign` (`banks_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beds_hostels_id_foreign` (`hostels_id`),
  ADD KEY `beds_rooms_id_foreign` (`rooms_id`),
  ADD KEY `beds_bed_status_foreign` (`bed_status`);

--
-- Indexes for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bed_statuses_title_unique` (`title`);

--
-- Indexes for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bonafide_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`),
  ADD KEY `books_book_masters_id_foreign` (`book_masters_id`),
  ADD KEY `books_book_status_foreign` (`book_status`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_categories_title_unique` (`title`),
  ADD UNIQUE KEY `book_categories_slug_unique` (`slug`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_issues_book_id_foreign` (`book_id`);

--
-- Indexes for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_masters_categories_foreign` (`categories`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_statuses`
--
ALTER TABLE `book_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_statuses_title_unique` (`title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`);

--
-- Indexes for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_histories_students_id_foreign` (`students_id`);

--
-- Indexes for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_certificates`
--
ALTER TABLE `character_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `character_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `character_certificates_cc_num_unique` (`cc_num`);

--
-- Indexes for table `contact_directory_details`
--
ALTER TABLE `contact_directory_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_directory_groups`
--
ALTER TABLE `contact_directory_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_mesages`
--
ALTER TABLE `contact_mesages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_completion_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_reg_no_unique` (`reg_no`);

--
-- Indexes for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_statuses_title_unique` (`title`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `days_title_unique` (`title`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eating_times`
--
ALTER TABLE `eating_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eating_times_title_unique` (`title`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_title_unique` (`title`);

--
-- Indexes for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_mark_ledgers_students_id_foreign` (`students_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedules_years_id_foreign` (`years_id`),
  ADD KEY `exam_schedules_months_id_foreign` (`months_id`),
  ADD KEY `exam_schedules_exams_id_foreign` (`exams_id`),
  ADD KEY `exam_schedules_faculty_id_foreign` (`faculty_id`),
  ADD KEY `exam_schedules_semesters_id_foreign` (`semesters_id`),
  ADD KEY `exam_schedules_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculties_faculty_unique` (`faculty`),
  ADD UNIQUE KEY `faculties_faculty_code_unique` (`faculty_code`);

--
-- Indexes for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_semester_faculty_id_foreign` (`faculty_id`),
  ADD KEY `faculty_semester_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_collections_students_id_foreign` (`students_id`),
  ADD KEY `fee_collections_fee_masters_id_foreign` (`fee_masters_id`);

--
-- Indexes for table `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_heads_fee_head_title_unique` (`fee_head_title`);

--
-- Indexes for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_masters_students_id_foreign` (`students_id`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_categories_title_unique` (`title`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_items_title_unique` (`title`);

--
-- Indexes for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_schedules`
--
ALTER TABLE `food_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_settings_time_zones_id_foreign` (`time_zones_id`);

--
-- Indexes for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grading_scales_gradingtype_id_foreign` (`gradingType_id`);

--
-- Indexes for table `grading_types`
--
ALTER TABLE `grading_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grading_types_title_unique` (`title`),
  ADD UNIQUE KEY `grading_types_slug_unique` (`slug`);

--
-- Indexes for table `guardian_details`
--
ALTER TABLE `guardian_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostels_name_unique` (`name`);

--
-- Indexes for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `library_circulations`
--
ALTER TABLE `library_circulations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_circulations_user_type_unique` (`user_type`),
  ADD UNIQUE KEY `library_circulations_slug_unique` (`slug`),
  ADD UNIQUE KEY `library_circulations_code_prefix_unique` (`code_prefix`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_answer_sheets`
--
ALTER TABLE `mcq_answer_sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exams`
--
ALTER TABLE `mcq_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exam_participants`
--
ALTER TABLE `mcq_exam_participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exam_questions`
--
ALTER TABLE `mcq_exam_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_instructions`
--
ALTER TABLE `mcq_instructions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_instructions_title_unique` (`title`);

--
-- Indexes for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_question_groups`
--
ALTER TABLE `mcq_question_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_question_groups_title_unique` (`title`);

--
-- Indexes for table `mcq_question_levels`
--
ALTER TABLE `mcq_question_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_question_levels_title_unique` (`title`);

--
-- Indexes for table `mcq_question_options`
--
ALTER TABLE `mcq_question_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_semesters_id_foreign` (`semesters_id`),
  ADD KEY `meetings_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `months_title_unique` (`title`);

--
-- Indexes for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nirgam_utara_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `nirgam_utara_certificates_nu_num_unique` (`nu_num`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_registration_programs`
--
ALTER TABLE `online_registration_programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `online_registration_programs_faculties_id_unique` (`faculties_id`);

--
-- Indexes for table `online_registration_settings`
--
ALTER TABLE `online_registration_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_details_students_id_foreign` (`students_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_title_unique` (`title`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_heads_title_unique` (`title`),
  ADD UNIQUE KEY `payroll_heads_slug_unique` (`slug`);

--
-- Indexes for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_masters_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchanges_ref_no_unique` (`ref_no`);

--
-- Indexes for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchange_types_title_unique` (`title`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_prices_products_id_unique` (`products_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_vendors_id_foreign` (`vendors_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_products_id_foreign` (`products_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_returns_vendors_id_foreign` (`vendors_id`),
  ADD KEY `purchase_returns_products_id_foreign` (`products_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `residents_hostels_id_foreign` (`hostels_id`),
  ADD KEY `residents_rooms_id_foreign` (`rooms_id`),
  ADD KEY `residents_beds_id_foreign` (`beds_id`);

--
-- Indexes for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_histories_years_id_foreign` (`years_id`),
  ADD KEY `resident_histories_hostels_id_foreign` (`hostels_id`),
  ADD KEY `resident_histories_rooms_id_foreign` (`rooms_id`),
  ADD KEY `resident_histories_beds_id_foreign` (`beds_id`),
  ADD KEY `resident_histories_residents_id_foreign` (`residents_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_hostels_id_foreign` (`hostels_id`),
  ADD KEY `rooms_room_type_foreign` (`room_type`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_title_unique` (`title`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `routes_title_unique` (`title`);

--
-- Indexes for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_pays_staff_id_foreign` (`staff_id`),
  ADD KEY `salary_pays_salary_masters_id_foreign` (`salary_masters_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semesters_semester_unique` (`semester`),
  ADD UNIQUE KEY `semesters_slug_unique` (`slug`),
  ADD KEY `semesters_staff_id_foreign` (`staff_id`),
  ADD KEY `semesters_gradingtype_id_foreign` (`gradingType_id`);

--
-- Indexes for table `semester_assets`
--
ALTER TABLE `semester_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_subject_semester_id_foreign` (`semester_id`),
  ADD KEY `semester_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_emails`
--
ALTER TABLE `sms_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_reg_no_unique` (`reg_no`),
  ADD KEY `staff_designation_foreign` (`designation`);

--
-- Indexes for table `staff_designations`
--
ALTER TABLE `staff_designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_designations_title_unique` (`title`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_reg_no_unique` (`reg_no`),
  ADD KEY `students_faculty_foreign` (`faculty`),
  ADD KEY `students_semester_foreign` (`semester`),
  ADD KEY `students_academic_status_foreign` (`academic_status`),
  ADD KEY `students_batch_foreign` (`batch`);

--
-- Indexes for table `student_batches`
--
ALTER TABLE `student_batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_batches_title_unique` (`title`);

--
-- Indexes for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_guardians_students_id_foreign` (`students_id`),
  ADD KEY `student_guardians_guardians_id_foreign` (`guardians_id`);

--
-- Indexes for table `student_statuses`
--
ALTER TABLE `student_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_statuses_title_unique` (`title`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_attendances_years_id_foreign` (`years_id`),
  ADD KEY `subject_attendances_months_id_foreign` (`months_id`),
  ADD KEY `subject_attendances_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_head_id_foreign` (`tr_head_id`);

--
-- Indexes for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfer_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `transfer_certificates_tc_num_unique` (`tc_num`);

--
-- Indexes for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_histories_travellers_id_foreign` (`travellers_id`);

--
-- Indexes for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_users_routes_id_foreign` (`routes_id`),
  ADD KEY `transport_users_vehicles_id_foreign` (`vehicles_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_number_unique` (`number`);

--
-- Indexes for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_staffs_staffs_id_foreign` (`staffs_id`),
  ADD KEY `vehicle_staffs_vehicles_id_foreign` (`vehicles_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_reg_no_unique` (`reg_no`);

--
-- Indexes for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_purposes_title_unique` (`title`);

--
-- Indexes for table `web_about_us_settings`
--
ALTER TABLE `web_about_us_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_blogs`
--
ALTER TABLE `web_blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_blogs_slug_unique` (`slug`);

--
-- Indexes for table `web_blog_categories`
--
ALTER TABLE `web_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `web_client_awards`
--
ALTER TABLE `web_client_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact_lists`
--
ALTER TABLE `web_contact_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact_us_settings`
--
ALTER TABLE `web_contact_us_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_counters`
--
ALTER TABLE `web_counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_downloads`
--
ALTER TABLE `web_downloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_downloads_slug_unique` (`slug`);

--
-- Indexes for table `web_events`
--
ALTER TABLE `web_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_events_slug_unique` (`slug`);

--
-- Indexes for table `web_faqs`
--
ALTER TABLE `web_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_galleries`
--
ALTER TABLE `web_galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_galleries_slug_unique` (`slug`);

--
-- Indexes for table `web_gallery_images`
--
ALTER TABLE `web_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_general_settings`
--
ALTER TABLE `web_general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_home_settings`
--
ALTER TABLE `web_home_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menus`
--
ALTER TABLE `web_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_menus_slug_unique` (`slug`);

--
-- Indexes for table `web_menu_web_page`
--
ALTER TABLE `web_menu_web_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_notices`
--
ALTER TABLE `web_notices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_notices_slug_unique` (`slug`);

--
-- Indexes for table `web_pages`
--
ALTER TABLE `web_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_pages_slug_unique` (`slug`);

--
-- Indexes for table `web_pricings`
--
ALTER TABLE `web_pricings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_pricings_title_unique` (`title`);

--
-- Indexes for table `web_registrations`
--
ALTER TABLE `web_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_registrations_reg_no_unique` (`reg_no`);

--
-- Indexes for table `web_registration_academic_qualifications`
--
ALTER TABLE `web_registration_academic_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_programmes`
--
ALTER TABLE `web_registration_programmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_settings`
--
ALTER TABLE `web_registration_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_work_experiences`
--
ALTER TABLE `web_registration_work_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_services`
--
ALTER TABLE `web_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_sliders`
--
ALTER TABLE `web_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_staff`
--
ALTER TABLE `web_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_staff_slug_unique` (`slug`);

--
-- Indexes for table `web_subscribers`
--
ALTER TABLE `web_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_testimonials`
--
ALTER TABLE `web_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_infos`
--
ALTER TABLE `academic_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_categories`
--
ALTER TABLE `account_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `addressinfos`
--
ALTER TABLE `addressinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_masters`
--
ALTER TABLE `book_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_statuses`
--
ALTER TABLE `book_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `character_certificates`
--
ALTER TABLE `character_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_directory_details`
--
ALTER TABLE `contact_directory_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_directory_groups`
--
ALTER TABLE `contact_directory_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_mesages`
--
ALTER TABLE `contact_mesages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eating_times`
--
ALTER TABLE `eating_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fee_collections`
--
ALTER TABLE `fee_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fee_heads`
--
ALTER TABLE `fee_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fee_masters`
--
ALTER TABLE `fee_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_schedules`
--
ALTER TABLE `food_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grading_scales`
--
ALTER TABLE `grading_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grading_types`
--
ALTER TABLE `grading_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guardian_details`
--
ALTER TABLE `guardian_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_circulations`
--
ALTER TABLE `library_circulations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mcq_answer_sheets`
--
ALTER TABLE `mcq_answer_sheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exams`
--
ALTER TABLE `mcq_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exam_participants`
--
ALTER TABLE `mcq_exam_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exam_questions`
--
ALTER TABLE `mcq_exam_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_instructions`
--
ALTER TABLE `mcq_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_groups`
--
ALTER TABLE `mcq_question_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_levels`
--
ALTER TABLE `mcq_question_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_options`
--
ALTER TABLE `mcq_question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_payments`
--
ALTER TABLE `online_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_registration_programs`
--
ALTER TABLE `online_registration_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_registration_settings`
--
ALTER TABLE `online_registration_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_details`
--
ALTER TABLE `parent_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;

--
-- AUTO_INCREMENT for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resident_histories`
--
ALTER TABLE `resident_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_pays`
--
ALTER TABLE `salary_pays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_returns`
--
ALTER TABLE `sales_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `semester_assets`
--
ALTER TABLE `semester_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester_subject`
--
ALTER TABLE `semester_subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_emails`
--
ALTER TABLE `sms_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_designations`
--
ALTER TABLE `staff_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_batches`
--
ALTER TABLE `student_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_guardians`
--
ALTER TABLE `student_guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_histories`
--
ALTER TABLE `transport_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_users`
--
ALTER TABLE `transport_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_about_us_settings`
--
ALTER TABLE `web_about_us_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_blogs`
--
ALTER TABLE `web_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_blog_categories`
--
ALTER TABLE `web_blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_client_awards`
--
ALTER TABLE `web_client_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_contact_lists`
--
ALTER TABLE `web_contact_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_contact_us_settings`
--
ALTER TABLE `web_contact_us_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_counters`
--
ALTER TABLE `web_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_downloads`
--
ALTER TABLE `web_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_events`
--
ALTER TABLE `web_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_faqs`
--
ALTER TABLE `web_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_galleries`
--
ALTER TABLE `web_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_gallery_images`
--
ALTER TABLE `web_gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_general_settings`
--
ALTER TABLE `web_general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_home_settings`
--
ALTER TABLE `web_home_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_menus`
--
ALTER TABLE `web_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_menu_web_page`
--
ALTER TABLE `web_menu_web_page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_notices`
--
ALTER TABLE `web_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_pages`
--
ALTER TABLE `web_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `web_pricings`
--
ALTER TABLE `web_pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registrations`
--
ALTER TABLE `web_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_academic_qualifications`
--
ALTER TABLE `web_registration_academic_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_programmes`
--
ALTER TABLE `web_registration_programmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_settings`
--
ALTER TABLE `web_registration_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_work_experiences`
--
ALTER TABLE `web_registration_work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_services`
--
ALTER TABLE `web_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_sliders`
--
ALTER TABLE `web_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_staff`
--
ALTER TABLE `web_staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_subscribers`
--
ALTER TABLE `web_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_testimonials`
--
ALTER TABLE `web_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD CONSTRAINT `academic_infos_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD CONSTRAINT `addressinfos_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD CONSTRAINT `assignment_answers_assignments_id_foreign` FOREIGN KEY (`assignments_id`) REFERENCES `assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignment_answers_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  ADD CONSTRAINT `attendance_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD CONSTRAINT `attendance_masters_month_foreign` FOREIGN KEY (`month`) REFERENCES `months` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_masters_year_foreign` FOREIGN KEY (`year`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD CONSTRAINT `bank_transactions_banks_id_foreign` FOREIGN KEY (`banks_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `beds_bed_status_foreign` FOREIGN KEY (`bed_status`) REFERENCES `bed_statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `beds_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `beds_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  ADD CONSTRAINT `bonafide_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_book_masters_id_foreign` FOREIGN KEY (`book_masters_id`) REFERENCES `book_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_book_status_foreign` FOREIGN KEY (`book_status`) REFERENCES `book_statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD CONSTRAINT `book_masters_categories_foreign` FOREIGN KEY (`categories`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  ADD CONSTRAINT `certificate_histories_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `character_certificates`
--
ALTER TABLE `character_certificates`
  ADD CONSTRAINT `character_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  ADD CONSTRAINT `course_completion_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD CONSTRAINT `exam_mark_ledgers_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `exam_schedules_exams_id_foreign` FOREIGN KEY (`exams_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD CONSTRAINT `faculty_semester_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faculty_semester_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD CONSTRAINT `fee_collections_fee_masters_id_foreign` FOREIGN KEY (`fee_masters_id`) REFERENCES `fee_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_collections_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD CONSTRAINT `fee_masters_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD CONSTRAINT `general_settings_time_zones_id_foreign` FOREIGN KEY (`time_zones_id`) REFERENCES `time_zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD CONSTRAINT `grading_scales_gradingtype_id_foreign` FOREIGN KEY (`gradingType_id`) REFERENCES `grading_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meetings_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  ADD CONSTRAINT `nirgam_utara_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD CONSTRAINT `parent_details_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD CONSTRAINT `payroll_masters_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `purchase_returns_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_returns_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `residents_beds_id_foreign` FOREIGN KEY (`beds_id`) REFERENCES `beds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `residents_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `residents_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD CONSTRAINT `resident_histories_beds_id_foreign` FOREIGN KEY (`beds_id`) REFERENCES `beds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resident_histories_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resident_histories_residents_id_foreign` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resident_histories_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resident_histories_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_room_type_foreign` FOREIGN KEY (`room_type`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD CONSTRAINT `salary_pays_salary_masters_id_foreign` FOREIGN KEY (`salary_masters_id`) REFERENCES `payroll_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_pays_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_gradingtype_id_foreign` FOREIGN KEY (`gradingType_id`) REFERENCES `grading_types` (`id`),
  ADD CONSTRAINT `semesters_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD CONSTRAINT `semester_subject_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `semester_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_designation_foreign` FOREIGN KEY (`designation`) REFERENCES `staff_designations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_academic_status_foreign` FOREIGN KEY (`academic_status`) REFERENCES `student_statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_batch_foreign` FOREIGN KEY (`batch`) REFERENCES `student_batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_faculty_foreign` FOREIGN KEY (`faculty`) REFERENCES `faculties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_semester_foreign` FOREIGN KEY (`semester`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD CONSTRAINT `student_guardians_guardians_id_foreign` FOREIGN KEY (`guardians_id`) REFERENCES `guardian_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_guardians_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  ADD CONSTRAINT `subject_attendances_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_attendances_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_attendances_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_tr_head_id_foreign` FOREIGN KEY (`tr_head_id`) REFERENCES `transaction_heads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD CONSTRAINT `transfer_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD CONSTRAINT `transport_histories_travellers_id_foreign` FOREIGN KEY (`travellers_id`) REFERENCES `transport_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD CONSTRAINT `transport_users_routes_id_foreign` FOREIGN KEY (`routes_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transport_users_vehicles_id_foreign` FOREIGN KEY (`vehicles_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD CONSTRAINT `vehicle_staffs_staffs_id_foreign` FOREIGN KEY (`staffs_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_staffs_vehicles_id_foreign` FOREIGN KEY (`vehicles_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
