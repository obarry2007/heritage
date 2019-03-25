using CalculPartsHeritage.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CalculPartsHeritage.DAL
{
    public class UserContext
    {
        public DbSet<User> users { get; set; }
    }
}