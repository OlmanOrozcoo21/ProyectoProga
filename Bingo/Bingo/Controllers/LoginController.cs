using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Bingo.Models;
using System.Data.SqlClient;

namespace Bingo.Controllers
{
    public class LoginController : Controller
    {
    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
    SqlDataReader dr;
    // GET: Login

    [HttpGet]
    public ActionResult Login()
    {
        return View();
    }

    void connectionString()

    {
        con.ConnectionString = "data source=DESKTOP-L471Q4P; database=Bingo; integrated security = SSPI; ";

    }

    [HttpPost]
    public ActionResult Verify(Login log)
    {
        connectionString();
        con.Open();
        com.Connection = con;
        com.CommandText = "select * from Ingreso where usuario='" + log.Name + "' and contrasena ='" + log.Password + "'";
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            con.Close();
            return View("Create");

        }
        else
        {
            con.Close();
            return View("Error");

        }



    }
}
}