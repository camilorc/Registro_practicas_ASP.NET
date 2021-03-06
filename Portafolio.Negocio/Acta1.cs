﻿using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Negocio
{
    public class Acta1
    {
        public int IdActa1 { get; set; }
        public string Observaciones { get; set; }
        public string Tareas { get; set; }

        public Acta1()
        {
            Init();
        }

        private void Init()
        {
            IdActa1 = 0;
            Observaciones = "";
            Tareas = "";
        }

        public bool Create()
        {
            try
            {
                Datos.ACTA1 ac1 = new Datos.ACTA1();
                ac1.IDACTA1 = short.Parse(this.IdActa1.ToString());
                ac1.OBSERVACIONES = this.Observaciones;
                ac1.TAREAS = this.Tareas;

                InstanciaBD.Instancia.ACTA1.Add(ac1);
                InstanciaBD.Instancia.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                Datos.ACTA1 ac1 = InstanciaBD.Instancia.ACTA1.First(a => a.IDACTA1 == this.IdActa1);

                this.IdActa1 = ac1.IDACTA1;
                this.Observaciones = ac1.OBSERVACIONES;
                this.Tareas = ac1.TAREAS;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool UpdateA1(int id, string tareas)
        {
            try
            {

                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "UPDATE ACTA1 SET TAREAS = '"+ tareas + "' WHERE IDACTA1 =" +id;
                OracleCommand cmd = new OracleCommand(sql, _connection);
                var docenteRut = cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
