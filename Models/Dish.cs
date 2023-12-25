using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace УП2._0.Models
{
    public class Dish
    {
        [Key] [DatabaseGenerated(DatabaseGeneratedOption.Identity)] public int ID { get; set; }
        [Required] public string DishName { get; set; }
        [Required] public decimal Cost { get; set; }
        [Required] public int CookTime { get; set; }

        public ICollection<Reserve> Reserve { get;}
    }
}
