//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Portafolio.Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class CENTRO_PRACTICA
    {
        public CENTRO_PRACTICA()
        {
            this.PRACTICA = new HashSet<PRACTICA>();
        }
    
        public int IDCENTROPRACTICA { get; set; }
        public string NOMBRE_CENTRO { get; set; }
        public string DIRECCION_CENTRO { get; set; }
        public string DEPARTAMENTO_CENTRO { get; set; }
        public string AREA_CENTRO { get; set; }
        public string USERNAME { get; set; }
        public string RAZON_SOCIAL { get; set; }
        public string WEB { get; set; }
        public Nullable<int> FONO { get; set; }
        public string EMAIL { get; set; }
        public string PASS { get; set; }
    
        public virtual ICollection<PRACTICA> PRACTICA { get; set; }
    }
}
