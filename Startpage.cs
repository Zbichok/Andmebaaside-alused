using System;
using System.Collections.Generic;
using System.Text;

namespace Naidis_IKTpv25
{
    public class Startpage
    {
        public static void Main(string[] args)
        {
            Console.OutputEncoding = Encoding.UTF8;
            // Console.WriteLine("1. osa andmetüübid");
            // Console.BackgroundColor = ConsoleColor.Blue;
            // Console.ForegroundColor = ConsoleColor.DarkRed;
            string text = "danil kolbasenko";
            Console.WriteLine($"Ajdi diktuj: {text}");
            Console.WriteLine($"ja te shja dam: {0}", text);
            Console.WriteLine("Ajdi diktuj");
            string nimi = Console.ReadLine();
            Console.Write("Skolko let?");
            try
            {
                int vozrast = int.Parse(Console.ReadLine());
                Console.WriteLine($"tere {nimi}. Sa oled {vozrast} ja tolstij");
            }
            catch (Exception e)
            {
                Console.WriteLine(e);

            }
            try
            {
                Console.Write("arv 1: ");
                float a = float.Parse(Console.ReadLine());
                Console.Write("arv 2: ");
                float b = float.Parse(Console.ReadLine());
                float vastus = Naidis_funktsioonid.summa(a, b);
                Console.WriteLine($"summa {a} ja {b} võrdub {vastus}");         
            }
           catch (Exception e)
            {
                Console.WriteLine(e);
            }

            Random rnd = new Random();
            int juhuslik_arv = rnd.Next(-5, 25);
            Console.WriteLine(Naidis_funktsioonid.Kuu_nimetus(juhuslik_arv));
            juhuslik_arv = rnd.Next(-5, 25);
            text
        }
    }
}
