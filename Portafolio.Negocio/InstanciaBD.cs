using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;
using Portafolio.Datos;

namespace Portafolio.Negocio
{
    class InstanciaBD
    {
        private static ProyectoEntities _instancia;

        public static ProyectoEntities Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new ProyectoEntities();
                }
                return _instancia;
            }

        }

    }
}
