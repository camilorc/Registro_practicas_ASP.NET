using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Portafolio.Datos;

namespace Portafolio.Negocio
{
    class Repositorio
    {
        private List<Usuario> ListarUsu(List<Datos.USUARIO> parm)
        {
            List<Usuario> salida = new List<Usuario>();

            foreach (Datos.USUARIO item in parm)
            {
                salida.Add(new Usuario()
                {
                    Apellido1 = item.APELLIDO1,
                    Apellido2 = item.APELLIDO2,
                    Contraseña = item.CONTRASEÑA,
                    Correo = item.CORREO,
                    Direccion = item.DIRECCION,
                    Dv = item.DV_USUARIO,
                    FechaNac = item.FECHA_NACIMIENTO,
                    Nombres = item.NOMBRES,
                    Rut = item.RUT,
                    Telefono = (int)item.TELEFONO
                });

            }

            return salida;
        }

        //private List<Practica> ListarPrac(List<Datos.PRACTICA> parm)
        //{
        //    List<Practica> salida = new List<Practica>();
        //
        //    foreach (Datos.PRACTICA item in parm)
        //    {
        //        salida.Add(new Practica()
        //        {
        //            CantHoras = item.CANT_HORAS,
        //            Distancia = char.Parse(item.DISTANCIA),
        //            Donde = item.DONDE,
        //            Estado = bool.Parse(item.ESTADO),
        //            FechaInicio = item.FECHA_INICIO,
        //            FechaTermino = item.FECHA_TERMINO,
        //            IdPractica = item.IDPRACTICA,
        //            Nota3 = int.Parse(item.NOTA_3.ToString()),
        //            NotaFinal = int.Parse(item.NOTA_FINAL.ToString()),
        //            TipoHoras = item.TIPO_HORAS_PRACTICA
        //        });
        //    }
        //    return salida;
        //}

        private List<CentroPractica> ListarCentro(List<Datos.CENTRO_PRACTICA> parm)
        {
            List<CentroPractica> salida = new List<CentroPractica>();

            foreach (Datos.CENTRO_PRACTICA item in parm)
            {
                salida.Add(new CentroPractica()
                {
                    AreaCentro = item.AREA_CENTRO,
                    DepartamentoCentro = item.DEPARTAMENTO_CENTRO,
                    DireccionCentro = item.DIRECCION_CENTRO,
                    IdCentro = item.IDCENTROPRACTICA,
                    NombreCentro = item.NOMBRE_CENTRO
                });
            }
            return salida;
        }

        public List<Usuario> ListarUsu()
        {
            return ListarUsu(InstanciaBD.Instancia.USUARIO.ToList());
        }

        //public List<Practica> ListarPrac()
        //{
        //    return ListarPrac(InstanciaBD.Instancia.PRACTICA.ToList());
        //}

        public List<CentroPractica> ListarCentro()
        {
            return ListarCentro(InstanciaBD.Instancia.CENTRO_PRACTICA.ToList());
        }

    }
}
