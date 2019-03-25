using CalculPartsHeritage.DAL;
using CalculPartsHeritage.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;

using System.Web.Mvc;

namespace CalculPartsHeritage.Controllers
{
    public class UserController : Controller
    {
        private BD_calcPartHeriEntities db = new BD_calcPartHeriEntities();

        public ActionResult getUser(int? id)
        {
            if(id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UTILISATEUR utilisateur = db.UTILISATEURs.Find(id);

            if (utilisateur == null)
            {
                return HttpNotFound();
            }
            return View(utilisateur);
        }

        public ViewResult _Index()
        {
            return View(db.UTILISATEURs.ToList());
        }

        public ViewResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult Create([Bind(Include = "UTILISATEURID,EMAIL,DESIGNATION")]UTILISATEUR utilisateur)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.UTILISATEURs.Add(utilisateur);
                    db.SaveChanges();
                    return RedirectToAction("_Index");
                }
            }
            catch (RetryLimitExceededException /* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.)
                ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists, see your system administrator.");
            }
            //PopulateDepartmentsDropDownList(course.DepartmentID);
            return View(utilisateur);
        }
    }
}