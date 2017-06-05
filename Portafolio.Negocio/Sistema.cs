using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Negocio
{
    public class Sistema
    {
        public int IdNotificacion { get; set; }
        public string NombreNotificacion { get; set; }
        public DateTime FechaHora { get; set; }
        
        public Sistema()
        {
            IdNotificacion = 0;
            NombreNotificacion = "";
            FechaHora = new DateTime();
        }
    }
}
