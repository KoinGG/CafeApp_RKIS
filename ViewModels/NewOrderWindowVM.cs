using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using УП2._0.Models;
using УП2._0.View;
using static System.Net.Mime.MediaTypeNames;

namespace УП2._0.ViewModels
{
    public class NewOrderWindowVM : BaseVM
    {
        private ObservableCollection<Dish> _dishes;
        private ObservableCollection<Dish> _dishInOrder = new ObservableCollection<Dish>();
        private Dish _dish;
        private Order _order;
        private Order _orders { get; set; }
        private RelayCommand _addOrderCommand;

        public Order Order
        {
            get => _orders;
            set
            {
                _orders = value;
                OnPropertyChanged();
            }
        }
        public RelayCommand AddOrderCommand
        {
            get
            {
                return _addOrderCommand ??
                    (_addOrderCommand = new RelayCommand((x) =>
                    {
                        if (Order.ID == 0)
                        {
                            Order.OrderStatusID = 1;
                            Order.PlaceID = 1;
                            Order.Reserve = DishInOrder.Select(x => new Reserve() { Dishes = x, Orders = Order, }).ToList();
                            Order.UserID = AuthorizationWindowVM.UserID;
                            Order.TimeOrder = DateTime.Now.TimeOfDay;
                            Helper.GetContext().Order.Add(_orders);                            
                        }                        
                        Helper.GetContext().SaveChanges();
                        //Application.Current.Shutdown();
                    }));
            }
        }
        public ObservableCollection<Dish> Dishes
        {
            get => _dishes;
            set => _dishes = value;
        }
        public ObservableCollection<Dish> DishInOrder
        {
            get => _dishInOrder;
            set
            {
                _dishInOrder = value;
                OnPropertyChanged();
            }            
        }
        public Dish Dish
        {
            get => _dish;
            set
            {
                _dish = value;
                DishInOrder.Add(_dish);
                _dish = null;
                OnPropertyChanged();
            }
        }
        public NewOrderWindowVM()
        {
            _dishes = new ObservableCollection<Dish>(Helper.GetContext().Dish);
        }
        public NewOrderWindowVM(Order order)
        {
            _orders = order;
            _dishes = new ObservableCollection<Dish>(Helper.GetContext().Dish);
        }
    }
}
