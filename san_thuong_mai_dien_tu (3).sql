-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2025 lúc 03:51 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `san_thuong_mai_dien_tu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activitylog`
--

CREATE TABLE `activitylog` (
  `MaLog` int(11) NOT NULL,
  `MaND` int(11) DEFAULT NULL,
  `HanhDong` varchar(100) NOT NULL,
  `ChiTiet` text DEFAULT NULL,
  `IPAddress` varchar(45) DEFAULT NULL,
  `NgayThucHien` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `adminlog`
--

CREATE TABLE `adminlog` (
  `MaLog` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `HanhDong` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `IPAddress` varchar(45) DEFAULT NULL,
  `ThoiGian` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng ghi log các hoạt động của admin để audit';

--
-- Đang đổ dữ liệu cho bảng `adminlog`
--

INSERT INTO `adminlog` (`MaLog`, `MaND`, `HanhDong`, `MoTa`, `IPAddress`, `ThoiGian`) VALUES
(1, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-27 19:44:05'),
(2, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-27 19:58:39'),
(3, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-27 20:06:46'),
(4, 3, 'Thay đổi trạng thái', 'Từ HoatDong sang TamKhoa', NULL, '2025-10-27 20:35:44'),
(5, 13, 'Khóa người dùng', 'Khóa user ID: 3', '::1', '2025-10-27 20:35:44'),
(6, 1, 'Thay đổi trạng thái', 'Từ HoatDong sang TamKhoa', NULL, '2025-10-27 20:35:47'),
(7, 13, 'Khóa người dùng', 'Khóa user ID: 1', '::1', '2025-10-27 20:35:47'),
(8, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #16 thành DaHuy', '::1', '2025-10-27 20:43:31'),
(9, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #15 thành DaHuy', '::1', '2025-10-27 20:43:51'),
(10, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-27 20:45:37'),
(11, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #9 thành DangChuanBi', '::1', '2025-10-27 20:46:15'),
(12, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-27 20:57:24'),
(13, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #13 thành Huy', '::1', '2025-10-27 21:01:59'),
(14, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-27 22:20:40'),
(15, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-27 22:22:38'),
(16, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #11 thành Huy', '::1', '2025-10-27 22:49:55'),
(17, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-27 23:13:12'),
(18, 13, 'Cập nhật người bán', 'Cập nhật trạng thái cửa hàng #12 thành TamDung', '::1', '2025-10-27 23:26:03'),
(19, 13, 'Cập nhật sản phẩm', 'Cập nhật số lượng sản phẩm #5: 0', '::1', '2025-10-27 23:39:43'),
(20, 13, 'Cập nhật sản phẩm', 'Cập nhật số lượng sản phẩm #5: 0', '::1', '2025-10-27 23:39:45'),
(21, 13, 'Cập nhật sản phẩm', 'Cập nhật số lượng sản phẩm #5: 28', '::1', '2025-10-27 23:40:12'),
(22, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-28 00:56:57'),
(23, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-28 09:06:41'),
(24, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-28 09:10:23'),
(25, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-28 22:18:36'),
(26, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-29 09:01:13'),
(27, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-29 09:01:44'),
(28, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 09:14:28'),
(29, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 09:15:02'),
(30, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-29 09:43:29'),
(31, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #47 thành DangXuLy', '::1', '2025-10-29 09:43:52'),
(32, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 09:45:13'),
(33, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-29 09:59:22'),
(34, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 10:06:32'),
(35, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 10:07:06'),
(36, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 10:08:40'),
(37, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 10:08:55'),
(38, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:18:43'),
(39, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:23:34'),
(40, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:27:43'),
(41, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:30:43'),
(42, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:36:45'),
(43, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:40:16'),
(44, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:47:25'),
(45, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:47:39'),
(46, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:53:02'),
(47, 13, 'UPDATE_SETTINGS', 'Cập nhật cài đặt thanh toán', '::1', '2025-10-29 11:53:05'),
(48, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #59 thành DangXuLy', '::1', '2025-10-29 11:53:54'),
(49, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #58 thành Huy', '::1', '2025-10-29 11:54:02'),
(50, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #59 thành DangGiao', '::1', '2025-10-29 11:54:12'),
(51, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #59 thành DangXuLy', '::1', '2025-10-29 12:07:11'),
(52, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #59 thành DangGiao', '::1', '2025-10-29 12:07:13'),
(53, 13, '1', 'confirm_payment', '::1', '2025-10-29 12:11:34'),
(54, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #59 thành DangGiao', '::1', '2025-10-29 12:11:46'),
(55, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #55 thành DangXuLy', '::1', '2025-10-29 12:14:52'),
(56, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #55 thành DangGiao', '::1', '2025-10-29 12:14:57'),
(57, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #59 thành DangXuLy', '::1', '2025-10-29 12:55:41'),
(58, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #59 thành DangGiao', '::1', '2025-10-29 12:55:43'),
(59, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #56 thành DangXuLy', '::1', '2025-10-29 12:58:54'),
(60, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #56 thành DangGiao', '::1', '2025-10-29 12:58:58'),
(61, 13, '1', 'confirm_payment', '::1', '2025-10-29 13:02:46'),
(62, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #53 thành DangGiao', '::1', '2025-10-29 13:02:50'),
(63, 13, '1', 'confirm_payment', '::1', '2025-10-29 18:45:27'),
(64, 13, '1', 'update_shipping', '::1', '2025-10-29 19:09:54'),
(65, 13, '1', 'update_shipping', '::1', '2025-10-29 19:10:15'),
(66, 13, '1', 'confirm_payment', '::1', '2025-10-29 19:13:32'),
(67, 13, '1', 'update_shipping', '::1', '2025-10-29 19:14:29'),
(68, 13, '1', 'confirm_payment', '::1', '2025-10-29 19:16:43'),
(69, 13, '1', 'update_shipping', '::1', '2025-10-29 19:16:58'),
(70, 13, '1', 'reject_payment', '::1', '2025-10-29 19:17:13'),
(71, 13, '1', 'reject_payment', '::1', '2025-10-29 19:21:39'),
(72, 13, '1', 'update_shipping', '::1', '2025-10-29 19:21:53'),
(73, 13, '1', 'reject_payment', '::1', '2025-10-29 19:24:34'),
(74, 13, '1', 'update_shipping', '::1', '2025-10-29 19:44:16'),
(75, 13, '1', 'confirm_payment', '::1', '2025-10-29 20:19:09'),
(76, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-29 20:31:03'),
(77, 13, '1', 'reject_payment', '::1', '2025-10-29 20:31:19'),
(78, 13, '1', 'update_shipping', '::1', '2025-10-29 20:32:13'),
(79, 13, 'Cập nhật đơn hàng', 'Cập nhật trạng thái đơn #48 thành DangXuLy', '::1', '2025-10-29 20:34:30'),
(80, 13, '1', 'confirm_payment', '::1', '2025-10-29 20:38:58'),
(81, 13, '1', 'update_shipping', '::1', '2025-10-29 23:46:16'),
(82, 13, '1', 'confirm_payment', '::1', '2025-10-30 14:16:43'),
(83, 13, '1', 'update_shipping', '::1', '2025-10-30 14:17:33'),
(84, 13, '1', 'update_shipping', '::1', '2025-10-30 14:19:39'),
(85, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-30 14:39:25'),
(86, 13, '1', 'confirm_payment', '::1', '2025-10-30 14:40:04'),
(87, 13, '1', 'update_shipping', '::1', '2025-10-30 14:41:03'),
(88, 13, 'Đăng nhập', 'Admin đăng nhập vào hệ thống', '::1', '2025-10-30 20:54:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `caidatthongbao`
--

CREATE TABLE `caidatthongbao` (
  `MaND` int(11) NOT NULL,
  `ThongBaoDonHang` tinyint(1) DEFAULT 1,
  `ThongBaoKhuyenMai` tinyint(1) DEFAULT 1,
  `ThongBaoHeThong` tinyint(1) DEFAULT 1,
  `EmailThongBao` tinyint(1) DEFAULT 1,
  `SMSThongBao` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhinhhethong`
--

CREATE TABLE `cauhinhhethong` (
  `MaCauHinh` int(11) NOT NULL,
  `TenCauHinh` varchar(100) NOT NULL,
  `GiaTri` text DEFAULT NULL,
  `MoTa` varchar(255) DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhinhhethong`
--

INSERT INTO `cauhinhhethong` (`MaCauHinh`, `TenCauHinh`, `GiaTri`, `MoTa`, `NgayCapNhat`) VALUES
(1, 'TenWebsite', 'Sàn Thương Mại Điện Tử Xanh', 'Tên hiển thị của website', '2025-10-27 19:26:26'),
(2, 'EmailLienHe', 'contact@sanxanh.com', 'Email liên hệ chính', '2025-10-27 19:26:26'),
(3, 'SoDienThoaiLienHe', '1900-xxxx', 'Số điện thoại hotline', '2025-10-27 19:26:26'),
(4, 'PhiShipMacDinh', '30000', 'Phí ship mặc định (VNĐ)', '2025-10-27 19:26:26'),
(5, 'TyLeVAT', '0.1', 'Tỷ lệ VAT (10%)', '2025-10-27 19:26:26'),
(6, 'SoLuongSanPhamToiDaTrangChu', '20', 'Số lượng sản phẩm hiển thị trang chủ', '2025-10-27 19:26:26'),
(17, 'site_name', 'Sàn Thương Mại Điện Tử', 'Tên website', '2025-10-28 00:17:17'),
(18, 'site_description', 'Website thương mại điện tử hàng đầu Việt Nam', 'Mô tả website', '2025-10-28 00:17:17'),
(19, 'contact_email', 'contact@shop.com', 'Email liên hệ', '2025-10-28 00:17:17'),
(20, 'contact_phone', '0123456789', 'Số điện thoại liên hệ', '2025-10-28 00:17:17'),
(21, 'contact_address', 'Hà Nội, Việt Nam', 'Địa chỉ công ty', '2025-10-28 00:17:17'),
(22, 'smtp_host', 'smtp.gmail.com', 'SMTP Host', '2025-10-28 00:17:17'),
(23, 'smtp_port', '587', 'SMTP Port', '2025-10-28 00:17:17'),
(24, 'smtp_username', '', 'SMTP Username', '2025-10-28 00:17:17'),
(25, 'smtp_password', '', 'SMTP Password', '2025-10-28 00:17:17'),
(26, 'email_from', 'noreply@shop.com', 'Email gửi đi', '2025-10-28 00:17:17'),
(27, 'bank_name', 'BIDV', 'Tên ngân hàng', '2025-10-29 11:40:16'),
(28, 'bank_account', '8810529518', 'Số tài khoản', '2025-10-29 09:15:02'),
(29, 'bank_holder', 'NGUYEN TIEN DAT', 'Chủ tài khoản', '2025-10-29 09:15:02'),
(30, 'qr_code', 'images/qr_payment_1761713585.jpg', 'QR Code thanh toán', '2025-10-29 11:53:05'),
(31, 'meta_keywords', 'thương mại điện tử, mua sắm online, shop online', 'Meta Keywords', '2025-10-28 00:17:17'),
(32, 'meta_description', 'Mua sắm online tiện lợi, giá tốt, giao hàng nhanh', 'Meta Description', '2025-10-28 00:17:17'),
(33, 'google_analytics', '', 'Google Analytics ID', '2025-10-28 00:17:17'),
(34, 'facebook_pixel', '', 'Facebook Pixel ID', '2025-10-28 00:17:17'),
(35, 'maintenance_mode', '0', 'Chế độ bảo trì (0=off, 1=on)', '2025-10-28 00:17:17'),
(36, 'login_attempts', '5', 'Số lần đăng nhập tối đa', '2025-10-28 00:17:17'),
(37, 'session_timeout', '30', 'Thời gian timeout (phút)', '2025-10-28 00:17:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaDH` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `DonGia` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaDH`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(1, 3, 1, 44030000.00),
(2, 3, 1, 11015000.00),
(3, 3, 1, 11015000.00),
(4, 3, 1, 125000.00),
(5, 3, 1, 125000.00),
(6, 3, 1, 11015000.00),
(7, 3, 1, 11255000.00),
(8, 3, 1, 16100.00),
(9, 3, 1, 16100.00),
(10, 3, 1, 125000.00),
(11, 3, 1, 16100.00),
(12, 3, 1, 3341100.00),
(13, 3, 1, 11015000.00),
(14, 3, 1, 125000.00),
(15, 3, 1, 1240000.00),
(16, 3, 1, 125000.00),
(17, 3, 1, 35680000.00),
(18, 3, 1, 27990000.00),
(19, 3, 1, 47980000.00),
(20, 3, 1, 18990000.00),
(21, 3, 1, 25970000.00),
(22, 3, 1, 35990000.00),
(23, 3, 1, 18990000.00),
(24, 3, 1, 42990000.00),
(25, 3, 1, 57970000.00),
(26, 3, 1, 46980000.00),
(27, 3, 1, 71970000.00),
(28, 3, 1, 86960000.00),
(29, 3, 1, 35680000.00),
(30, 3, 1, 18990000.00),
(31, 3, 1, 27990000.00),
(32, 3, 1, 35680000.00),
(33, 3, 1, 27990000.00),
(34, 3, 1, 47980000.00),
(35, 3, 1, 18990000.00),
(36, 3, 1, 25970000.00),
(37, 3, 1, 35990000.00),
(38, 3, 1, 18990000.00),
(39, 3, 1, 42990000.00),
(40, 3, 1, 57970000.00),
(41, 3, 1, 46980000.00),
(42, 3, 1, 71970000.00),
(43, 3, 1, 86960000.00),
(44, 3, 1, 35680000.00),
(45, 3, 1, 18990000.00),
(46, 3, 1, 27990000.00),
(47, 6, 1, 1000000.00),
(47, 7, 1, 110000.00),
(48, 6, 1, 1000000.00),
(48, 7, 1, 110000.00),
(49, 7, 1, 110000.00),
(50, 3, 1, 10000000.00),
(51, 6, 1, 1000000.00),
(52, 7, 1, 110000.00),
(53, 6, 1, 1000000.00),
(54, 7, 1, 110000.00),
(55, 7, 1, 110000.00),
(56, 7, 1, 110000.00),
(57, 7, 1, 110000.00),
(58, 7, 1, 110000.00),
(59, 6, 1, 1000000.00),
(60, 7, 1, 110000.00),
(61, 7, 1, 110000.00);

--
-- Bẫy `chitietdonhang`
--
DELIMITER $$
CREATE TRIGGER `after_order_detail_insert` AFTER INSERT ON `chitietdonhang` FOR EACH ROW BEGIN
    UPDATE SanPham 
    SET LuotBan = LuotBan + NEW.SoLuong 
    WHERE MaSP = NEW.MaSP;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `MaGH` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`MaGH`, `MaSP`, `SoLuong`) VALUES
(5, 3, 1),
(5, 4, 1),
(5, 5, 1),
(5, 6, 1),
(5, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietkhuyenmai`
--

CREATE TABLE `chitietkhuyenmai` (
  `MaCTKM` int(11) NOT NULL,
  `MaKM` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `GiaTriGiam` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuahang`
--

CREATE TABLE `cuahang` (
  `MaCH` int(11) NOT NULL,
  `TenCH` varchar(100) NOT NULL,
  `DiaChiLayHang` varchar(255) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `MaSoThue` varchar(50) DEFAULT NULL,
  `TenCongTyCaNhan` varchar(100) DEFAULT NULL,
  `ChuShop` varchar(100) DEFAULT NULL,
  `CCCD` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `DiemDanhGia` decimal(3,2) DEFAULT 0.00,
  `NgayTao` datetime DEFAULT current_timestamp(),
  `MaND` int(11) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT 'Chờ duyệt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cuahang`
--

INSERT INTO `cuahang` (`MaCH`, `TenCH`, `DiaChiLayHang`, `SDT`, `MaSoThue`, `TenCongTyCaNhan`, `ChuShop`, `CCCD`, `Email`, `MoTa`, `DiemDanhGia`, `NgayTao`, `MaND`, `TrangThai`) VALUES
(1, 'hẹ hẹ shop', 'phú diễn bắc từ liêm hà nội', '0123456789', '123456', 'hẹ hẹ', 'trần thanh bình', '123456', '134@gmail.com', NULL, 0.00, '2025-10-18 07:13:45', NULL, 'Chờ duyệt'),
(2, 'hẹ hẹ shop', 'phudien', '0123456789', '123456', 'hẹ hẹ', 'trần thanh bình', '123456', '134@gmail.com', NULL, 0.00, '2025-10-18 11:58:15', NULL, 'Chờ duyệt'),
(3, 'hẹ hẹ shop', 'phus dien', '0123456789', '123456', 'hẹ hẹ', 'trần thanh bình', '123456', '123@gmail.com', NULL, 0.00, '2025-10-19 00:19:16', NULL, 'Chờ duyệt'),
(4, 'hẹhej', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cửa hàng của dfdf - hẹhej', 0.00, '2025-10-20 01:24:59', 5, 'HoatDong'),
(5, 'hẹhej', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cửa hàng của dfdf - hẹhej', 0.00, '2025-10-20 09:54:25', 6, 'HoatDong'),
(6, 'demoshop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cửa hàng của dfdf - hẹhej', 0.00, '2025-10-20 23:10:46', 7, 'HoatDong'),
(7, 'demoshop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cửa hàng của dfdf - hẹhej', 0.00, '2025-10-27 00:07:02', 8, 'HoatDong'),
(8, 'Tech Store VN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chuyên cung cấp điện thoại, laptop, phụ kiện công nghệ chính hãng', 0.00, '2025-04-30 23:12:14', NULL, 'HoatDong'),
(9, 'Fashion House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thời trang nam nữ cao cấp, hàng hiệu nhập khẩu', 0.00, '2025-05-30 23:12:14', NULL, 'HoatDong'),
(10, 'Home & Living Shop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Đồ gia dụng, nội thất, trang trí nhà cửa', 0.00, '2025-07-29 23:12:14', NULL, 'HoatDong'),
(11, 'Beauty Corner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mỹ phẩm, skincare, makeup chính hãng', 0.00, '2025-08-28 23:12:14', NULL, 'TamDung'),
(12, 'Sports & Outdoor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dụng cụ thể thao, đồ leo núi, camping', 0.00, '2025-09-27 23:12:14', NULL, 'TamDung'),
(13, 'Book Haven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sách, văn phòng phẩm, quà tặng sáng tạo', 0.00, '2025-10-07 23:12:14', NULL, 'HoatDong'),
(14, 'Gourmet Food', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thực phẩm sạch, đặc sản, quà tặng cao cấp', 0.00, '2025-10-12 23:12:14', NULL, 'HoatDong'),
(15, 'Pet Paradise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thú cưng, thức ăn, phụ kiện cho thú cưng', 0.00, '2025-10-17 23:12:14', NULL, 'Khoa'),
(16, 'Toy Kingdom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Đồ chơi trẻ em, đồ chơi giáo dục', 0.00, '2025-10-22 23:12:14', NULL, 'HoatDong'),
(17, 'Green Garden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cây cảnh, hạt giống, dụng cụ làm vườn', 0.00, '2025-10-25 23:12:14', NULL, 'HoatDong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `MaDG` int(11) NOT NULL,
  `NoiDung` text DEFAULT NULL,
  `SoSao` enum('1','2','3','4','5') NOT NULL,
  `NgayDG` datetime DEFAULT current_timestamp(),
  `TrangThai` enum('ChoDuyet','DaDuyet','An') DEFAULT 'ChoDuyet',
  `AnDanh` tinyint(1) DEFAULT 0,
  `LuotHuuIch` int(11) DEFAULT 0,
  `MaND` int(11) DEFAULT NULL,
  `DiemDanhGia` tinyint(3) UNSIGNED DEFAULT NULL CHECK (`DiemDanhGia` between 1 and 5),
  `MaSP` int(11) DEFAULT NULL,
  `MaDGCha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgiasanpham`
--

CREATE TABLE `danhgiasanpham` (
  `MaDG` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL COMMENT 'Mã sản phẩm',
  `MaND` int(11) NOT NULL COMMENT 'Người đánh giá',
  `MaDH` int(11) NOT NULL COMMENT 'Đơn hàng liên quan',
  `SoSao` tinyint(1) NOT NULL COMMENT 'Số sao từ 1-5',
  `BinhLuan` text DEFAULT NULL COMMENT 'Nội dung đánh giá',
  `NgayDanhGia` datetime DEFAULT current_timestamp(),
  `TrangThai` enum('HienThi','An','BaoCao') DEFAULT 'HienThi' COMMENT 'Trạng thái hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgiasanpham`
--

INSERT INTO `danhgiasanpham` (`MaDG`, `MaSP`, `MaND`, `MaDH`, `SoSao`, `BinhLuan`, `NgayDanhGia`, `TrangThai`) VALUES
(1, 7, 13, 60, 5, 'ggg', '2025-10-30 14:35:56', 'HienThi'),
(2, 7, 13, 61, 5, 'nguuu', '2025-10-30 14:41:23', 'HienThi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `MaDanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(100) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `DanhMucCha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`MaDanhMuc`, `TenDanhMuc`, `MoTa`, `DanhMucCha`) VALUES
(1, 'Thời Trang Nam', NULL, NULL),
(2, 'Điện Thoại & Phụ Kiện', NULL, NULL),
(3, 'Thiết Bị Điện Tử', NULL, NULL),
(4, 'Máy Tính & Laptop', NULL, NULL),
(5, 'Máy Ảnh & Máy Quay Phim', NULL, NULL),
(6, 'Đồng Hồ', NULL, NULL),
(7, 'Giày Dép Nam', NULL, NULL),
(8, 'Thiết Bị Điện Gia Dụng', NULL, NULL),
(9, 'Thể Thao & Du Lịch', NULL, NULL),
(10, 'Ô Tô, Xe Máy & Xe Đạp', NULL, NULL),
(11, 'Balo & Túi Ví Nam', NULL, NULL),
(12, 'Đồ Chơi', NULL, NULL),
(13, 'Chăm Sóc Thú Cưng', NULL, NULL),
(14, 'Dụng Cụ & Thiết Bị Tiện Ích', NULL, NULL),
(15, 'Thời Trang Nữ', NULL, NULL),
(16, 'Mẹ & Bé', NULL, NULL),
(17, 'Nhà Cửa & Đời Sống', NULL, NULL),
(18, 'Sắc Đẹp', NULL, NULL),
(19, 'Sức Khỏe', NULL, NULL),
(20, 'Giày Dép Nữ', NULL, NULL),
(21, 'Túi Ví Nữ', NULL, NULL),
(22, 'Phụ Kiện & Trang Sức Nữ', NULL, NULL),
(23, 'Bách Hóa Online', NULL, NULL),
(24, 'Nhà Sách Online', NULL, NULL),
(25, 'Thời Trang Trẻ Em', NULL, NULL),
(26, 'Giặt Giũ & Chăm Sóc Nhà Cửa', NULL, NULL),
(27, 'Voucher & Dịch Vụ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` int(11) NOT NULL,
  `MaND` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT current_timestamp(),
  `TongTien` decimal(15,2) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL,
  `DiaChiGiao` varchar(255) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(50) DEFAULT 'COD',
  `MaVC` int(11) DEFAULT NULL COMMENT 'Mã vận chuyển',
  `NgayXacNhanNhan` datetime DEFAULT NULL COMMENT 'Thời điểm khách xác nhận đã nhận hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDH`, `MaND`, `NgayDat`, `TongTien`, `TrangThai`, `DiaChiGiao`, `PhuongThucThanhToan`, `MaVC`, `NgayXacNhanNhan`) VALUES
(1, 1, '2025-10-18 07:37:59', 44030000.00, '', 'số 33 ngách 65/68 đường phú diễn', 'COD', NULL, NULL),
(2, 1, '2025-10-18 07:43:25', 11015000.00, '', 'số 33 ngách 65/68 đường phú diễn', 'COD', NULL, NULL),
(3, 1, '2025-10-18 08:09:09', 11015000.00, '', 'số 33 ngách 65/68 đường phú diễn', 'COD', NULL, NULL),
(4, 3, '2025-10-19 21:51:22', 125000.00, 'ChoXacNhan', 'số 33 ngách 65/68 đường phú diễn', 'COD', NULL, NULL),
(5, 4, '2025-10-20 00:55:44', 125000.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(6, 4, '2025-10-20 02:08:29', 11015000.00, 'ChoXacNhan', 'dsds', 'COD', NULL, NULL),
(7, 4, '2025-10-20 02:09:29', 11255000.00, 'ChoXacNhan', 'dsds', 'COD', NULL, NULL),
(8, 4, '2025-10-20 02:10:34', 16100.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(9, 4, '2025-10-20 02:15:44', 16100.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(10, 1, '2025-10-20 09:53:26', 125000.00, '', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(11, 4, '2025-10-20 23:09:12', 16100.00, 'ChoXacNhan', 'dfd', 'COD', NULL, NULL),
(12, 4, '2025-10-26 23:57:42', 3341100.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(13, 4, '2025-10-27 08:34:20', 11015000.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(14, 4, '2025-10-27 09:55:19', 125000.00, 'ChoXacNhan', 'dfd', 'COD', NULL, NULL),
(15, 4, '2025-10-27 10:55:23', 1240000.00, 'ChoXacNhan', 'dsds', 'COD', NULL, NULL),
(16, 4, '2025-10-27 11:02:32', 125000.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(17, 21, '2025-10-27 22:25:45', 35680000.00, 'ChoXacNhan', '123 Nguyễn Huệ, Quận 1, TP.HCM', 'COD', NULL, NULL),
(18, 22, '2025-10-27 20:25:45', 27990000.00, 'ChoXacNhan', '456 Lê Lợi, Quận 3, TP.HCM', 'COD', NULL, NULL),
(19, 23, '2025-10-27 17:25:45', 47980000.00, 'ChoXacNhan', '789 Trần Hưng Đạo, Quận 5, TP.HCM', 'COD', NULL, NULL),
(20, 24, '2025-10-26 22:25:45', 18990000.00, 'ChoXacNhan', '321 Võ Văn Tần, Quận 3, TP.HCM', 'COD', NULL, NULL),
(21, 25, '2025-10-26 22:25:45', 25970000.00, 'ChoXacNhan', '654 Hai Bà Trưng, Quận 1, TP.HCM', 'COD', NULL, NULL),
(22, 21, '2025-10-25 22:25:45', 35990000.00, 'ChoXacNhan', '123 Nguyễn Huệ, Quận 1, TP.HCM', 'COD', NULL, NULL),
(23, 22, '2025-10-25 22:25:45', 18990000.00, 'ChoXacNhan', '456 Lê Lợi, Quận 3, TP.HCM', 'COD', NULL, NULL),
(24, 23, '2025-10-24 22:25:45', 42990000.00, 'ChoXacNhan', '789 Trần Hưng Đạo, Quận 5, TP.HCM', 'COD', NULL, NULL),
(25, 24, '2025-10-20 22:25:45', 57970000.00, 'ChoXacNhan', '321 Võ Văn Tần, Quận 3, TP.HCM', 'COD', NULL, NULL),
(26, 25, '2025-10-17 22:25:45', 46980000.00, 'ChoXacNhan', '654 Hai Bà Trưng, Quận 1, TP.HCM', 'COD', NULL, NULL),
(27, 21, '2025-10-12 22:25:45', 71970000.00, 'ChoXacNhan', '123 Nguyễn Huệ, Quận 1, TP.HCM', 'COD', NULL, NULL),
(28, 22, '2025-09-27 22:25:45', 86960000.00, 'ChoXacNhan', '456 Lê Lợi, Quận 3, TP.HCM', 'COD', NULL, NULL),
(29, 23, '2025-10-24 22:25:45', 35680000.00, 'ChoXacNhan', '789 Trần Hưng Đạo, Quận 5, TP.HCM', 'COD', NULL, NULL),
(30, 24, '2025-10-22 22:25:45', 18990000.00, 'ChoXacNhan', '321 Võ Văn Tần, Quận 3, TP.HCM', 'COD', NULL, NULL),
(31, 25, '2025-10-20 22:25:45', 27990000.00, 'ChoXacNhan', '654 Hai Bà Trưng, Quận 1, TP.HCM', 'COD', NULL, NULL),
(32, 21, '2025-10-27 22:40:46', 35680000.00, 'ChoXacNhan', '123 Nguyễn Huệ, Quận 1, TP.HCM', 'COD', NULL, NULL),
(33, 22, '2025-10-27 20:40:46', 27990000.00, 'ChoXacNhan', '456 Lê Lợi, Quận 3, TP.HCM', 'COD', NULL, NULL),
(34, 23, '2025-10-27 17:40:46', 47980000.00, 'ChoXacNhan', '789 Trần Hưng Đạo, Quận 5, TP.HCM', 'COD', NULL, NULL),
(35, 24, '2025-10-26 22:40:46', 18990000.00, 'ChoXacNhan', '321 Võ Văn Tần, Quận 3, TP.HCM', 'COD', NULL, NULL),
(36, 25, '2025-10-26 22:40:46', 25970000.00, 'ChoXacNhan', '654 Hai Bà Trưng, Quận 1, TP.HCM', 'COD', NULL, NULL),
(37, 21, '2025-10-25 22:40:46', 35990000.00, 'ChoXacNhan', '123 Nguyễn Huệ, Quận 1, TP.HCM', 'COD', NULL, NULL),
(38, 22, '2025-10-25 22:40:46', 18990000.00, 'ChoXacNhan', '456 Lê Lợi, Quận 3, TP.HCM', 'COD', NULL, NULL),
(39, 23, '2025-10-24 22:40:46', 42990000.00, 'ChoXacNhan', '789 Trần Hưng Đạo, Quận 5, TP.HCM', 'COD', NULL, NULL),
(40, 24, '2025-10-20 22:40:46', 57970000.00, 'ChoXacNhan', '321 Võ Văn Tần, Quận 3, TP.HCM', 'COD', NULL, NULL),
(41, 25, '2025-10-17 22:40:46', 46980000.00, 'ChoXacNhan', '654 Hai Bà Trưng, Quận 1, TP.HCM', 'COD', NULL, NULL),
(42, 21, '2025-10-12 22:40:46', 71970000.00, 'ChoXacNhan', '123 Nguyễn Huệ, Quận 1, TP.HCM', 'COD', NULL, NULL),
(43, 22, '2025-09-27 22:40:46', 86960000.00, 'ChoXacNhan', '456 Lê Lợi, Quận 3, TP.HCM', 'COD', NULL, NULL),
(44, 23, '2025-10-24 22:40:46', 35680000.00, 'ChoXacNhan', '789 Trần Hưng Đạo, Quận 5, TP.HCM', 'COD', NULL, NULL),
(45, 24, '2025-10-22 22:40:46', 18990000.00, 'ChoXacNhan', '321 Võ Văn Tần, Quận 3, TP.HCM', 'COD', NULL, NULL),
(46, 25, '2025-10-20 22:40:46', 27990000.00, 'ChoXacNhan', '654 Hai Bà Trưng, Quận 1, TP.HCM', 'COD', NULL, NULL),
(47, 4, '2025-10-28 09:09:59', 1251000.00, '', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(48, 13, '2025-10-29 09:15:20', 1251000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-29 23:02:21'),
(49, 13, '2025-10-29 09:21:24', 136000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-29 23:02:21'),
(50, 13, '2025-10-29 09:41:49', 11015000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-29 23:02:21'),
(51, 13, '2025-10-29 09:45:35', 1115000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-29 23:02:21'),
(52, 13, '2025-10-29 09:50:04', 136000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-29 23:02:21'),
(53, 4, '2025-10-29 09:53:15', 1115000.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(54, 4, '2025-10-29 09:53:45', 136000.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(55, 4, '2025-10-29 09:55:04', 136000.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(56, 4, '2025-10-29 09:59:03', 81000.00, 'ChoXacNhan', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, NULL),
(57, 13, '2025-10-29 10:02:23', 81000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-29 23:02:21'),
(58, 13, '2025-10-29 11:21:21', 81000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-29 23:02:21'),
(59, 13, '2025-10-29 11:39:43', 1060000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-29 23:02:21'),
(60, 13, '2025-10-30 14:16:26', 136000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-30 14:35:50'),
(61, 13, '2025-10-30 14:38:54', 136000.00, 'HoanThanh', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 'COD', NULL, '2025-10-30 14:41:12');

--
-- Bẫy `donhang`
--
DELIMITER $$
CREATE TRIGGER `tr_donhang_after_insert` AFTER INSERT ON `donhang` FOR EACH ROW BEGIN
    INSERT INTO `thongbao` (MaND, TieuDe, NoiDung, LoaiTB, Icon, MauSac, Link)
    VALUES (
        NEW.MaND,
        CONCAT('Đơn hàng #', NEW.MaDH, ' đã được đặt thành công!'),
        'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.',
        'donhang',
        'shopping_cart',
        '#2196f3',
        'donhangcuatoi.php'
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvivanchuyen`
--

CREATE TABLE `donvivanchuyen` (
  `MaDVVC` int(11) NOT NULL,
  `TenDonVi` varchar(100) NOT NULL COMMENT 'GHN, GHTK, J&T, Ninja Van...',
  `MaDonVi` varchar(50) NOT NULL COMMENT 'Code: GHN, GHTK, JT, NINJA...',
  `Logo` varchar(255) DEFAULT NULL,
  `Hotline` varchar(20) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `TrangThai` enum('HoatDong','TamNgung') DEFAULT 'HoatDong',
  `NgayTao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donvivanchuyen`
--

INSERT INTO `donvivanchuyen` (`MaDVVC`, `TenDonVi`, `MaDonVi`, `Logo`, `Hotline`, `Website`, `TrangThai`, `NgayTao`) VALUES
(1, 'Giao Hàng Nhanh', 'GHN', NULL, '1900545', 'https://ghn.vn', 'HoatDong', '2025-10-29 05:13:50'),
(2, 'Giao Hàng Tiết Kiệm', 'GHTK', NULL, '1900636', 'https://ghtk.vn', 'HoatDong', '2025-10-29 05:13:50'),
(3, 'J&T Express', 'JT', NULL, '1900545', 'https://jtexpress.vn', 'HoatDong', '2025-10-29 05:13:50'),
(4, 'Ninja Van', 'NINJA', NULL, '1900886', 'https://ninjavan.co', 'HoatDong', '2025-10-29 05:13:50'),
(5, 'Viettel Post', 'VTP', NULL, '1900545', 'https://viettelpost.vn', 'HoatDong', '2025-10-29 05:13:50'),
(6, 'Bưu điện Việt Nam', 'VNP', NULL, '1900545', 'https://vnpost.vn', 'HoatDong', '2025-10-29 05:13:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `MaGH` int(11) NOT NULL,
  `MaND` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`MaGH`, `MaND`) VALUES
(1, 1),
(2, 3),
(3, 4),
(4, 8),
(5, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotro`
--

CREATE TABLE `hotro` (
  `MaHT` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `TrangThai` enum('ChoXuLy','DangXuLy','DaGiai','DaDong') DEFAULT 'ChoXuLy',
  `NgayGui` timestamp NOT NULL DEFAULT current_timestamp(),
  `NgayCapNhat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `LoaiKM` enum('PhanTram','SoTien','Freeship','QuaTang') DEFAULT NULL,
  `GiaTriKM` decimal(10,2) DEFAULT NULL,
  `DieuKienApDung` text DEFAULT NULL,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `SoLanToiDa` int(11) DEFAULT NULL,
  `SoLanMoiKH` int(11) DEFAULT NULL,
  `TrangThai` enum('HoatDong','HetHan','Ngung') DEFAULT 'HoatDong',
  `MaNV` int(11) DEFAULT NULL,
  `MaCH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai_danhmuc`
--

CREATE TABLE `khuyenmai_danhmuc` (
  `MaKM` int(11) NOT NULL,
  `MaDanhMuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai_sanpham`
--

CREATE TABLE `khuyenmai_sanpham` (
  `MaKM` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsusu dungmagiamgia`
--

CREATE TABLE `lichsusu dungmagiamgia` (
  `MaLS` int(11) NOT NULL,
  `MaMGG` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `MaDH` int(11) DEFAULT NULL,
  `NgaySuDung` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsuvanchuyen`
--

CREATE TABLE `lichsuvanchuyen` (
  `MaLSVC` int(11) NOT NULL,
  `MaVC` int(11) NOT NULL,
  `TrangThai` varchar(50) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `DiaDiem` varchar(255) DEFAULT NULL,
  `ThoiGian` datetime NOT NULL,
  `NguoiCapNhat` varchar(100) DEFAULT NULL COMMENT 'Admin hoặc hệ thống',
  `NgayTao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichsuvanchuyen`
--

INSERT INTO `lichsuvanchuyen` (`MaLSVC`, `MaVC`, `TrangThai`, `MoTa`, `DiaDiem`, `ThoiGian`, `NguoiCapNhat`, `NgayTao`) VALUES
(1, 1, 'ChoLayHang', 'Đơn vận chuyển được tạo', NULL, '2025-10-29 18:49:32', 'Admin', '2025-10-29 11:49:32'),
(2, 1, 'DaGiao', 'Đã giao hàng thành công', '', '2025-10-29 19:09:54', 'Admin', '2025-10-29 12:09:54'),
(3, 1, 'DaGiao', 'Đã giao hàng thành công: fff', 'fff', '2025-10-29 19:10:15', 'Admin', '2025-10-29 12:10:15'),
(4, 2, 'ChoLayHang', 'Đơn vận chuyển được tạo', NULL, '2025-10-29 19:13:44', 'Admin', '2025-10-29 12:13:44'),
(5, 2, 'DaGiao', 'Đã giao hàng thành công', '', '2025-10-29 19:14:29', 'Admin', '2025-10-29 12:14:29'),
(6, 3, 'ChoLayHang', 'Đơn vận chuyển được tạo', NULL, '2025-10-29 19:16:52', 'Admin', '2025-10-29 12:16:52'),
(7, 3, 'DaGiao', 'Đã giao hàng thành công', '', '2025-10-29 19:16:58', 'Admin', '2025-10-29 12:16:58'),
(8, 3, 'DaGiao', 'Đã giao hàng thành công', '', '2025-10-29 19:21:53', 'Admin', '2025-10-29 12:21:53'),
(9, 4, 'ChoLayHang', 'Đơn vận chuyển được tạo', NULL, '2025-10-29 19:28:52', 'Admin', '2025-10-29 12:28:52'),
(10, 4, 'DangGiao', 'Đang giao hàng', '📍 Đang lấy vị trí...', '2025-10-29 19:44:16', 'Admin', '2025-10-29 12:44:16'),
(11, 5, 'ChoLayHang', 'Đơn vận chuyển được tạo', NULL, '2025-10-29 20:32:04', 'Admin', '2025-10-29 13:32:04'),
(12, 5, 'DaGiao', 'Đã giao hàng thành công', '', '2025-10-29 20:32:13', 'Admin', '2025-10-29 13:32:13'),
(13, 4, 'DaGiao', 'Đã giao hàng thành công', 'fff', '2025-10-29 23:46:16', 'Admin', '2025-10-29 16:46:16'),
(14, 6, 'ChoLayHang', 'Đơn vận chuyển được tạo', NULL, '2025-10-30 14:17:07', 'Admin', '2025-10-30 07:17:07'),
(15, 6, 'DangGiao', 'Đang giao hàng', '', '2025-10-30 14:17:33', 'Admin', '2025-10-30 07:17:33'),
(16, 6, 'DaGiao', 'Đã giao hàng thành công', '', '2025-10-30 14:19:39', 'Admin', '2025-10-30 07:19:39'),
(17, 7, 'ChoLayHang', 'Đơn vận chuyển được tạo', NULL, '2025-10-30 14:40:37', 'Admin', '2025-10-30 07:40:37'),
(18, 7, 'DaGiao', 'Đã giao hàng thành công', 'Lat: 21.051058, Lng: 105.751491', '2025-10-30 14:41:03', 'Admin', '2025-10-30 07:41:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `MaMGG` int(11) NOT NULL,
  `MaCH` int(11) NOT NULL,
  `MaMGG_Code` varchar(50) NOT NULL,
  `TenMa` varchar(255) NOT NULL,
  `LoaiGiam` enum('PhanTram','SoTien') DEFAULT 'PhanTram',
  `GiaTriGiam` decimal(10,2) NOT NULL,
  `GiaTriToiThieu` decimal(10,2) DEFAULT 0.00,
  `GiaTriToiDa` decimal(10,2) DEFAULT NULL,
  `SoLanSuDung` int(11) DEFAULT 0,
  `DaSuDung` int(11) NOT NULL DEFAULT 0,
  `SoLanDaSuDung` int(11) DEFAULT 0,
  `NgayBatDau` datetime NOT NULL,
  `NgayKetThuc` datetime NOT NULL,
  `TrangThai` enum('DangHoatDong','TamDung','KetThuc') DEFAULT 'DangHoatDong',
  `NgayTao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  `VaiTro` enum('KhachHang','NguoiBan','Admin') NOT NULL DEFAULT 'KhachHang',
  `TrangThai` enum('HoatDong','TamKhoa') NOT NULL DEFAULT 'HoatDong',
  `NgayTao` datetime DEFAULT current_timestamp(),
  `LanDangNhapCuoi` timestamp NULL DEFAULT NULL,
  `SoLanDangNhapThatBai` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Bảng lưu thông tin người dùng hệ thống (khách hàng, người bán, admin)';

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Email`, `MatKhau`, `HoTen`, `SoDienThoai`, `VaiTro`, `TrangThai`, `NgayTao`, `LanDangNhapCuoi`, `SoLanDangNhapThatBai`) VALUES
(1, 'huyrno@gmail.com', '$2y$10$Yo4gdkKnF5xbd59zjTOLautO.fw7.aUBr9I1wCYUa5F7dCS/xELnq', 'trần thanh bình', '0123456789', 'KhachHang', 'TamKhoa', '2025-10-18 07:12:51', NULL, 0),
(2, '123@gmail.com', '$2y$10$d38isFoUvBYmLauFDJf8zOY4ha44OD5zvb.a7UqZ36GlidRMkGR56', 'trần thanh bình', '0123456789', 'NguoiBan', 'HoatDong', '2025-10-19 00:31:02', NULL, 0),
(3, 'buyer01@gmail.com', '$2y$10$.iaGSzwFCIsYcfeRJO6GZeqtvsu3Ei2T/g4iSqWwY1YY9nZNXUYD2', 'trần thanh bình', '0123456789', 'KhachHang', 'TamKhoa', '2025-10-19 18:24:15', NULL, 0),
(4, 'datn12@gmail.com', '$2y$10$v/xSzVUNKfsp2PTxJaRLkussUL1Ll6fmuGJQe9ghYqoYj5zl3GZiC', 'dfdf', '09867636363', 'KhachHang', 'HoatDong', '2025-10-20 00:55:30', NULL, 0),
(5, '0359909565@gmail.com', '$2y$10$vHuWB5Nq/PvWouQf/YcVWOwMO55IQAqarGJO/dEiP5PyQdVn6Tjk6', 'dfdf', '09867636363', 'NguoiBan', 'HoatDong', '2025-10-20 01:24:59', NULL, 0),
(6, 'phamtuananh2209@gmail.com', '$2y$10$6MzyPd3e61hfO/6SX6SLGufq73zPdy0ROZDp9wyvR7gvFu0jcT48m', 'dfdf', '09867636363', 'NguoiBan', 'HoatDong', '2025-10-20 09:54:25', NULL, 0),
(7, '0986081914@gmail.com', '$2y$10$pfHoXQPXfEVtogy08QGdcumxU/sZEeU4wgJq7gpcH/XTkFXVXnkti', 'dfdf', '0376450037', 'NguoiBan', 'HoatDong', '2025-10-20 23:10:46', NULL, 0),
(8, 'dattn123@gmail.com', '$2y$10$o/xtPDJq2JS6HXJGvZSpleYlBj6GzqL74hTtw2iKPFoXgdjVjry/2', 'dfdf', '09867636363', 'NguoiBan', 'HoatDong', '2025-10-27 00:07:02', NULL, 0),
(13, 'admin@sanxanh.com', '$2y$10$8NUnQJuQjP1k8MOzrwV9O.onlJcvpiMvL6mSpudVDJTWIfo.gJAry', 'Administrator', '0999999999', 'Admin', 'HoatDong', '2025-10-27 19:43:22', NULL, 0),
(15, 'user1@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nguyễn Văn A', '0901234567', 'KhachHang', 'HoatDong', '2024-01-15 10:30:00', NULL, 0),
(16, 'user2@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Trần Thị B', '0902345678', 'KhachHang', 'HoatDong', '2024-02-20 14:15:00', NULL, 0),
(17, 'user3@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lê Văn C', '0903456789', 'KhachHang', 'TamKhoa', '2024-03-10 09:00:00', NULL, 0),
(18, 'user4@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Phạm Thị D', '0904567890', 'KhachHang', 'HoatDong', '2024-04-05 16:45:00', NULL, 0),
(19, 'user5@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hoàng Văn E', '0905678901', 'KhachHang', 'HoatDong', '2025-10-27 00:00:00', NULL, 0),
(20, 'user6@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vũ Thị F', '0906789012', 'KhachHang', 'HoatDong', '2025-10-27 00:00:00', NULL, 0),
(21, 'khach1@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nguyễn Văn An', '0901234567', 'KhachHang', 'HoatDong', '2024-01-15 10:00:00', NULL, 0),
(22, 'khach2@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Trần Thị Bình', '0902345678', 'KhachHang', 'HoatDong', '2024-02-20 11:00:00', NULL, 0),
(23, 'khach3@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lê Hoàng Cường', '0903456789', 'KhachHang', 'HoatDong', '2024-03-10 12:00:00', NULL, 0),
(24, 'khach4@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Phạm Thị Dung', '0904567890', 'KhachHang', 'HoatDong', '2024-04-05 13:00:00', NULL, 0),
(25, 'khach5@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hoàng Văn Em', '0905678901', 'KhachHang', 'HoatDong', '2024-05-12 14:00:00', NULL, 0),
(31, 'seller1@shop.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nguyễn Văn Seller 1', '0901234567', 'NguoiBan', 'HoatDong', '2025-10-27 23:11:54', NULL, 0),
(32, 'seller2@shop.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Trần Thị Seller 2', '0902345678', 'NguoiBan', 'HoatDong', '2025-10-27 23:11:54', NULL, 0),
(33, 'seller3@shop.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lê Văn Seller 3', '0903456789', 'NguoiBan', 'HoatDong', '2025-10-27 23:11:54', NULL, 0),
(34, 'seller4@shop.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Phạm Thị Seller 4', '0904567890', 'NguoiBan', 'TamKhoa', '2025-10-27 23:11:54', NULL, 0),
(35, 'seller5@shop.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hoàng Văn Seller 5', '0905678901', 'NguoiBan', 'HoatDong', '2025-10-27 23:11:54', NULL, 0);

--
-- Bẫy `nguoidung`
--
DELIMITER $$
CREATE TRIGGER `after_user_login` AFTER UPDATE ON `nguoidung` FOR EACH ROW BEGIN
    IF NEW.LanDangNhapCuoi != OLD.LanDangNhapCuoi THEN
        INSERT INTO ActivityLog (MaND, HanhDong, ChiTiet)
        VALUES (NEW.MaND, 'LOGIN', 'User đăng nhập thành công');
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_UserStatusChange` AFTER UPDATE ON `nguoidung` FOR EACH ROW BEGIN
    IF OLD.TrangThai != NEW.TrangThai THEN
        INSERT INTO AdminLog (MaND, HanhDong, MoTa, ThoiGian)
        VALUES (
            NEW.MaND,
            'Thay đổi trạng thái',
            CONCAT('Từ ', OLD.TrangThai, ' sang ', NEW.TrangThai),
            NOW()
        );
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoidanhgia`
--

CREATE TABLE `phanhoidanhgia` (
  `MaPH` int(11) NOT NULL,
  `MaDG` int(11) NOT NULL COMMENT 'Mã đánh giá',
  `MaCH` int(11) NOT NULL COMMENT 'Cửa hàng phản hồi',
  `NoiDung` text NOT NULL COMMENT 'Nội dung phản hồi',
  `NgayPhanHoi` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(100) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `Gia` decimal(15,2) NOT NULL,
  `SoLuongTon` int(11) DEFAULT 0,
  `MaDanhMuc` int(11) DEFAULT NULL,
  `MaCH` int(11) DEFAULT NULL,
  `LuotXem` int(11) DEFAULT 0,
  `LuotBan` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MoTa`, `Gia`, `SoLuongTon`, `MaDanhMuc`, `MaCH`, `LuotXem`, `LuotBan`) VALUES
(3, 'thuốc trị ngu', 'uống càng nhiều càng bớt ngu', 10000000.00, 90, 19, NULL, 0, 48),
(4, 'thuốc trị mụn đít', 'uống để bớt đau đít', 100000.00, 292, 19, NULL, 0, 3),
(5, 'túi lò tôn', '', 1000.00, 28, 16, NULL, 0, 1),
(6, 'túi lò tôn', 'fd', 1000000.00, 25, 1, NULL, 0, 9),
(7, 'túi lò tôn limited', 'NGU VÀ THIỂU NĂNG', 110000.00, 9, 16, NULL, 0, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `MaTT` int(11) NOT NULL,
  `MaDH` int(11) DEFAULT NULL,
  `MaND` int(11) DEFAULT NULL,
  `SoTien` decimal(15,2) DEFAULT NULL,
  `PhuongThuc` enum('TheTinDung','ViDienTu','ChuyenKhoan','TienMat') DEFAULT NULL,
  `TrangThai` enum('ThanhCong','ThatBai','DangXuLy') DEFAULT 'DangXuLy',
  `NgayThanhToan` datetime DEFAULT current_timestamp(),
  `MaGiaoDich` varchar(255) DEFAULT NULL,
  `GhiChu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`MaTT`, `MaDH`, `MaND`, `SoTien`, `PhuongThuc`, `TrangThai`, `NgayThanhToan`, `MaGiaoDich`, `GhiChu`) VALUES
(1, 1, 1, 44030000.00, 'TienMat', 'DangXuLy', '2025-10-18 07:37:59', NULL, NULL),
(2, 2, 1, 11015000.00, 'TienMat', 'DangXuLy', '2025-10-18 07:43:25', NULL, NULL),
(3, 3, 1, 11015000.00, 'TienMat', 'DangXuLy', '2025-10-18 08:09:09', NULL, NULL),
(4, 4, 3, 125000.00, 'TienMat', 'DangXuLy', '2025-10-19 21:51:22', NULL, NULL),
(5, 5, 4, 125000.00, 'TienMat', 'DangXuLy', '2025-10-20 00:55:44', NULL, NULL),
(6, 6, 4, 11015000.00, 'TienMat', 'DangXuLy', '2025-10-20 02:08:29', NULL, NULL),
(7, 7, 4, 11255000.00, 'TienMat', 'DangXuLy', '2025-10-20 02:09:29', NULL, NULL),
(8, 8, 4, 16100.00, 'TienMat', 'DangXuLy', '2025-10-20 02:10:34', NULL, NULL),
(9, 9, 4, 16100.00, 'TienMat', 'DangXuLy', '2025-10-20 02:15:44', NULL, NULL),
(10, 10, 1, 125000.00, 'TienMat', 'DangXuLy', '2025-10-20 09:53:26', NULL, NULL),
(11, 11, 4, 16100.00, 'TienMat', 'DangXuLy', '2025-10-20 23:09:12', NULL, NULL),
(12, 12, 4, 3341100.00, 'ViDienTu', 'DangXuLy', '2025-10-26 23:57:42', NULL, NULL),
(13, 13, 4, 11015000.00, 'TienMat', 'DangXuLy', '2025-10-27 08:34:20', NULL, NULL),
(14, 14, 4, 125000.00, 'TheTinDung', 'DangXuLy', '2025-10-27 09:55:19', NULL, NULL),
(15, 15, 4, 1240000.00, 'TheTinDung', 'DangXuLy', '2025-10-27 10:55:23', NULL, NULL),
(16, 16, 4, 125000.00, 'TheTinDung', 'DangXuLy', '2025-10-27 11:02:32', NULL, NULL),
(17, 47, 4, 1251000.00, 'TheTinDung', 'DangXuLy', '2025-10-28 09:09:59', NULL, NULL),
(18, 48, 13, 1251000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:15:20', NULL, NULL),
(19, 49, 13, 136000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:21:24', NULL, NULL),
(20, 50, 13, 11015000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:41:49', NULL, NULL),
(21, 51, 13, 1115000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:45:35', NULL, NULL),
(22, 52, 13, 136000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:50:04', NULL, NULL),
(23, 53, 4, 1115000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:53:15', NULL, NULL),
(24, 54, 4, 136000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:53:45', NULL, NULL),
(25, 55, 4, 136000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:55:04', NULL, NULL),
(26, 56, 4, 81000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 09:59:03', NULL, NULL),
(27, 57, 13, 81000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 10:02:23', NULL, NULL),
(28, 58, 13, 81000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 11:21:21', NULL, NULL),
(29, 59, 13, 1060000.00, 'TheTinDung', 'DangXuLy', '2025-10-29 11:39:43', NULL, NULL),
(30, 60, 13, 136000.00, 'TheTinDung', 'DangXuLy', '2025-10-30 14:16:26', NULL, NULL),
(31, 61, 13, 136000.00, 'TheTinDung', 'DangXuLy', '2025-10-30 14:38:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `MaTB` int(11) NOT NULL,
  `MaND` int(11) DEFAULT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `LoaiTB` enum('donhang','khuyenmai','dangky','hethong','khac') DEFAULT 'khac',
  `TrangThai` enum('chua_doc','da_doc') DEFAULT 'chua_doc',
  `NgayTao` datetime DEFAULT current_timestamp(),
  `NgayDoc` datetime DEFAULT NULL,
  `Link` varchar(500) DEFAULT NULL,
  `Icon` varchar(100) DEFAULT 'bell',
  `MauSac` varchar(20) DEFAULT '#2e7d32'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`MaTB`, `MaND`, `TieuDe`, `NoiDung`, `LoaiTB`, `TrangThai`, `NgayTao`, `NgayDoc`, `Link`, `Icon`, `MauSac`) VALUES
(1, 1, 'Chào mừng bạn đến với sàn thương mại điện tử!', 'Cảm ơn bạn đã đăng ký tài khoản. Hãy khám phá những sản phẩm tuyệt vời của chúng tôi.', 'dangky', 'da_doc', '2025-10-18 07:53:51', '2025-10-18 08:08:57', NULL, 'party', '#4caf50'),
(2, 1, 'Đơn hàng #1 đã được đặt thành công!', 'Đơn hàng của bạn đang được xử lý. Chúng tôi sẽ thông báo khi đơn hàng được giao.', 'donhang', 'da_doc', '2025-10-18 07:53:51', '2025-10-18 08:08:53', NULL, 'shopping_cart', '#2196f3'),
(3, 1, 'Khuyến mãi đặc biệt - Giảm 50%!', 'Cơ hội vàng! Giảm giá 50% cho tất cả sản phẩm điện tử. Áp dụng đến hết tháng.', 'khuyenmai', 'da_doc', '2025-10-18 07:53:51', '2025-10-18 08:08:53', NULL, 'local_offer', '#ff9800'),
(4, 1, 'Đơn hàng #3 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-18 08:09:09', '2025-10-18 08:09:28', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(5, 3, 'Chào mừng trần thanh bình  đến với sàn thương mại điện tử!', 'Cảm ơn bạn đã đăng ký tài khoản. Hãy khám phá những sản phẩm tuyệt vời của chúng tôi và nhận được nhiều ưu đãi hấp dẫn.', 'dangky', 'chua_doc', '2025-10-19 18:24:15', NULL, 'index.php', 'party', '#4caf50'),
(6, 3, 'Đơn hàng #4 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-19 21:51:22', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(7, 4, 'Chào mừng dfdf đến với sàn thương mại điện tử!', 'Cảm ơn bạn đã đăng ký tài khoản. Hãy khám phá những sản phẩm tuyệt vời của chúng tôi và nhận được nhiều ưu đãi hấp dẫn.', 'dangky', 'da_doc', '2025-10-20 00:55:30', '2025-10-20 01:25:41', 'index.php', 'party', '#4caf50'),
(8, 4, 'Đơn hàng #5 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-20 00:55:44', '2025-10-20 02:08:47', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(9, 4, 'Đơn hàng #9 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-20 02:15:44', '2025-10-20 23:11:40', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(10, 1, 'Đơn hàng #10 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-20 09:53:26', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(12, 1, 'Chào mừng bạn đến với sàn thương mại điện tử!', 'Cảm ơn bạn đã đăng ký tài khoản. Hãy khám phá những sản phẩm tuyệt vời của chúng tôi.', 'dangky', 'chua_doc', '2025-10-20 23:40:46', NULL, NULL, 'party', '#4caf50'),
(13, 1, 'Đơn hàng #1 đã được đặt thành công!', 'Đơn hàng của bạn đang được xử lý. Chúng tôi sẽ thông báo khi đơn hàng được giao.', 'donhang', 'chua_doc', '2025-10-20 23:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(14, 1, 'Khuyến mãi đặc biệt - Giảm 50%!', 'Cơ hội vàng! Giảm giá 50% cho tất cả sản phẩm điện tử. Áp dụng đến hết tháng.', 'khuyenmai', 'chua_doc', '2025-10-20 23:40:46', NULL, NULL, 'local_offer', '#ff9800'),
(15, 4, 'Đơn hàng #12 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-26 23:57:42', '2025-10-26 23:58:31', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(16, 4, 'Đơn hàng #12 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-26 23:57:42', '2025-10-26 23:58:30', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(17, 4, 'Đơn hàng #13 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 08:34:20', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(18, 4, 'Đơn hàng #13 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 08:34:20', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(19, 4, 'Đơn hàng #14 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 09:55:19', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(20, 4, 'Đơn hàng #14 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 09:55:19', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(21, 4, 'Đơn hàng #15 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 10:55:23', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(22, 4, 'Đơn hàng #15 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-27 10:55:23', '2025-10-27 22:52:26', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(23, 4, 'Đơn hàng #16 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 11:02:32', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(24, 4, 'Đơn hàng #16 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 11:02:32', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(25, 4, 'Đơn hàng #13 đã bị hủy', 'Đơn hàng của bạn đã bị hủy. Nếu có thắc mắc, vui lòng liên hệ hỗ trợ.', 'donhang', 'chua_doc', '2025-10-27 21:01:59', NULL, 'donhangcuatoi.php', 'cancel', '#f44336'),
(26, 21, 'Đơn hàng #17 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(27, 22, 'Đơn hàng #18 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(28, 23, 'Đơn hàng #19 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(29, 24, 'Đơn hàng #20 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(30, 25, 'Đơn hàng #21 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(31, 21, 'Đơn hàng #22 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(32, 22, 'Đơn hàng #23 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(33, 23, 'Đơn hàng #24 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(34, 24, 'Đơn hàng #25 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(35, 25, 'Đơn hàng #26 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(36, 21, 'Đơn hàng #27 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(37, 22, 'Đơn hàng #28 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(38, 23, 'Đơn hàng #29 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(39, 24, 'Đơn hàng #30 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(40, 25, 'Đơn hàng #31 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:25:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(41, 21, 'Đơn hàng #32 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(42, 22, 'Đơn hàng #33 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(43, 23, 'Đơn hàng #34 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(44, 24, 'Đơn hàng #35 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(45, 25, 'Đơn hàng #36 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(46, 21, 'Đơn hàng #37 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(47, 22, 'Đơn hàng #38 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(48, 23, 'Đơn hàng #39 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(49, 24, 'Đơn hàng #40 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(50, 25, 'Đơn hàng #41 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(51, 21, 'Đơn hàng #42 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(52, 22, 'Đơn hàng #43 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(53, 23, 'Đơn hàng #44 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(54, 24, 'Đơn hàng #45 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(55, 25, 'Đơn hàng #46 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-27 22:40:46', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(56, 4, 'Đơn hàng #11 đã bị hủy', 'Đơn hàng của bạn đã bị hủy. Nếu có thắc mắc, vui lòng liên hệ hỗ trợ.', 'donhang', 'chua_doc', '2025-10-27 22:49:55', NULL, 'donhangcuatoi.php', 'cancel', '#f44336'),
(57, 4, 'Đơn hàng #47 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-28 09:09:59', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(58, 4, 'Đơn hàng #47 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-28 09:09:59', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(59, 13, 'Đơn hàng #48 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:15:20', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(60, 13, 'Đơn hàng #48 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:15:20', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(61, 13, 'Đơn hàng #49 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:21:24', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(62, 13, 'Đơn hàng #49 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:21:24', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(63, 13, 'Đơn hàng #50 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:41:49', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(64, 13, 'Đơn hàng #50 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:41:49', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(65, 4, 'Đơn hàng #47 đang được xử lý', 'Đơn hàng của bạn đã được xác nhận và đang được chuẩn bị để giao hàng.', 'donhang', 'chua_doc', '2025-10-29 09:43:52', NULL, 'donhangcuatoi.php', 'settings', '#ff9800'),
(66, 13, 'Đơn hàng #51 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:45:35', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(67, 13, 'Đơn hàng #51 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:45:35', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(68, 13, 'Đơn hàng #52 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:50:04', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(69, 13, 'Đơn hàng #52 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 09:50:04', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(70, 4, 'Đơn hàng #53 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-29 09:53:15', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(71, 4, 'Đơn hàng #53 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-29 09:53:15', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(72, 4, 'Đơn hàng #54 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-29 09:53:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(73, 4, 'Đơn hàng #54 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-29 09:53:45', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(74, 4, 'Đơn hàng #55 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-29 09:55:04', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(75, 4, 'Đơn hàng #55 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-29 09:55:04', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(76, 4, 'Đơn hàng #56 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-29 09:59:03', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(77, 4, 'Đơn hàng #56 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'chua_doc', '2025-10-29 09:59:03', NULL, 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(78, 13, 'Đơn hàng #57 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 10:02:23', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(79, 13, 'Đơn hàng #57 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 10:02:23', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(80, 13, 'Đơn hàng #58 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 11:21:21', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(81, 13, 'Đơn hàng #58 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 11:21:21', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(82, 13, 'Đơn hàng #59 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 11:39:43', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(83, 13, 'Đơn hàng #59 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-29 11:39:43', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(84, 13, 'Đơn hàng #59 đang được xử lý', 'Đơn hàng của bạn đã được xác nhận và đang được chuẩn bị để giao hàng.', 'donhang', 'da_doc', '2025-10-29 11:53:54', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'settings', '#ff9800'),
(85, 13, 'Đơn hàng #58 đã bị hủy', 'Đơn hàng của bạn đã bị hủy. Nếu có thắc mắc, vui lòng liên hệ hỗ trợ.', 'donhang', 'da_doc', '2025-10-29 11:54:02', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'cancel', '#f44336'),
(86, 13, 'Đơn hàng #59 đang được xử lý', 'Đơn hàng của bạn đã được xác nhận và đang được chuẩn bị để giao hàng.', 'donhang', 'da_doc', '2025-10-29 12:07:11', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'settings', '#ff9800'),
(87, 4, 'Đơn hàng #55 đang được xử lý', 'Đơn hàng của bạn đã được xác nhận và đang được chuẩn bị để giao hàng.', 'donhang', 'chua_doc', '2025-10-29 12:14:52', NULL, 'donhangcuatoi.php', 'settings', '#ff9800'),
(88, 13, 'Đơn hàng #59 đang được xử lý', 'Đơn hàng của bạn đã được xác nhận và đang được chuẩn bị để giao hàng.', 'donhang', 'da_doc', '2025-10-29 12:55:41', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'settings', '#ff9800'),
(89, 4, 'Đơn hàng #56 đang được xử lý', 'Đơn hàng của bạn đã được xác nhận và đang được chuẩn bị để giao hàng.', 'donhang', 'chua_doc', '2025-10-29 12:58:54', NULL, 'donhangcuatoi.php', 'settings', '#ff9800'),
(90, 13, 'Đơn hàng #48 đang được xử lý', 'Đơn hàng của bạn đã được xác nhận và đang được chuẩn bị để giao hàng.', 'donhang', 'da_doc', '2025-10-29 20:34:30', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'settings', '#ff9800'),
(91, 13, 'Đơn hàng #60 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-30 14:16:26', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(92, 13, 'Đơn hàng #60 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-30 14:16:26', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(93, 13, 'Đơn hàng #61 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-30 14:38:54', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3'),
(94, 13, 'Đơn hàng #61 đã được đặt thành công!', 'Cảm ơn bạn đã đặt hàng. Đơn hàng của bạn đang chờ xác nhận từ cửa hàng.', 'donhang', 'da_doc', '2025-10-30 14:38:54', '2025-10-30 17:46:51', 'donhangcuatoi.php', 'shopping_cart', '#2196f3');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `thongkedanhgia`
-- (See below for the actual view)
--
CREATE TABLE `thongkedanhgia` (
`MaSP` int(11)
,`TenSP` varchar(100)
,`TongDanhGia` bigint(21)
,`DiemTrungBinh` decimal(5,1)
,`Sao5` decimal(22,0)
,`Sao4` decimal(22,0)
,`Sao3` decimal(22,0)
,`Sao2` decimal(22,0)
,`Sao1` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinthanhtoan`
--

CREATE TABLE `thongtinthanhtoan` (
  `MaTTTT` int(11) NOT NULL,
  `MaCH` int(11) NOT NULL,
  `TenNganHang` varchar(100) NOT NULL,
  `MaNganHang` varchar(20) NOT NULL COMMENT 'VCB, TCB, MB, etc.',
  `SoTaiKhoan` varchar(50) NOT NULL,
  `TenChuTaiKhoan` varchar(100) NOT NULL COMMENT 'Viết hoa không dấu',
  `QRCodeImage` varchar(255) DEFAULT NULL COMMENT 'Đường dẫn ảnh QR Code',
  `ChiNhanh` varchar(200) DEFAULT NULL,
  `LoaiTaiKhoan` enum('CaNhan','DoanhNghiep') DEFAULT 'CaNhan',
  `MacDinh` tinyint(1) DEFAULT 0 COMMENT '1 = tài khoản mặc định',
  `TrangThai` enum('HoatDong','TamKhoa') DEFAULT 'HoatDong',
  `NgayTao` datetime DEFAULT current_timestamp(),
  `NgayCapNhat` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinthanhtoan`
--

INSERT INTO `thongtinthanhtoan` (`MaTTTT`, `MaCH`, `TenNganHang`, `MaNganHang`, `SoTaiKhoan`, `TenChuTaiKhoan`, `QRCodeImage`, `ChiNhanh`, `LoaiTaiKhoan`, `MacDinh`, `TrangThai`, `NgayTao`, `NgayCapNhat`) VALUES
(1, 7, 'BIDV', 'BIDV', '8810529518', 'NGUYEN TIEN DAT', 'uploads/qr_codes/qr_7_1761704986.jpg', 'hn', 'CaNhan', 1, 'HoatDong', '2025-10-27 10:53:44', '2025-10-29 09:29:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinvanchuyen`
--

CREATE TABLE `thongtinvanchuyen` (
  `MaVC` int(11) NOT NULL,
  `MaDH` int(11) NOT NULL COMMENT 'Mã đơn hàng',
  `MaDVVC` int(11) DEFAULT NULL COMMENT 'Mã đơn vị vận chuyển',
  `MaVanDon` varchar(100) DEFAULT NULL COMMENT 'Mã tracking từ đơn vị VC',
  `TrangThaiVC` varchar(50) DEFAULT 'ChoLayHang' COMMENT 'ChoLayHang, DangLayHang, DangGiao, DaGiao, ThatBai, Hoan',
  `TenNguoiNhan` varchar(100) DEFAULT NULL,
  `SdtNguoiNhan` varchar(20) DEFAULT NULL,
  `DiaChiGiao` text DEFAULT NULL,
  `PhiVanChuyen` decimal(10,2) DEFAULT 0.00,
  `GhiChu` text DEFAULT NULL,
  `NgayLayHang` datetime DEFAULT NULL,
  `NgayGiaoDuKien` datetime DEFAULT NULL,
  `NgayGiaoThucTe` datetime DEFAULT NULL,
  `NguoiGiao` varchar(100) DEFAULT NULL,
  `SdtNguoiGiao` varchar(20) DEFAULT NULL,
  `NgayTao` timestamp NOT NULL DEFAULT current_timestamp(),
  `NgayCapNhat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinvanchuyen`
--

INSERT INTO `thongtinvanchuyen` (`MaVC`, `MaDH`, `MaDVVC`, `MaVanDon`, `TrangThaiVC`, `TenNguoiNhan`, `SdtNguoiNhan`, `DiaChiGiao`, `PhiVanChuyen`, `GhiChu`, `NgayLayHang`, `NgayGiaoDuKien`, `NgayGiaoThucTe`, `NguoiGiao`, `SdtNguoiGiao`, `NgayTao`, `NgayCapNhat`) VALUES
(1, 57, 3, 'GHN446688', 'DaGiao', 'Administrator', '0999999999', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 0.00, 'HÀNG LÒ TÔN', NULL, '2025-11-01 12:48:00', '2025-10-29 19:10:15', NULL, NULL, '2025-10-29 11:49:32', '2025-10-29 12:10:15'),
(2, 54, 6, 'GHN4466885', 'DaGiao', 'dfdf', '09867636363', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 0.00, '', NULL, '2025-11-01 13:13:00', '2025-10-29 19:14:29', NULL, NULL, '2025-10-29 12:13:44', '2025-10-29 12:14:29'),
(3, 51, 1, 'GHN44668854', 'DaGiao', 'Administrator', '0999999999', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 0.00, '', NULL, '2025-11-01 13:16:00', '2025-10-29 19:21:53', NULL, NULL, '2025-10-29 12:16:52', '2025-10-29 12:21:53'),
(4, 47, 1, '', 'DaGiao', 'dfdf', '09867636363', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 0.00, '', NULL, '2025-11-01 13:28:00', '2025-10-29 23:46:16', NULL, NULL, '2025-10-29 12:28:52', '2025-10-29 16:46:16'),
(5, 32, 1, '', 'DaGiao', 'Nguyễn Văn An', '0901234567', '123 Nguyễn Huệ, Quận 1, TP.HCM', 0.00, '', NULL, '2025-11-01 14:32:00', '2025-10-29 20:32:13', NULL, NULL, '2025-10-29 13:32:04', '2025-10-29 13:32:13'),
(6, 60, 1, 'GHN446688s', 'DaGiao', 'Administrator', '0999999999', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 0.00, '', NULL, '2025-11-02 08:17:00', '2025-10-30 14:19:39', NULL, NULL, '2025-10-30 07:17:07', '2025-10-30 07:19:39'),
(7, 61, 3, 'GHN4466885', 'DaGiao', 'Administrator', '0999999999', 'nhà sô 1 ngõ 23/55 phú diễn bắc từ liêm, hà nội', 0.00, '', NULL, '2025-11-04 08:40:00', '2025-10-30 14:41:03', NULL, NULL, '2025-10-30 07:40:37', '2025-10-30 07:41:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usersessions`
--

CREATE TABLE `usersessions` (
  `session_id` varchar(128) NOT NULL,
  `MaND` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vanchuyen`
--

CREATE TABLE `vanchuyen` (
  `MaVC` int(11) NOT NULL,
  `MaDH` int(11) DEFAULT NULL,
  `DiaChiNhan` varchar(255) DEFAULT NULL,
  `TenNguoiNhan` varchar(100) DEFAULT NULL,
  `SDTNguoiNhan` varchar(20) DEFAULT NULL,
  `PhuongThucVC` enum('Nhanh','TieuChuan','TietKiem') DEFAULT NULL,
  `TrangThaiVC` enum('DangXuLy','DangGiao','DaGiao','DaHuy') DEFAULT 'DangXuLy',
  `NgayGui` datetime DEFAULT NULL,
  `NgayDuKienGiao` datetime DEFAULT NULL,
  `MaVanDon` varchar(255) DEFAULT NULL,
  `DonViVC` varchar(100) DEFAULT NULL,
  `ChiPhiVC` decimal(15,2) DEFAULT NULL,
  `GhiChu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `vw_vanchuyen_daydu`
-- (See below for the actual view)
--
CREATE TABLE `vw_vanchuyen_daydu` (
`MaVC` int(11)
,`MaDH` int(11)
,`TrangThaiDH` varchar(50)
,`TongTien` decimal(15,2)
,`KhachHang` varchar(100)
,`Email` varchar(100)
,`SoDienThoai` varchar(20)
,`DonViVanChuyen` varchar(100)
,`MaDonViVC` varchar(50)
,`HotlineDV` varchar(20)
,`MaVanDon` varchar(100)
,`TrangThaiVC` varchar(50)
,`DiaChiGiao` text
,`PhiVanChuyen` decimal(10,2)
,`NgayLayHang` datetime
,`NgayGiaoDuKien` datetime
,`NgayGiaoThucTe` datetime
,`NguoiGiao` varchar(100)
,`SdtNguoiGiao` varchar(20)
,`NgayTao` timestamp
,`NgayCapNhat` timestamp
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_donhang_chitiet`
-- (See below for the actual view)
--
CREATE TABLE `v_donhang_chitiet` (
`MaDH` int(11)
,`MaND` int(11)
,`HoTen` varchar(100)
,`Email` varchar(100)
,`NgayDat` datetime
,`TongTien` decimal(15,2)
,`TrangThai` varchar(50)
,`DiaChiGiao` varchar(255)
,`SoSanPham` bigint(21)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_donhang_full`
-- (See below for the actual view)
--
CREATE TABLE `v_donhang_full` (
`MaDH` int(11)
,`MaND` int(11)
,`HoTen` varchar(100)
,`Email` varchar(100)
,`NgayDat` datetime
,`TongTien` decimal(15,2)
,`TrangThai` varchar(50)
,`DiaChiGiao` varchar(255)
,`SoSanPham` bigint(21)
,`DanhSachSanPham` mediumtext
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_orderdetails`
-- (See below for the actual view)
--
CREATE TABLE `v_orderdetails` (
`MaDH` int(11)
,`MaND` int(11)
,`HoTen` varchar(100)
,`Email` varchar(100)
,`TongTien` decimal(15,2)
,`TrangThai` varchar(50)
,`NgayDat` datetime
,`DiaChiGiao` varchar(255)
,`SoLuongSanPham` bigint(21)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_sanpham_conhang`
-- (See below for the actual view)
--
CREATE TABLE `v_sanpham_conhang` (
`MaSP` int(11)
,`TenSP` varchar(100)
,`MoTa` text
,`Gia` decimal(15,2)
,`SoLuongTon` int(11)
,`MaDanhMuc` int(11)
,`MaCH` int(11)
,`TenCuaHang` varchar(100)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_shopproductstats`
-- (See below for the actual view)
--
CREATE TABLE `v_shopproductstats` (
`MaCH` int(11)
,`TenCH` varchar(100)
,`TongSanPham` bigint(21)
,`TongTonKho` decimal(32,0)
,`GiaTrungBinh` decimal(19,6)
,`TongLuotXem` decimal(32,0)
,`TongLuotBan` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_thongbao_chitiet`
-- (See below for the actual view)
--
CREATE TABLE `v_thongbao_chitiet` (
`MaTB` int(11)
,`MaND` int(11)
,`HoTen` varchar(100)
,`Email` varchar(100)
,`TieuDe` varchar(255)
,`NoiDung` text
,`LoaiTB` enum('donhang','khuyenmai','dangky','hethong','khac')
,`TrangThai` enum('chua_doc','da_doc')
,`NgayTao` datetime
,`NgayDoc` datetime
,`Link` varchar(500)
,`Icon` varchar(100)
,`MauSac` varchar(20)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_topproducts`
-- (See below for the actual view)
--
CREATE TABLE `v_topproducts` (
`MaSP` int(11)
,`TenSP` varchar(100)
,`Gia` decimal(15,2)
,`LuotXem` int(11)
,`LuotBan` int(11)
,`TenCH` varchar(100)
,`DiemTrungBinh` decimal(7,4)
,`SoLuongDanhGia` bigint(21)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_userstats`
-- (See below for the actual view)
--
CREATE TABLE `v_userstats` (
`Ngay` date
,`SoNguoiDangKy` bigint(21)
,`HoatDong` decimal(22,0)
,`TamKhoa` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `thongkedanhgia`
--
DROP TABLE IF EXISTS `thongkedanhgia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `thongkedanhgia`  AS SELECT `sp`.`MaSP` AS `MaSP`, `sp`.`TenSP` AS `TenSP`, count(`dg`.`MaDG`) AS `TongDanhGia`, round(avg(`dg`.`SoSao`),1) AS `DiemTrungBinh`, sum(case when `dg`.`SoSao` = 5 then 1 else 0 end) AS `Sao5`, sum(case when `dg`.`SoSao` = 4 then 1 else 0 end) AS `Sao4`, sum(case when `dg`.`SoSao` = 3 then 1 else 0 end) AS `Sao3`, sum(case when `dg`.`SoSao` = 2 then 1 else 0 end) AS `Sao2`, sum(case when `dg`.`SoSao` = 1 then 1 else 0 end) AS `Sao1` FROM (`sanpham` `sp` left join `danhgiasanpham` `dg` on(`sp`.`MaSP` = `dg`.`MaSP` and `dg`.`TrangThai` = 'HienThi')) GROUP BY `sp`.`MaSP`, `sp`.`TenSP` ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `vw_vanchuyen_daydu`
--
DROP TABLE IF EXISTS `vw_vanchuyen_daydu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_vanchuyen_daydu`  AS SELECT `vc`.`MaVC` AS `MaVC`, `vc`.`MaDH` AS `MaDH`, `dh`.`TrangThai` AS `TrangThaiDH`, `dh`.`TongTien` AS `TongTien`, `nd`.`HoTen` AS `KhachHang`, `nd`.`Email` AS `Email`, `nd`.`SoDienThoai` AS `SoDienThoai`, `dv`.`TenDonVi` AS `DonViVanChuyen`, `dv`.`MaDonVi` AS `MaDonViVC`, `dv`.`Hotline` AS `HotlineDV`, `vc`.`MaVanDon` AS `MaVanDon`, `vc`.`TrangThaiVC` AS `TrangThaiVC`, `vc`.`DiaChiGiao` AS `DiaChiGiao`, `vc`.`PhiVanChuyen` AS `PhiVanChuyen`, `vc`.`NgayLayHang` AS `NgayLayHang`, `vc`.`NgayGiaoDuKien` AS `NgayGiaoDuKien`, `vc`.`NgayGiaoThucTe` AS `NgayGiaoThucTe`, `vc`.`NguoiGiao` AS `NguoiGiao`, `vc`.`SdtNguoiGiao` AS `SdtNguoiGiao`, `vc`.`NgayTao` AS `NgayTao`, `vc`.`NgayCapNhat` AS `NgayCapNhat` FROM (((`thongtinvanchuyen` `vc` left join `donhang` `dh` on(`vc`.`MaDH` = `dh`.`MaDH`)) left join `nguoidung` `nd` on(`dh`.`MaND` = `nd`.`MaND`)) left join `donvivanchuyen` `dv` on(`vc`.`MaDVVC` = `dv`.`MaDVVC`)) ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_donhang_chitiet`
--
DROP TABLE IF EXISTS `v_donhang_chitiet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_donhang_chitiet`  AS SELECT `dh`.`MaDH` AS `MaDH`, `dh`.`MaND` AS `MaND`, `nd`.`HoTen` AS `HoTen`, `nd`.`Email` AS `Email`, `dh`.`NgayDat` AS `NgayDat`, `dh`.`TongTien` AS `TongTien`, `dh`.`TrangThai` AS `TrangThai`, `dh`.`DiaChiGiao` AS `DiaChiGiao`, count(`ctdh`.`MaSP`) AS `SoSanPham` FROM ((`donhang` `dh` left join `nguoidung` `nd` on(`dh`.`MaND` = `nd`.`MaND`)) left join `chitietdonhang` `ctdh` on(`dh`.`MaDH` = `ctdh`.`MaDH`)) GROUP BY `dh`.`MaDH`, `dh`.`MaND`, `nd`.`HoTen`, `nd`.`Email`, `dh`.`NgayDat`, `dh`.`TongTien`, `dh`.`TrangThai`, `dh`.`DiaChiGiao` ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_donhang_full`
--
DROP TABLE IF EXISTS `v_donhang_full`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_donhang_full`  AS SELECT `dh`.`MaDH` AS `MaDH`, `dh`.`MaND` AS `MaND`, `nd`.`HoTen` AS `HoTen`, `nd`.`Email` AS `Email`, `dh`.`NgayDat` AS `NgayDat`, `dh`.`TongTien` AS `TongTien`, `dh`.`TrangThai` AS `TrangThai`, `dh`.`DiaChiGiao` AS `DiaChiGiao`, count(`ctdh`.`MaSP`) AS `SoSanPham`, group_concat(concat(`sp`.`TenSP`,' (x',`ctdh`.`SoLuong`,')') separator ', ') AS `DanhSachSanPham` FROM (((`donhang` `dh` left join `nguoidung` `nd` on(`dh`.`MaND` = `nd`.`MaND`)) left join `chitietdonhang` `ctdh` on(`dh`.`MaDH` = `ctdh`.`MaDH`)) left join `sanpham` `sp` on(`ctdh`.`MaSP` = `sp`.`MaSP`)) GROUP BY `dh`.`MaDH`, `dh`.`MaND`, `nd`.`HoTen`, `nd`.`Email`, `dh`.`NgayDat`, `dh`.`TongTien`, `dh`.`TrangThai`, `dh`.`DiaChiGiao` ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_orderdetails`
--
DROP TABLE IF EXISTS `v_orderdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_orderdetails`  AS SELECT `dh`.`MaDH` AS `MaDH`, `dh`.`MaND` AS `MaND`, `nd`.`HoTen` AS `HoTen`, `nd`.`Email` AS `Email`, `dh`.`TongTien` AS `TongTien`, `dh`.`TrangThai` AS `TrangThai`, `dh`.`NgayDat` AS `NgayDat`, `dh`.`DiaChiGiao` AS `DiaChiGiao`, count(`ct`.`MaSP`) AS `SoLuongSanPham` FROM ((`donhang` `dh` join `nguoidung` `nd` on(`dh`.`MaND` = `nd`.`MaND`)) left join `chitietdonhang` `ct` on(`dh`.`MaDH` = `ct`.`MaDH`)) GROUP BY `dh`.`MaDH` ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_sanpham_conhang`
--
DROP TABLE IF EXISTS `v_sanpham_conhang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sanpham_conhang`  AS SELECT `sp`.`MaSP` AS `MaSP`, `sp`.`TenSP` AS `TenSP`, `sp`.`MoTa` AS `MoTa`, `sp`.`Gia` AS `Gia`, `sp`.`SoLuongTon` AS `SoLuongTon`, `sp`.`MaDanhMuc` AS `MaDanhMuc`, `sp`.`MaCH` AS `MaCH`, `ch`.`TenCH` AS `TenCuaHang` FROM (`sanpham` `sp` left join `cuahang` `ch` on(`sp`.`MaCH` = `ch`.`MaCH`)) WHERE `sp`.`SoLuongTon` > 0 ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_shopproductstats`
--
DROP TABLE IF EXISTS `v_shopproductstats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_shopproductstats`  AS SELECT `ch`.`MaCH` AS `MaCH`, `ch`.`TenCH` AS `TenCH`, count(`sp`.`MaSP`) AS `TongSanPham`, sum(`sp`.`SoLuongTon`) AS `TongTonKho`, avg(`sp`.`Gia`) AS `GiaTrungBinh`, sum(`sp`.`LuotXem`) AS `TongLuotXem`, sum(`sp`.`LuotBan`) AS `TongLuotBan` FROM (`cuahang` `ch` left join `sanpham` `sp` on(`ch`.`MaCH` = `sp`.`MaCH`)) GROUP BY `ch`.`MaCH`, `ch`.`TenCH` ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_thongbao_chitiet`
--
DROP TABLE IF EXISTS `v_thongbao_chitiet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_thongbao_chitiet`  AS SELECT `tb`.`MaTB` AS `MaTB`, `tb`.`MaND` AS `MaND`, `nd`.`HoTen` AS `HoTen`, `nd`.`Email` AS `Email`, `tb`.`TieuDe` AS `TieuDe`, `tb`.`NoiDung` AS `NoiDung`, `tb`.`LoaiTB` AS `LoaiTB`, `tb`.`TrangThai` AS `TrangThai`, `tb`.`NgayTao` AS `NgayTao`, `tb`.`NgayDoc` AS `NgayDoc`, `tb`.`Link` AS `Link`, `tb`.`Icon` AS `Icon`, `tb`.`MauSac` AS `MauSac` FROM (`thongbao` `tb` left join `nguoidung` `nd` on(`tb`.`MaND` = `nd`.`MaND`)) ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_topproducts`
--
DROP TABLE IF EXISTS `v_topproducts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_topproducts`  AS SELECT `sp`.`MaSP` AS `MaSP`, `sp`.`TenSP` AS `TenSP`, `sp`.`Gia` AS `Gia`, `sp`.`LuotXem` AS `LuotXem`, `sp`.`LuotBan` AS `LuotBan`, `ch`.`TenCH` AS `TenCH`, avg(`dg`.`DiemDanhGia`) AS `DiemTrungBinh`, count(`dg`.`MaDG`) AS `SoLuongDanhGia` FROM ((`sanpham` `sp` left join `cuahang` `ch` on(`sp`.`MaCH` = `ch`.`MaCH`)) left join `danhgia` `dg` on(`sp`.`MaSP` = `dg`.`MaSP`)) GROUP BY `sp`.`MaSP` ORDER BY `sp`.`LuotBan` DESC, `sp`.`LuotXem` DESC ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_userstats`
--
DROP TABLE IF EXISTS `v_userstats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_userstats`  AS SELECT cast(`nguoidung`.`NgayTao` as date) AS `Ngay`, count(0) AS `SoNguoiDangKy`, sum(case when `nguoidung`.`TrangThai` = 'HoatDong' then 1 else 0 end) AS `HoatDong`, sum(case when `nguoidung`.`TrangThai` = 'TamKhoa' then 1 else 0 end) AS `TamKhoa` FROM `nguoidung` WHERE `nguoidung`.`VaiTro` = 'KhachHang' GROUP BY cast(`nguoidung`.`NgayTao` as date) ORDER BY cast(`nguoidung`.`NgayTao` as date) DESC ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activitylog`
--
ALTER TABLE `activitylog`
  ADD PRIMARY KEY (`MaLog`),
  ADD KEY `idx_user` (`MaND`),
  ADD KEY `idx_date` (`NgayThucHien`),
  ADD KEY `idx_action` (`HanhDong`);

--
-- Chỉ mục cho bảng `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`MaLog`),
  ADD KEY `idx_nguoidung` (`MaND`),
  ADD KEY `idx_thoigian` (`ThoiGian`);

--
-- Chỉ mục cho bảng `caidatthongbao`
--
ALTER TABLE `caidatthongbao`
  ADD PRIMARY KEY (`MaND`);

--
-- Chỉ mục cho bảng `cauhinhhethong`
--
ALTER TABLE `cauhinhhethong`
  ADD PRIMARY KEY (`MaCauHinh`),
  ADD UNIQUE KEY `TenCauHinh` (`TenCauHinh`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaDH`,`MaSP`),
  ADD KEY `idx_ctdh_madh` (`MaDH`),
  ADD KEY `idx_ctdh_masp` (`MaSP`),
  ADD KEY `idx_chitietdonhang_order` (`MaDH`),
  ADD KEY `idx_ctdh_donhang` (`MaDH`),
  ADD KEY `idx_ctdh_sanpham` (`MaSP`),
  ADD KEY `idx_ctdh_sp_sl` (`MaSP`,`SoLuong`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`MaGH`,`MaSP`),
  ADD KEY `idx_ctgh_magh` (`MaGH`),
  ADD KEY `idx_ctgh_masp` (`MaSP`),
  ADD KEY `idx_ctgh_giohang` (`MaGH`),
  ADD KEY `idx_ctgh_sanpham` (`MaSP`);

--
-- Chỉ mục cho bảng `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD PRIMARY KEY (`MaCTKM`),
  ADD KEY `MaKM` (`MaKM`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  ADD PRIMARY KEY (`MaCH`),
  ADD KEY `MaND` (`MaND`),
  ADD KEY `idx_cuahang_nguoidung` (`MaND`),
  ADD KEY `idx_cuahang_ten` (`TenCH`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MaDG`),
  ADD KEY `MaND` (`MaND`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaDGCha` (`MaDGCha`);

--
-- Chỉ mục cho bảng `danhgiasanpham`
--
ALTER TABLE `danhgiasanpham`
  ADD PRIMARY KEY (`MaDG`),
  ADD UNIQUE KEY `unique_review` (`MaDH`,`MaSP`,`MaND`),
  ADD KEY `idx_sanpham` (`MaSP`),
  ADD KEY `idx_nguoidung` (`MaND`),
  ADD KEY `idx_donhang` (`MaDH`),
  ADD KEY `idx_sosao` (`SoSao`),
  ADD KEY `idx_trangthai_ngaydanhgia` (`TrangThai`,`NgayDanhGia`);

--
-- Chỉ mục cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`MaDanhMuc`),
  ADD KEY `DanhMucCha` (`DanhMucCha`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`),
  ADD KEY `idx_dh_mand` (`MaND`),
  ADD KEY `idx_status` (`TrangThai`),
  ADD KEY `idx_user_date` (`MaND`,`NgayDat`),
  ADD KEY `idx_donhang_user_status` (`MaND`,`TrangThai`),
  ADD KEY `idx_dh_ngaydat` (`NgayDat`),
  ADD KEY `idx_dh_trangthai` (`TrangThai`),
  ADD KEY `idx_donhang_nguoidung` (`MaND`),
  ADD KEY `idx_donhang_ngaydat` (`NgayDat`),
  ADD KEY `idx_donhang_trangthai` (`TrangThai`),
  ADD KEY `idx_donhang_tongtien` (`TongTien`),
  ADD KEY `idx_mand_trangthai` (`MaND`,`TrangThai`),
  ADD KEY `idx_mavc` (`MaVC`);

--
-- Chỉ mục cho bảng `donvivanchuyen`
--
ALTER TABLE `donvivanchuyen`
  ADD PRIMARY KEY (`MaDVVC`),
  ADD UNIQUE KEY `MaDonVi` (`MaDonVi`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`MaGH`),
  ADD KEY `MaND` (`MaND`),
  ADD KEY `idx_giohang_nguoidung` (`MaND`);

--
-- Chỉ mục cho bảng `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`MaHT`),
  ADD KEY `idx_status` (`TrangThai`),
  ADD KEY `idx_date` (`NgayGui`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khuyenmai_danhmuc`
--
ALTER TABLE `khuyenmai_danhmuc`
  ADD PRIMARY KEY (`MaKM`,`MaDanhMuc`),
  ADD KEY `MaDanhMuc` (`MaDanhMuc`);

--
-- Chỉ mục cho bảng `khuyenmai_sanpham`
--
ALTER TABLE `khuyenmai_sanpham`
  ADD PRIMARY KEY (`MaKM`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `lichsusu dungmagiamgia`
--
ALTER TABLE `lichsusu dungmagiamgia`
  ADD PRIMARY KEY (`MaLS`),
  ADD KEY `MaMGG` (`MaMGG`),
  ADD KEY `MaND` (`MaND`),
  ADD KEY `MaDH` (`MaDH`);

--
-- Chỉ mục cho bảng `lichsuvanchuyen`
--
ALTER TABLE `lichsuvanchuyen`
  ADD PRIMARY KEY (`MaLSVC`),
  ADD KEY `idx_mavc` (`MaVC`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`MaMGG`),
  ADD KEY `MaCH` (`MaCH`),
  ADD KEY `MaMGG_Code` (`MaMGG_Code`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `idx_email` (`Email`),
  ADD KEY `idx_status` (`TrangThai`),
  ADD KEY `idx_nguoidung_email` (`Email`),
  ADD KEY `idx_nguoidung_vaitro` (`VaiTro`),
  ADD KEY `idx_nguoidung_trangthai` (`TrangThai`),
  ADD KEY `idx_nguoidung_role_status` (`VaiTro`,`TrangThai`),
  ADD KEY `idx_vaitro_trangthai` (`VaiTro`,`TrangThai`),
  ADD KEY `idx_ngaytao` (`NgayTao`);

--
-- Chỉ mục cho bảng `phanhoidanhgia`
--
ALTER TABLE `phanhoidanhgia`
  ADD PRIMARY KEY (`MaPH`),
  ADD KEY `idx_danhgia` (`MaDG`),
  ADD KEY `fk_phanhoi_cuahang` (`MaCH`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaDanhMuc` (`MaDanhMuc`),
  ADD KEY `MaCH` (`MaCH`),
  ADD KEY `idx_shop` (`MaCH`),
  ADD KEY `idx_category` (`MaDanhMuc`),
  ADD KEY `idx_price` (`Gia`),
  ADD KEY `idx_name` (`TenSP`),
  ADD KEY `idx_sanpham_shop_category` (`MaCH`,`MaDanhMuc`),
  ADD KEY `idx_sanpham_ten` (`TenSP`),
  ADD KEY `idx_sanpham_gia` (`Gia`),
  ADD KEY `idx_sanpham_soluongton` (`SoLuongTon`),
  ADD KEY `idx_sanpham_cuahang` (`MaCH`),
  ADD KEY `idx_sanpham_danhmuc` (`MaDanhMuc`),
  ADD KEY `idx_sanpham_shop_active` (`MaCH`,`SoLuongTon`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `ft_sanpham_ten_mota` (`TenSP`,`MoTa`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`MaTT`),
  ADD UNIQUE KEY `MaDH` (`MaDH`),
  ADD KEY `MaND` (`MaND`),
  ADD KEY `idx_thanhtoan_donhang` (`MaDH`),
  ADD KEY `idx_thanhtoan_nguoidung` (`MaND`),
  ADD KEY `idx_thanhtoan_phuongthuc` (`PhuongThuc`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`MaTB`),
  ADD KEY `idx_tb_mand` (`MaND`),
  ADD KEY `idx_tb_trangthai` (`TrangThai`),
  ADD KEY `idx_tb_loai` (`LoaiTB`),
  ADD KEY `idx_tb_ngaytao` (`NgayTao`),
  ADD KEY `idx_tb_mand_loai` (`MaND`,`LoaiTB`),
  ADD KEY `idx_thongbao_nguoidung` (`MaND`),
  ADD KEY `idx_thongbao_trangthai` (`TrangThai`),
  ADD KEY `idx_thongbao_ngaytao` (`NgayTao`),
  ADD KEY `idx_thongbao_user_unread` (`MaND`,`TrangThai`,`NgayTao`);

--
-- Chỉ mục cho bảng `thongtinthanhtoan`
--
ALTER TABLE `thongtinthanhtoan`
  ADD PRIMARY KEY (`MaTTTT`),
  ADD KEY `idx_cuahang` (`MaCH`),
  ADD KEY `idx_macdinh` (`MacDinh`);

--
-- Chỉ mục cho bảng `thongtinvanchuyen`
--
ALTER TABLE `thongtinvanchuyen`
  ADD PRIMARY KEY (`MaVC`),
  ADD KEY `idx_madh` (`MaDH`),
  ADD KEY `idx_mavandan` (`MaVanDon`),
  ADD KEY `idx_trangthai` (`TrangThaiVC`),
  ADD KEY `MaDVVC` (`MaDVVC`);

--
-- Chỉ mục cho bảng `usersessions`
--
ALTER TABLE `usersessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `idx_user` (`MaND`),
  ADD KEY `idx_activity` (`last_activity`);

--
-- Chỉ mục cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD PRIMARY KEY (`MaVC`),
  ADD UNIQUE KEY `MaDH` (`MaDH`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activitylog`
--
ALTER TABLE `activitylog`
  MODIFY `MaLog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `MaLog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `cauhinhhethong`
--
ALTER TABLE `cauhinhhethong`
  MODIFY `MaCauHinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  MODIFY `MaCTKM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  MODIFY `MaCH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `MaDG` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhgiasanpham`
--
ALTER TABLE `danhgiasanpham`
  MODIFY `MaDG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `donvivanchuyen`
--
ALTER TABLE `donvivanchuyen`
  MODIFY `MaDVVC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `MaGH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hotro`
--
ALTER TABLE `hotro`
  MODIFY `MaHT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lichsusu dungmagiamgia`
--
ALTER TABLE `lichsusu dungmagiamgia`
  MODIFY `MaLS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lichsuvanchuyen`
--
ALTER TABLE `lichsuvanchuyen`
  MODIFY `MaLSVC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `MaMGG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `phanhoidanhgia`
--
ALTER TABLE `phanhoidanhgia`
  MODIFY `MaPH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `MaTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `MaTB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `thongtinthanhtoan`
--
ALTER TABLE `thongtinthanhtoan`
  MODIFY `MaTTTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thongtinvanchuyen`
--
ALTER TABLE `thongtinvanchuyen`
  MODIFY `MaVC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  MODIFY `MaVC` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `activitylog`
--
ALTER TABLE `activitylog`
  ADD CONSTRAINT `activitylog_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `adminlog`
--
ALTER TABLE `adminlog`
  ADD CONSTRAINT `adminlog_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `caidatthongbao`
--
ALTER TABLE `caidatthongbao`
  ADD CONSTRAINT `caidatthongbao_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`MaGH`) REFERENCES `giohang` (`MaGH`),
  ADD CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD CONSTRAINT `chitietkhuyenmai_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `chitietkhuyenmai_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  ADD CONSTRAINT `cuahang_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`),
  ADD CONSTRAINT `fk_cuahang_nguoidung` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `danhgia_ibfk_3` FOREIGN KEY (`MaDGCha`) REFERENCES `danhgia` (`MaDG`);

--
-- Các ràng buộc cho bảng `danhgiasanpham`
--
ALTER TABLE `danhgiasanpham`
  ADD CONSTRAINT `fk_danhgia_donhang` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_danhgia_nguoidung` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_danhgia_sanpham` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD CONSTRAINT `danhmucsanpham_ibfk_1` FOREIGN KEY (`DanhMucCha`) REFERENCES `danhmucsanpham` (`MaDanhMuc`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `khuyenmai_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `khuyenmai_danhmuc`
--
ALTER TABLE `khuyenmai_danhmuc`
  ADD CONSTRAINT `khuyenmai_danhmuc_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `khuyenmai_danhmuc_ibfk_2` FOREIGN KEY (`MaDanhMuc`) REFERENCES `danhmucsanpham` (`MaDanhMuc`);

--
-- Các ràng buộc cho bảng `khuyenmai_sanpham`
--
ALTER TABLE `khuyenmai_sanpham`
  ADD CONSTRAINT `khuyenmai_sanpham_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `khuyenmai_sanpham_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `lichsusu dungmagiamgia`
--
ALTER TABLE `lichsusu dungmagiamgia`
  ADD CONSTRAINT `lichsu_ibfk_1` FOREIGN KEY (`MaMGG`) REFERENCES `magiamgia` (`MaMGG`),
  ADD CONSTRAINT `lichsu_ibfk_2` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`),
  ADD CONSTRAINT `lichsu_ibfk_3` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`);

--
-- Các ràng buộc cho bảng `lichsuvanchuyen`
--
ALTER TABLE `lichsuvanchuyen`
  ADD CONSTRAINT `lichsuvanchuyen_ibfk_1` FOREIGN KEY (`MaVC`) REFERENCES `thongtinvanchuyen` (`MaVC`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD CONSTRAINT `magiamgia_ibfk_1` FOREIGN KEY (`MaCH`) REFERENCES `cuahang` (`MaCH`);

--
-- Các ràng buộc cho bảng `phanhoidanhgia`
--
ALTER TABLE `phanhoidanhgia`
  ADD CONSTRAINT `fk_phanhoi_cuahang` FOREIGN KEY (`MaCH`) REFERENCES `cuahang` (`MaCH`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_phanhoi_danhgia` FOREIGN KEY (`MaDG`) REFERENCES `danhgiasanpham` (`MaDG`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaDanhMuc`) REFERENCES `danhmucsanpham` (`MaDanhMuc`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaCH`) REFERENCES `cuahang` (`MaCH`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaDanhMuc`) REFERENCES `danhmucsanpham` (`MaDanhMuc`),
  ADD CONSTRAINT `sanpham_ibfk_4` FOREIGN KEY (`MaCH`) REFERENCES `cuahang` (`MaCH`);

--
-- Các ràng buộc cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `thanhtoan_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`),
  ADD CONSTRAINT `thanhtoan_ibfk_2` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thongtinthanhtoan`
--
ALTER TABLE `thongtinthanhtoan`
  ADD CONSTRAINT `thongtinthanhtoan_ibfk_1` FOREIGN KEY (`MaCH`) REFERENCES `cuahang` (`MaCH`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thongtinvanchuyen`
--
ALTER TABLE `thongtinvanchuyen`
  ADD CONSTRAINT `thongtinvanchuyen_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`) ON DELETE CASCADE,
  ADD CONSTRAINT `thongtinvanchuyen_ibfk_2` FOREIGN KEY (`MaDVVC`) REFERENCES `donvivanchuyen` (`MaDVVC`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `usersessions`
--
ALTER TABLE `usersessions`
  ADD CONSTRAINT `usersessions_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD CONSTRAINT `vanchuyen_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
