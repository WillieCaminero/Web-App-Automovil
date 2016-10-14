using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppAutomovil.Models
{
    [Serializable]
    public class LogRecord
    {
        public int Id { get; set; }
        public string Usuario { get; set; }
        public DateTime Fecha { get; set; }
    }
}