using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppAutomovil.Models
{
    public class TarjetaCredito
    {
        public string CodigoTarjeta { get; set; }
        public string Mes { get; set; }
        public string Anio { get; set; }
        public string CVV { get; set; }
    }
}