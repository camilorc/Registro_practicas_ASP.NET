using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;
using Portafolio.Negocio;


namespace Portafolio.Testing
{
    class Program
    {
        
        static void Main(string[] args)
        {
            //var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
            //OracleConnection _connection = new OracleConnection();
            try
            {

                //Portafolio.Negocio.Acta2 acta2 = new Negocio.Acta2();
                //acta2.PrincipalesTareas = "tareas de consola 3333";
                //acta2.Aportes = "aportes de consola3333";
                //acta2.Sugerencias = "sugerencia de consola33333";

                //if (acta2.IngresarActa2())
                //{
                //    Console.WriteLine("Exito");
                //
                //}
                //else
                //{
                //    Console.WriteLine("Error");
                //}

                //int rutAlumno = 99999999;


                //var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                //OracleConnection _connection = new OracleConnection();
                //_connection.ConnectionString = connectionString;
                //_connection.Open();
                //
                //string sql = "Select RUT_DOCENTE from usuario join docente_practica ON usuario.RUT = docente_practica.RUT_ALUMNO where usuario.RUT='" + rutAlumno + "'";
                //OracleCommand cmd = new OracleCommand(sql, _connection);
                //var docenteRut = cmd.ExecuteReader();
                //
                //
                //while (docenteRut.Read())
                //{
                //    Console.WriteLine(docenteRut.GetInt32(0));
                //
                //}

                Usuario user = new Usuario();

                //foreach (var item in user.AlumnosAsignados(4444))
                //{
                //   Console.WriteLine("Nombre alumno"+item.Nombres);
                //}

                //Console.WriteLine("Rut del profe: "+rutProfe);

                //if (user.CambiarAsignacionPractica(4444,7777,0)) {
                //    Console.WriteLine("Exitooooo");
                //} else {
                //    Console.WriteLine("Errorrrrrr");
                //}

                //user.AlumnosAsignados(4444);
               

            }
            catch (Exception e)
            {
                Console.WriteLine("{0}: {1}", "Error", e.Message);
            }
            //_connection.Close();
            Console.WriteLine("Presione una tecla para salir");
            Console.ReadLine();
        }
    }
}
