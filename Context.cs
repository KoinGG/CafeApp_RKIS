using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using УП2._0.Models;

namespace УП2._0
{
    public class Context : DbContext
    {
        public DbSet<Users> Users { get; set; }
        public DbSet<Order> Order { get; set; }
        public DbSet<OrderStatus> OrderStatus { get; set; }
        public DbSet<Reserve> Reserve { get; set; }
        public DbSet<Post> Post { get; set; }
        public DbSet<Place> Place { get; set; }
        public DbSet<Dish> Dish { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Users>(x =>
            {
                x.HasOne(x => x.Post).WithMany(x => x.Users).HasForeignKey(x => x.PostID);
            });
            modelBuilder.Entity<Order>(x =>
            {
                x.HasOne(x => x.OrderStatus).WithMany(x => x.Orders).HasForeignKey(x => x.OrderStatusID);
                x.HasOne(x => x.Users).WithMany(x => x.Orders).HasForeignKey(x => x.UserID);
                x.HasOne(x => x.Places).WithMany(x => x.Orders).HasForeignKey(x => x.PlaceID);
            });
            modelBuilder.Entity<Reserve>(x =>
            {
                x.HasOne(x => x.Orders).WithMany(x => x.Reserve).HasForeignKey(x => x.OrderID);
                x.HasOne(x => x.Dishes).WithMany(x => x.Reserve).HasForeignKey(x => x.DishID);
            });
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseNpgsql($"Host=localhost;Port=5432;Database=UP2;Username=postgres;Password=hellofus");
        }
    }
}
