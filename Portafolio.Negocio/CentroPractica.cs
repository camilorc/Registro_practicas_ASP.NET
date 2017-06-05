using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Negocio
{
    public class CentroPractica
    {
        public int IdCentro { get; set; }
        public string NombreCentro { get; set; }
        public string DireccionCentro { get; set; }
        public string DepartamentoCentro { get; set; }
        public string AreaCentro { get; set; }
        public string RazonSocial { get; set; }
        public string Web { get; set; }
        public int Fono { get; set; }
        public string Email { get; set; }
        public string Username { get; set; }
        public string Pass { get; set; }


        public CentroPractica()
        {
            Init();
        }

        private void Init()
        {
            IdCentro = 0;
            NombreCentro = "";
            DireccionCentro = "";
            DepartamentoCentro = "";
            AreaCentro = "";
            RazonSocial = "";
            Web = "";
            Fono = 0;
            Email = "";
            Username = "";
            Pass = "";
        }

        


        public CentroPractica iniciarSesion() {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select idcentropractica,nombre_centro,direccion_centro,departamento_centro,area_centro,username,razon_social,web,fono,email FROM centro_practica WHERE nombre_centro = '" + this.Username + "'";

                OracleCommand cmd = new OracleCommand(sql,_connection);

                var centro = cmd.ExecuteReader();
                while (centro.Read()) {
                    IdCentro = centro.GetInt32(0);
                    NombreCentro =centro.GetString(1);
                    DireccionCentro = centro.GetString(2);
                    DepartamentoCentro = centro.GetString(3);
                    AreaCentro = centro.GetString(4);
                    Username = centro.GetString(5);
                    RazonSocial = centro.GetString(6);
                    Web = centro.GetString(7);
                    Fono = centro.GetInt32(8);
                    Email = centro.GetString(9);
                    

                }

                return this;

            }
            catch (Exception)
            {

                return this;
            }
        }

        public List<Usuario> alumnosEnPractica() {
            try
            {
                List<Usuario> users = new List<Usuario>();
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "select * from Usuario JOIN PRACTICA ON Usuario.PRACTICA_IDPRACTICA = PRACTICA.IDPRACTICA JOIN CENTRO_PRACTICA ON PRACTICA.IDCENTROPRACTICA = CENTRO_PRACTICA.IDCENTROPRACTICA WHERE CENTRO_PRACTICA.IDCENTROPRACTICA = '"+this.IdCentro+"' AND Usuario.ROLES_IDROL = 4";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                var alumnos = cmd.ExecuteReader();

                while (alumnos.Read()) {
                    Usuario user = new Usuario();
                    user.Rut = alumnos.GetInt32(0);
                    user.Nombres = alumnos.GetString(3)+" "+alumnos.GetString(4)+" "+alumnos.GetString(5);
                    user.Direccion = alumnos.GetString(7);
                    users.Add(user);
                                       
                }

                return users;



            }
            catch (Exception)
            {

                throw;
            }



        }

        public bool ValidarUsuario(string username, string pass) {
            try
            {

                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select idcentropractica,nombre_centro,direccion_centro,departamento_centro,area_centro,username,razon_social,web,fono,email FROM centro_practica WHERE username = '" + username + "' AND pass = '" + pass + "'";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                var centro = cmd.ExecuteReader();
                while (centro.Read())
                    {
                        IdCentro = centro.GetInt32(0);
                        NombreCentro = centro.GetString(1);
                        DireccionCentro = centro.GetString(2);
                        DepartamentoCentro = centro.GetString(3);
                        AreaCentro = centro.GetString(4);
                        Username = centro.GetString(5);
                        RazonSocial = centro.GetString(6);
                        Web = centro.GetString(7);
                        Fono = centro.GetInt32(8);
                        Email = centro.GetString(9);
                }

                if (centro.HasRows)
                {
                    return true;
                }
                else {
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
