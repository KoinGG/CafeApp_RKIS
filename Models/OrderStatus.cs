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
    public class OrderStatus : BaseVM
    {
        private string _orderStatusName;

        [Key] [DatabaseGenerated(DatabaseGeneratedOption.Identity)] public int ID { get; set; }
        [Required] public string OrderStatusName         
        {
            get => _orderStatusName;
            set
            {
                _orderStatusName = value;
                OnPropertyChanged();
            }
        }


        public ICollection<Order> Orders { get; set; }
    }
}
