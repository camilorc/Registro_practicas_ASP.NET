using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

namespace Portafolio.Negocio
{
    public class Carrera
    {
        public int IdCarrera { get; set; }
        public string NombreCarrera { get; set; }

        public Carrera()
        {
            Init();
        }

        private void Init()
        {
            IdCarrera = 0;
            NombreCarrera = "";
        }
        
    }
}
