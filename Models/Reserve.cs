using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace УП2._0.Models
{
    public class Reserve
    {
        [Key] [DatabaseGenerated(DatabaseGeneratedOption.Identity)] public int ID { get; set; }
        public int DishCount { get; set; }

        [ForeignKey("Dishes")] public int DishID { get; set; }
        public Dish Dishes { get; set; }

        [ForeignKey("Orders")] public int OrderID { get; set; }
        public Order Orders { get; set; }
    }
}
