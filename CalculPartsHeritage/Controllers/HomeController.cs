using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CalculPartsHeritage.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
           

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Pour avoir de plus amples informations sur les cas d'heritages, Veuillez cliquer sur le lien ci-dessous!!!";

            return View();
        }
    }
}