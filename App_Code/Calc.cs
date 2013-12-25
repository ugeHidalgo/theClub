using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Calc
/// </summary>
public class Calc
{
    private double A;
    private double B;

    public double a
    {
        get { return A; }
        set { A = value; }
    }

    public double b
    {
        get { return B; }
        set { B = value; }
    }

	public Calc()
	{
        A = 0;
        B = 0;
	}
    /// <summary>
    /// Sets the value for a Calc object 
    /// </summary>
    /// <param name="a"></param>
    /// <param name="b"></param>
    public void SetCalc(double a, double b)
    {
        A = a;
        B = b;
    }
    
    /// <summary>
    /// Calculates the sum of the A an B fields from a calc object.
    /// </summary>
    /// <returns>Returns the sum of A and B</returns>
    public double Add()
    {
        return A + B;
    }

    public double Substract()
    {
        return A - B;
    }

    public double Multiply()
    {
        return A * B;
    }

    public double Divide()
    {
        return A / B;
    }
}