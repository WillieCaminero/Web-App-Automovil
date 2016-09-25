using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppAutomovil.Models
{
    public class Compra
    {
        public Automovil Automovil { get; set; }
        public Accesorios Accesorios { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string MetodoPago { get; set; }
        public TarjetaCredito TarjetaCredito { get; set; }
        public string Direccion { get; set; }
    }
}