using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace УП2._0.Models
{
    public class Users
    {
        [Key] [DatabaseGenerated(DatabaseGeneratedOption.Identity)] public int ID { get; set; }
        [Required] public string Name { get; set; }
        [Required] public string Surname { get; set; }
        public string Patronymic { get; set; }
        [Required] public string Login { get; set; }
        [Required] public string Password { get; set; }
        public string Status { get; set; }
        public string Contract { get; set; }
        public string Photo { get; set; }

        [ForeignKey("Post")] [Required] public int PostID { get; set; }
        public Post Post { get; set; }


        public ICollection<Order> Orders { get; set; }
    }
}
