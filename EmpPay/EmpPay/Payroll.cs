//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EmpPay
{
    using System;
    using System.Collections.Generic;
    
    public partial class Payroll
    {
        public int PayrollID { get; set; }
        public int EmployeeID { get; set; }
        public System.DateTime StartTime { get; set; }
        public System.DateTime EndTime { get; set; }
    
        public virtual Employee Employee { get; set; }
    }
}
