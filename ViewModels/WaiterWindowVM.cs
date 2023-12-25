using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using УП2._0.Models;
using УП2._0.View;

namespace УП2._0.ViewModels
{
    public class WaiterWindowVM : BaseVM
    {
        private RelayCommand _newOrderCommand;
        private RelayCommand _orderStatusAccepted;
        private int _orderStatusID;
        private RelayCommand _orderStatusPaid;
        private ObservableCollection<Order> _orders;
        private Order _order;
        private ObservableCollection<Reserve> _reserves;
        private Reserve _reserve;
        public RelayCommand OrderStatusPaid
        {
            get
            {
                return _orderStatusPaid ??
                    (_orderStatusPaid = new RelayCommand((x) =>
                    {
                        if (Order != null)
                        {
                            Order.OrderStatusID = 3;
                            Order.OrderStatus = Helper.GetContext().OrderStatus.Find(3);
                            Helper.GetContext().SaveChanges();
                        }
                    }));
            }
        }
        public RelayCommand OrderStatusAccepted
        {
            get
            {
                return _orderStatusAccepted ??
                    (_orderStatusAccepted = new RelayCommand((x) =>
                    {
                        if (Order != null)
                        {
                            Order.OrderStatusID = 2;
                            Order.OrderStatus = Helper.GetContext().OrderStatus.Find(2);
                            Helper.GetContext().SaveChanges();
                        }
                    }));
            }
        }
        public RelayCommand NewOrderCommand
        {
            get
            {
                return _newOrderCommand ??
                    (_newOrderCommand = new RelayCommand((x) =>
                    {
                        Order order = null;
                        NewOrderWindow newOrderWindow = new NewOrderWindow(out order);
                        newOrderWindow.ShowDialog();
                        if (order != null)
                        {
                            _orders.Add(order);
                        }
                    }));
            }
        }
        public int OrderStatusID
        {
            get => _orderStatusID;
            set
            {
                _orderStatusID = value;
                OnPropertyChanged();
            }
        }
        public ObservableCollection<Reserve> Reserves
        {
            get => _reserves;
            set => _reserves = value;
        }
        public Reserve Reserve
        {
            get => _reserve;
            set
            {
                _reserve = value;
                OnPropertyChanged();
            }
        }
        public ObservableCollection<Order> Orders
        {
            get => _orders;
            set => _orders = value;
        }
        public Order Order
        {
            get => _order;
            set
            {
                _order = value;
                OnPropertyChanged();
            }
        }
        public WaiterWindowVM()
        {
            _orders = new ObservableCollection<Order>(Helper.GetContext().Order.Include(x => x.OrderStatus).Include(x => x.Reserve).ThenInclude(x => x.Dishes));
        }
    }
}
