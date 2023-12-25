using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using УП2._0.Models;
using УП2._0.View;

namespace УП2._0.ViewModels
{
    public class AuthorizationWindowVM : BaseVM
    {
        private RelayCommand _loginCommand;
        private string _login;
        public static int UserID;
        public string Login
        {
            get => _login;
            set
            {
                _login = value;
                OnPropertyChanged();
            }
        }

        public RelayCommand LoginCommand
        {
            get
            {
                return _loginCommand ??
                    (_loginCommand = new RelayCommand((x) =>
                    {
                        var password = (x as PasswordBox).Password;
                        var login = _login;
                        //Context context = new Context();                        
                        var user = Helper.GetContext().Users.SingleOrDefault(x => x.Login == login && x.Password == password);
                        UserID = user.ID;
                        if (user != null)
                        {
                            if (user.PostID == 1)
                            {
                                CookerWindow cookerWindow = new CookerWindow();
                                Application.Current.MainWindow.Close();
                                cookerWindow.Show();
                            }
                            else if (user.PostID == 2)
                            {
                                WaiterWindow waiterWindow = new WaiterWindow();
                                Application.Current.MainWindow.Close();
                                waiterWindow.Show();
                            }
                        }
                    }, (x) => 
                    {
                        var passwordBox = x as PasswordBox;
                        if(passwordBox == null)
                        {
                            return false;
                        }

                        string password = passwordBox.Password;
                        return string.IsNullOrEmpty(_login) == false
                            && string.IsNullOrEmpty(password) == false;
                    })); 
                
                    
            }
        }
    }
}
