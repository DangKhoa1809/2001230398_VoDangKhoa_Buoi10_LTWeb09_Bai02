using LTWeb09_Bai02.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTWeb09_Bai02.Controllers
{
    public class SanPhamController : Controller
    {
        QL_SanPhamEntities data = new QL_SanPhamEntities();
        // GET: SanPham

        public ActionResult HienThiSanPham()
        {
            var dsSanPham = data.SanPhams.ToList();
            ViewBag.TenLoai = null;
            return View(dsSanPham);
        }

        public ActionResult SanPhamTheoLoai(int maloai)
        {
            var dsSanPham = data.SanPhams.Where(sp => sp.MaLoai == maloai).ToList();

            ViewBag.TenLoai = data.LoaiSanPhams.Where(l => l.MaLoai == maloai).Select(l => l.TenLoai).FirstOrDefault();

            return View("HienThiSanPham", dsSanPham);
        }

        public PartialViewResult DanhMucSP()
        {
            var dsLoai = data.LoaiSanPhams.ToList();
            return PartialView("_DanhMucSP", dsLoai);
        }

        public ActionResult ChiTiet(int id)
        {
            var sp = data.SanPhams.FirstOrDefault(s => s.MaSP == id);
            if (sp == null)
            {
                return HttpNotFound();
            }
            return View(sp);
        }
    }
}