using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.Linq;
using УП2._0.Models;

namespace УП2._0.ViewModels
{
    public class CookerWindowVM : BaseVM
    {
        private ObservableCollection<Order> _orders;
        private Order _order;
        private ObservableCollection<Reserve> _reserves;
        private Reserve _reserve;
        private RelayCommand _orderStatusCooking;
        private int _orderStatusID;
        private RelayCommand _orderStatusCooked;
        public RelayCommand OrderStatusCooked
        {
            get
            {
                return _orderStatusCooked ??
                    (_orderStatusCooked = new RelayCommand((x) =>
                    {
                        if (Order != null)
                        {
                            Order.OrderStatusID = 5;
                            Order.OrderStatus = Helper.GetContext().OrderStatus.Find(5);
                            Helper.GetContext().SaveChanges();
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
        public RelayCommand OrderStatusCooking
        {
            get
            {
                return _orderStatusCooking ??
                    (_orderStatusCooking = new RelayCommand((x) =>
                    {
                        if (Order != null)
                        {
                            Order.OrderStatusID = 4;
                            Order.OrderStatus = Helper.GetContext().OrderStatus.Find(4);
                            Helper.GetContext().SaveChanges();
                        }
                    }));
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
        public CookerWindowVM()
        {
            _orders = new ObservableCollection<Order>(Helper.GetContext().Order.Where(x => x.OrderStatusID == 2 || x.OrderStatusID == 3).Include(x => x.OrderStatus).Include(x => x.Reserve).ThenInclude(x => x.Dishes));
        }

    }
}
