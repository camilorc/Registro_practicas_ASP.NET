using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Negocio
{
    public class Escuela
    {
        public string nombre { get; set; }
        public string  director { get; set; }

        public Escuela()
        {
            Init();
        }

        private void Init()
        {
            nombre = "";
            director = "";
        }

    }
}
