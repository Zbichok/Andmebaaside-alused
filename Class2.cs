using System;
using System.Collections.Generic;
using System.Text;

namespace Naidis_IKTpv25
{
    public class Class2
    {
        public static string Juku(string nimi="Juku")
        {
            string otsus = "";
            string vastus = "";
            int vanus = 0;
            string pilet = "";
            Console.WriteLine(nimi);
            if (nimi.ToLower() == "Juku")
            {
                Console.Write("skoko tebe let?");
                try
                {
                    vanus = int.Parse(Console.ReadLine());
                    if (vanus > 0 && vanus<100)
                    {
                        if (vanus < 6) 
                        {
                            pilet="sulle on kinopilet tasuta";
                        }
                        else if (vanus > 6 && vanus < 14)
                        {
                            pilet= "sulle on kinoilet on lastepilet";
                        }
                        else if (vanus > 14 && vanus < 65)
                        {
                            pilet="sulle on kinopilet taispilet";
                        }
                        else if (vanus >= 65)
                        {
                            pilet="sulle on kinopilet sooduspilet";
                        }

                    }
                    else
                    {
                        pilet="ne u tebja minus nu ili vozrast dolzen bit 0> i <100";
                    }
                }
                catch (Exception e )
                {

                    Console.WriteLine(e);
                }

                vanus = int.Parse(Console.ReadLine());
                otsus = "Pojdem v kino";
            }
            else
            {
                otsus = "Sorri ja zanjat";
            }
            vastus=$"tere {nimi}, {otsus}";
            return vastus;
            
        }
    }
}
