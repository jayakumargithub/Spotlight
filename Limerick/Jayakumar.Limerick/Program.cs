using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.IO;
using System.Linq;
using System.Net.Configuration;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Jayakumar.Limerick
{
    class Program
    {
        static void Main(string[] args)
        { 
            string inputFile = string.Empty;
            string outputFile = string.Empty;

            bool correctInput = false;

            do
            { 
                try
                {

                    
                   // var input = Console.ReadLine();
                    if (args[0]  != null)
                    {

                        inputFile = args[0];
                        outputFile = args[1];
                    }
                    else
                    {
                        correctInput = true;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("You have entered wrong value");
                }
            } while (correctInput);
            
            var reverser = new Reverser(string.Format("{0}{1}","../",inputFile), string.Format("{0}{1}","../",outputFile));
            reverser.ReadLineByLine();
            reverser.ReverseIt();
            reverser.WriteOutPutFile();
            Console.WriteLine("Reversed file written in the bin folder of the project");

        }
    }

    
    }


 
