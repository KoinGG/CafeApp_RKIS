using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using УП2._0.ViewModels;

namespace УП2._0.Models
{
    public class Order : BaseVM
    {
        private OrderStatus _orderStatus;

        [Key] [DatabaseGenerated(DatabaseGeneratedOption.Identity)] public int ID { get; set; }
        [Required] public TimeSpan TimeOrder { get; set; }

        [ForeignKey("Users")] [Required] public int UserID { get; set; }
        public Users Users { get; set; }

        [ForeignKey("Place")] public int PlaceID { get; set; }        
        public Place Places { get; set; }

        [ForeignKey("OrderStatus")] [Required] public int OrderStatusID { get; set; }
        public OrderStatus OrderStatus 
        { 
            get => _orderStatus;
            set
            {
                _orderStatus = value;
                OnPropertyChanged();
            } 
        }


        public ICollection<Reserve> Reserve { get; set; }
    }
}
