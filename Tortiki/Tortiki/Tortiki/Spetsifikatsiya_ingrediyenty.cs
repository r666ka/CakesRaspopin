//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tortiki
{
    using System;
    using System.Collections.Generic;
    
    public partial class Spetsifikatsiya_ingrediyenty
    {
        public string Изделие { get; set; }
        public string Ингредиент { get; set; }
        public int Кол_во { get; set; }
    
        public virtual Ingrediyent Ingrediyent { get; set; }
        public virtual Izdeliye Izdeliye { get; set; }
    }
}