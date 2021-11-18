using System;

namespace Recursive_SuperDigit
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter number");
            var n = Console.ReadLine();
            Console.WriteLine("Enter times to concatenate");
            var k = int.Parse(Console.ReadLine());
            Console.WriteLine($"Super Digit is: {SuperDigit(n, k)}");
            Console.ReadKey();
        }

        public static int SuperDigit(string n, int k)
        {
            return SumOfDigit((SumOfDigit(int.Parse(n)))* k);
        }
        public static int SumOfDigit(int n)
        {
            if (n < 10)
            {
                return n;
            }
            return SumOfDigit(n % 10 + SumOfDigit(n / 10));
        }
    }
}
