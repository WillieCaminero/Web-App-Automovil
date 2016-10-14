using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using WebAppAutomovil.Models;

namespace WebAppAutomovil.Utilities
{
    public class FileLog
    {
        public void insertarRecordLog(LogRecord log)
        {

            FileStream output;
            StreamWriter fileWriter;

            try
            {
                string path = String.Format("{0}Log\\bitacora.dat", AppDomain.CurrentDomain.BaseDirectory);
                output = new FileStream(path, FileMode.Append, FileAccess.Write);
                fileWriter = new StreamWriter(output);

                fileWriter.WriteLine(JsonConvert.SerializeObject(log));
                fileWriter.Close();
            }
            catch { }
        }

        public void insertarRecordLog(List<LogRecord> logs, bool truncateFile)
        {

            FileStream output;
            StreamWriter fileWriter;

            try
            {
                string path = String.Format("{0}Log\\bitacora.dat", AppDomain.CurrentDomain.BaseDirectory);
                output = new FileStream(path, truncateFile ? FileMode.Truncate : FileMode.Append, FileAccess.Write);
                fileWriter = new StreamWriter(output);

                foreach (LogRecord log in logs)
                    fileWriter.WriteLine(JsonConvert.SerializeObject(log));

                fileWriter.Close();
            }
            catch { }
        }

        public int obtenerIdRecord()
        {
            List<LogRecord> data = new List<LogRecord>();
            FileStream input;
            StreamReader fileReader;
            try
            {
                string path = String.Format("{0}Log\\bitacora.dat", AppDomain.CurrentDomain.BaseDirectory);
                input = new FileStream(path, FileMode.Open, FileAccess.Read);
                fileReader = new StreamReader(input);

                while (!fileReader.EndOfStream)
                {
                    LogRecord temp = JsonConvert.DeserializeObject<LogRecord>(fileReader.ReadLine());
                    data.Add(temp);
                }
                fileReader.Close();
            }
            catch { }

            return data.Max((x) => x.Id) + 1;
        }

        public void eliminarRecord(int Id)
        {
            List<LogRecord> data = new List<LogRecord>();
            FileStream input;
            StreamReader fileReader;
            try
            {
                string path = String.Format("{0}Log\\bitacora.dat", AppDomain.CurrentDomain.BaseDirectory);
                input = new FileStream(path, FileMode.Open, FileAccess.Read);
                fileReader = new StreamReader(input);

                while (!fileReader.EndOfStream)
                {
                    LogRecord temp = JsonConvert.DeserializeObject<LogRecord>(fileReader.ReadLine());
                    data.Add(temp);
                }
                fileReader.Close();
            }
            catch { }

            data.RemoveAll((x) => x.Id == Id);
            insertarRecordLog(data, true);
        }

        public List<LogRecord> obtenerRecords()
        {
            List<LogRecord> data = new List<LogRecord>();
            FileStream input;
            StreamReader fileReader;
            try
            {
                string path = String.Format("{0}Log\\bitacora.dat", AppDomain.CurrentDomain.BaseDirectory);
                input = new FileStream(path, FileMode.Open, FileAccess.Read);
                fileReader = new StreamReader(input);

                while (!fileReader.EndOfStream)
                {
                    LogRecord temp = JsonConvert.DeserializeObject<LogRecord>(fileReader.ReadLine());
                    data.Add(temp);
                }
                fileReader.Close();
            }
            catch { }

            return data;
        }
    }
}