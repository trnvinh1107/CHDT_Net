using Nhom4_DoAnWeb_CHDT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace Nhom4_DoAnWeb_CHDT.Controllers
{
    public class NguoiDungController : Controller
    {
        MyDataDataContext data = new MyDataDataContext();
        // GET: NguoiDung
        public ActionResult DangKy()
        {
            return View();
        }

        // POST: NguoiDung/Create
        [HttpPost]
        public ActionResult DangKy(FormCollection collection, tblTAIKHOAN tk)
        {
            // TODO: Add insert logic here
            var user = collection["userID"];
            var pass = collection["password"];
            var MKXacNhan = collection["MatKhauXacNhan"];
            var role = collection["role"];
            var check = data.tblTAIKHOANs.Any(p => p.userID == user);
            if (check == true)
            {
                ViewData["tk"] = "Tài khoản đã tồn tại. Vui lòng nhập tài khoản khác";
                return this.DangKy();
            }
            if (!Regex.IsMatch(pass, @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$"))
            {
                ViewData["MKYeu"] = "Mật khẩu yếu. Vui lòng nhập mật khẩu có cả chữ Hoa, Thường và ký tự đặc biệt";
                return this.DangKy();
            }
            if (String.IsNullOrEmpty(user))
            {
                ViewData["Nhaptk"] = "Không được để trống tài khoản!";
                return this.DangKy_NV();
            }
            if (String.IsNullOrEmpty(MKXacNhan))
            {
                ViewData["NhapMKXN"] = "Phải nhập mật khẩu xác nhận!";
                return this.DangKy();

            }
            else
            {
                if (!pass.Equals(MKXacNhan))
                {
                    ViewData["MKGiongNhau"] = "Mật khẩu và mật khẩu xác nhận phải giống nhau";
                    return this.DangKy();
                }
                else
                {
                    tk.userID = user;
                    tk.password = pass;
                    tk.role = "KH";
                    data.tblTAIKHOANs.InsertOnSubmit(tk);
                    data.SubmitChanges();
                    return RedirectToAction("DangNhap");
                }
            }
        }
        // GET: QuanLy/NhanVien
        public ActionResult DangKy_NV()
        {
            return View();
        }

        // POST: NguoiDung/Create
        [HttpPost]
        public ActionResult DangKy_NV(FormCollection collection, tblTAIKHOAN tk)
        {
            // TODO: Add insert logic here
            var user = collection["userID"];
            var pass = collection["password"];
            var MKXacNhan = collection["MatKhauXacNhan"];
            var role = collection["role"];
            var check = data.tblTAIKHOANs.Any(p => p.userID == user);
            if (check == true)
            {
                ViewData["tk"] = "Tài khoản đã tồn tại. Vui lòng nhập tài khoản khác";
                return this.DangKy_NV();
            }
            if (!Regex.IsMatch(pass, @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$"))
            {
                ViewData["MKYeu"] = "Mật khẩu yếu. Vui lòng nhập mật khẩu có cả chữ Hoa, Thường và ký tự đặc biệt";
                return this.DangKy_NV();
            }
            if (String.IsNullOrEmpty(user))
            {
                ViewData["Nhaptk"] = "Không được để trống tài khoản!";
                return this.DangKy_NV();
            }
            if (String.IsNullOrEmpty(MKXacNhan))
            {
                ViewData["NhapMKXN"] = "Phải nhập mật khẩu xác nhận!";
                return this.DangKy_NV();
            }
            else
            {
                if (!pass.Equals(MKXacNhan))
                {
                    ViewData["MKGiongNhau"] = "Mật khẩu và mật khẩu xác nhận phải giống nhau";
                    return this.DangKy_NV();
                }
                else
                {
                    tk.userID = user;
                    tk.password = pass;
                    tk.role = role;
                    data.tblTAIKHOANs.InsertOnSubmit(tk);
                    data.SubmitChanges();
                    return RedirectToAction("danh_sach", "NguoiDung");
                }
            }
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }

        // POST: NguoiDung/DangNhap/5
        [HttpPost]
        public ActionResult DangNhap(FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                var user = collection["userID"];
                var pass = collection["password"];
                tblTAIKHOAN tk = data.tblTAIKHOANs.SingleOrDefault(p => p.userID == user &&
                                    p.password == pass);
                if (tk != null)
                {
                    ViewBag.ThongBao = "Chào mừng quý khách";
                    Session["TaiKhoan"] = tk;
                        return RedirectToAction("trang_chu", "KhoaiTei");
                }
                else
                {
                    ViewBag.ThongBao = "Tên đăng nhập hoặc mật khẩu không đúng";
                    return this.DangNhap();
                }
            }
            catch
            {
                return View();
            }
        }
        public ActionResult DangXuat()
        {

            if (Session["Giohang"] != null)
                Session["Giohang"] = null;
            Session["TaiKhoan"] = null;
            Session["KhachHang"] = null;
            Session["NhanVien"] = null;
            Session["NCC"] = null;
            return RedirectToAction("trang_chu", "KhoaiTei");
        }
        public ActionResult danh_sach()
        {
            var all_TK = from s in data.tblTAIKHOANs select s;
            return View(all_TK);
        }
        [HttpGet]
        public ActionResult doi_mat_khau()
        {
            return View();
        }
        public ActionResult doi_mat_khau( FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                var taikhoan = collection["userID"];
                var pass = collection["password"];
                var MKXacNhan = collection["MatKhauXacNhan"];
                if (string.IsNullOrEmpty(pass) || string.IsNullOrEmpty(taikhoan) || string.IsNullOrEmpty(MKXacNhan))
                {
                    ViewData["Error"] = "Vui lòng điền đầy đủ thông tin!";
                }
                if (!Regex.IsMatch(pass, @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$"))
                {
                    ViewData["MKYeu"] = "Mật khẩu yếu. Vui lòng nhập mật khẩu có cả chữ Hoa, Thường và ký tự đặc biệt";
                    return this.doi_mat_khau();
                }
                if (String.IsNullOrEmpty(MKXacNhan))
                {
                    ViewData["NhapMKXN"] = "Phải nhập mật khẩu xác nhận!";
                }
                else
                {
                    if (!pass.Equals(MKXacNhan))
                    {
                        ViewData["MKGiongNhau"] = "Mật khẩu và mật khẩu xác nhận phải giống nhau";
                    }
                    else
                    {
                        var find = data.tblTAIKHOANs.FirstOrDefault(p => p.userID == taikhoan);
                        if (find != null)
                        {
                            find.password = pass;
                            UpdateModel(taikhoan);
                            data.SubmitChanges();
                            return RedirectToAction("DangNhap", "NguoiDung");
                        }
                        else ViewData["TaiKhoan"] = "Tài khoản chưa đăng ký. Không thể thực hiện thao tác này";
                    }
                }
                return this.doi_mat_khau();
            }
            catch
            {
                return View();
            }
        }
        // GET: NguoiDung/Delete/5
        public ActionResult xoa_TK(string id)
        {
            var find = data.tblTAIKHOANs.FirstOrDefault(p => p.userID == id);
            if(find != null)
                return View(find);
            return View("danh_sach");
        }

        // POST: NguoiDung/Delete/5
        [HttpPost]
        public ActionResult xoa_TK(string id, FormCollection collection)
        {
            var delTK = data.tblTAIKHOANs.First(p => p.userID == id);
            data.tblTAIKHOANs.DeleteOnSubmit(delTK);
            data.SubmitChanges();
            return RedirectToAction("danh_sach");
        }
    }
}
