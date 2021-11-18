using System;
using System.Linq;

namespace MinMaxSum
{
    class Program
    {
        public static void MinMaxSum(int[] array)
        {
            long[] arr = array.Select(item=> (long)item).ToArray();
            long minVal = long.MaxValue;
            long maxVal = long.MinValue;
            long sumAll = 0;
            for (int i = 0; i < arr.Length; i++)
            {
                if(arr[i]<minVal)
                {
                    minVal = arr[i];
                }
                if(arr[i]>maxVal)
                {
                    maxVal = arr[i];
                }
                sumAll += arr[i];
            }
            Console.WriteLine($"{sumAll-maxVal} {sumAll-minVal}");
        }
        static void Main(string[] args)
        {
            int[] arr = new int[] { 1, 3, 5, 7, 9};
            MinMaxSum(arr);
            Console.ReadKey();
        }
    }
}
