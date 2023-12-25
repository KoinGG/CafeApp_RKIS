using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace УП2._0.Models
{
    public class Place
    {
        [Key] [DatabaseGenerated(DatabaseGeneratedOption.Identity)] public int ID { get; set; }
        public int PlaceNumber { get; set; }


        public ICollection<Order> Orders { get; set;}
    }
}
