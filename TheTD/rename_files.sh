#!/bin/bash
# Chạy script này trong thư mục TheTD của repo local trước khi push lên GitHub
# cd /path/to/Thuc-tap-2023/TheTD && bash rename_files.sh

echo "🔄 Renaming files for Docusaurus compatibility..."

# Linux folder
cd Linux
mv "12. Các công cụ quản lý ổ cứng.md" "12.Cac_cong_cu_quan_ly_o_cung.md" 2>/dev/null && echo "✅ Renamed 12. Các công cụ..."
mv "12.2 Công cụ ảo hóa.md" "12.2_Cong_cu_ao_hoa.md" 2>/dev/null && echo "✅ Renamed 12.2 Công cụ..."
mv "13.Cấu hình IP cho Ubuntu và CentOS.md" "13.Cau_hinh_IP_cho_Ubuntu_va_CentOS.md" 2>/dev/null && echo "✅ Renamed 13. Cấu hình..."
mv "6.Managing Services with systemd.md" "6.Managing_Services_with_systemd.md" 2>/dev/null && echo "✅ Renamed 6. Managing..."

# SSH folder
cd SSH/docs
mv "2.SSH Logs.md" "2.SSH_Logs.md" 2>/dev/null && echo "✅ Renamed SSH Logs"
mv "3.1Cấu hình và cài đặt SSH.md" "3.1_Cau_hinh_va_cai_dat_SSH.md" 2>/dev/null && echo "✅ Renamed 3.1 Cấu hình SSH"
cd ../..

# Network folder
cd ../Network
mv "1. Mo_hinh_OSI-TCP-IP.md" "1.Mo_hinh_OSI-TCP-IP.md" 2>/dev/null && echo "✅ Renamed 1. Mo hinh"
mv "2. IPv4.md" "2.IPv4.md" 2>/dev/null && echo "✅ Renamed 2. IPv4"
mv "3. UDP_TCP.md" "3.UDP_TCP.md" 2>/dev/null && echo "✅ Renamed 3. UDP"
mv "4. VLAN_Trunking_VTP.md" "4.VLAN_Trunking_VTP.md" 2>/dev/null && echo "✅ Renamed 4. VLAN"
mv "5. STP.md" "5.STP.md" 2>/dev/null && echo "✅ Renamed 5. STP"
mv "6. NAT.md" "6.NAT.md" 2>/dev/null && echo "✅ Renamed 6. NAT"
mv "7. Routing_Protocol.md" "7.Routing_Protocol.md" 2>/dev/null && echo "✅ Renamed 7. Routing"

# FTP folder
cd FTP/docs
mv "2.Install FTP server.md" "2.Install_FTP_server.md" 2>/dev/null && echo "✅ Renamed Install FTP"
cd ../..

# HTTP folder
cd HTTP/docs
mv "1.Tìm hiểu về HTTP.md" "1.Tim_hieu_ve_HTTP.md" 2>/dev/null && echo "✅ Renamed Tim hieu HTTP"
mv "3.Bắt gói tin HTTP.md" "3.Bat_goi_tin_HTTP.md" 2>/dev/null && echo "✅ Renamed Bat goi tin"
cd ../..

# Server folder
cd ../Server
mv "Cụm máy chủ.md" "Cum_may_chu.md" 2>/dev/null && echo "✅ Renamed Cum may chu"
cd ..

# Create Image Openstack
cd Create_Image_Openstack
mv "Một vài khái niệm.md" "Mot_vai_khai_niem.md" 2>/dev/null && echo "✅ Renamed Mot vai khai niem"
cd Linux
mv "1.CentOS8.md" "1.CentOS8.md" 2>/dev/null  # already ok
cd ../Windows
mv "3. Windows 2019.md" "3.Windows_2019.md" 2>/dev/null && echo "✅ Renamed Windows 2019"
cd ../..

echo ""
echo "✅ Done! Now run:"
echo "   git add -A && git commit -m 'rename: normalize filenames for Docusaurus' && git push"
