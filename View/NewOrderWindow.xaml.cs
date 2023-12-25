using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using УП2._0.Models;
using УП2._0.ViewModels;

namespace УП2._0.View
{
    /// <summary>
    /// Логика взаимодействия для NewOrderWindow.xaml
    /// </summary>
    public partial class NewOrderWindow : Window
    {        
        public NewOrderWindow(out Order order)
        {
            InitializeComponent();
            var vm = new NewOrderWindowVM(new Order());
            DataContext = vm;
            order = vm.Order;
        }
        public NewOrderWindow(Order order)
        {
            InitializeComponent();
            DataContext = new NewOrderWindowVM(order);
        }
    }
}
