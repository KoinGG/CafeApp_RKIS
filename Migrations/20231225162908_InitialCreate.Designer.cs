﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using УП2._0;

#nullable disable

namespace УП2._0.Migrations
{
    [DbContext(typeof(Context))]
    [Migration("20231225162908_InitialCreate")]
    partial class InitialCreate
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.3")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("УП2._0.Models.Dish", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("ID"));

                    b.Property<int>("CookTime")
                        .HasColumnType("integer");

                    b.Property<decimal>("Cost")
                        .HasColumnType("numeric");

                    b.Property<string>("DishName")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.ToTable("Dish");
                });

            modelBuilder.Entity("УП2._0.Models.Order", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("ID"));

                    b.Property<int>("OrderStatusID")
                        .HasColumnType("integer");

                    b.Property<int>("PlaceID")
                        .HasColumnType("integer");

                    b.Property<TimeSpan>("TimeOrder")
                        .HasColumnType("interval");

                    b.Property<int>("UserID")
                        .HasColumnType("integer");

                    b.HasKey("ID");

                    b.HasIndex("OrderStatusID");

                    b.HasIndex("PlaceID");

                    b.HasIndex("UserID");

                    b.ToTable("Order");
                });

            modelBuilder.Entity("УП2._0.Models.OrderStatus", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("ID"));

                    b.Property<string>("OrderStatusName")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.ToTable("OrderStatus");
                });

            modelBuilder.Entity("УП2._0.Models.Place", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("ID"));

                    b.Property<int>("PlaceNumber")
                        .HasColumnType("integer");

                    b.HasKey("ID");

                    b.ToTable("Place");
                });

            modelBuilder.Entity("УП2._0.Models.Post", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("ID"));

                    b.Property<string>("PostName")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.ToTable("Post");
                });

            modelBuilder.Entity("УП2._0.Models.Reserve", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("ID"));

                    b.Property<int>("DishCount")
                        .HasColumnType("integer");

                    b.Property<int>("DishID")
                        .HasColumnType("integer");

                    b.Property<int>("OrderID")
                        .HasColumnType("integer");

                    b.HasKey("ID");

                    b.HasIndex("DishID");

                    b.HasIndex("OrderID");

                    b.ToTable("Reserve");
                });

            modelBuilder.Entity("УП2._0.Models.Users", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("ID"));

                    b.Property<string>("Contract")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Login")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Patronymic")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Photo")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<int>("PostID")
                        .HasColumnType("integer");

                    b.Property<string>("Status")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Surname")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.HasIndex("PostID");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("УП2._0.Models.Order", b =>
                {
                    b.HasOne("УП2._0.Models.OrderStatus", "OrderStatus")
                        .WithMany("Orders")
                        .HasForeignKey("OrderStatusID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("УП2._0.Models.Place", "Places")
                        .WithMany("Orders")
                        .HasForeignKey("PlaceID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("УП2._0.Models.Users", "Users")
                        .WithMany("Orders")
                        .HasForeignKey("UserID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("OrderStatus");

                    b.Navigation("Places");

                    b.Navigation("Users");
                });

            modelBuilder.Entity("УП2._0.Models.Reserve", b =>
                {
                    b.HasOne("УП2._0.Models.Dish", "Dishes")
                        .WithMany("Reserve")
                        .HasForeignKey("DishID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("УП2._0.Models.Order", "Orders")
                        .WithMany("Reserve")
                        .HasForeignKey("OrderID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Dishes");

                    b.Navigation("Orders");
                });

            modelBuilder.Entity("УП2._0.Models.Users", b =>
                {
                    b.HasOne("УП2._0.Models.Post", "Post")
                        .WithMany("Users")
                        .HasForeignKey("PostID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Post");
                });

            modelBuilder.Entity("УП2._0.Models.Dish", b =>
                {
                    b.Navigation("Reserve");
                });

            modelBuilder.Entity("УП2._0.Models.Order", b =>
                {
                    b.Navigation("Reserve");
                });

            modelBuilder.Entity("УП2._0.Models.OrderStatus", b =>
                {
                    b.Navigation("Orders");
                });

            modelBuilder.Entity("УП2._0.Models.Place", b =>
                {
                    b.Navigation("Orders");
                });

            modelBuilder.Entity("УП2._0.Models.Post", b =>
                {
                    b.Navigation("Users");
                });

            modelBuilder.Entity("УП2._0.Models.Users", b =>
                {
                    b.Navigation("Orders");
                });
#pragma warning restore 612, 618
        }
    }
}
