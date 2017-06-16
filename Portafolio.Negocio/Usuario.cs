using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Portafolio.Datos;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;

namespace Portafolio.Negocio
{
    public class Usuario
    {
        public int Rut { get; set; }
        public string Dv { get; set; }
        public string Contraseña { get; set; }
        public string Nombres { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public DateTime FechaNac { get; set; }
        public string Direccion { get; set; }
        public int Telefono { get; set; }
        public string Correo { get; set; }
        public string CarreraNombre { get; set; }
        public int Idpractica { get; set; }

        //Para identificar el estado de su asiganación al Docente
        public int estadoPractica { get; set; }

        public Usuario()
        {
            Init();
        }

        private void Init()
        {
            Rut = 0;
            Dv = string.Empty;
            Contraseña = string.Empty;
            Nombres = string.Empty;
            Apellido1 = string.Empty;
            Apellido2 = string.Empty;
            FechaNac = new DateTime();
            Direccion = string.Empty;
            Telefono = 0;
            Correo = string.Empty;
            CarreraNombre = string.Empty;
            Idpractica = 0;
            estadoPractica = 0;
        }

        //método para buscar un usuario de la BD según su RUT
        public void buscarUsuario() {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select * from usuario where rut = '"+this.Rut+"'";
                OracleCommand cmd = new OracleCommand(sql,_connection);
                var alum = cmd.ExecuteReader();

                while (alum.Read()) {
                    Rut = alum.GetInt32(0);
                    Dv = alum.GetString(1);
                    Nombres = alum.GetString(3);
                    Direccion = alum.GetString(7);
                    CarreraNombre = alum.GetString(15);
                    Idpractica = alum.GetInt32(13);
                    Telefono = alum.GetInt32(8);
                    Correo = alum.GetString(9);
                    Apellido1 = alum.GetString(4);
                    Apellido2 = alum.GetString(5);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        public int buscarProfeRut(int rutAlumno) {
            int rutProfe = 0;
            try
            {
                
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select docente_practica.RUT_DOCENTE from usuario join docente_practica ON usuario.RUT = docente_practica.RUT_ALUMNO where usuario.RUT='"+rutAlumno+ "'";
                OracleCommand cmd = new OracleCommand(sql, _connection);
                var docenteRut = cmd.ExecuteReader();


                while (docenteRut.Read())
                {
                   rutProfe = docenteRut.GetInt32(0);

                }

                return rutProfe;
            }
            catch (Exception)
            {
                return rutProfe;
            }

        }

        public bool ValidarUsuario(int rut,string pass) {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select * FROM Usuario WHERE rut = '"+rut+"' AND contraseña = '"+pass+"'";

                OracleCommand cmd = new OracleCommand(sql, _connection);
                
                var user = cmd.ExecuteReader();
                
                while (user.Read())
                {
                    Rut = user.GetInt32(0);
                    Dv = user.GetString(1);
                    Contraseña = user.GetString(2);
                    Nombres = user.GetString(3);
                    Apellido1 = user.GetString(4);
                    Apellido2 = user.GetString(5);
                    FechaNac = user.GetDateTime(6);
                    Direccion = user.GetString(7);
                    Telefono = user.GetInt32(8);
                    Correo = user.GetString(9);
                    CarreraNombre = user.GetString(15);
                    Idpractica = user.GetInt32(14); ;
                }

                if (user.HasRows)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {

                return false;
            }

        }

        
    }
}