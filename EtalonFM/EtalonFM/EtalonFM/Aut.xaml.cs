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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace EtalonFM
{
    /// <summary>
    /// Логика взаимодействия для Aut.xaml
    /// </summary>
    public partial class Aut : Page
    {
        public Aut()
        {
            InitializeComponent();
        }

        private void BtnAut(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(LoginBox.Text) && EtalonFMEntities.GetContext().Users.Where(x => x.u_login == LoginBox.Text).Any())
            {
                if (EtalonFMEntities.GetContext().Users.Where(x => x.u_login == LoginBox.Text && x.u_password == PasswordBox.Password).Any())
                {
                    var user = EtalonFMEntities.GetContext().Users.First(x => x.u_login == LoginBox.Text && x.u_password == PasswordBox.Password);
                    Data.Access = user.u_role;
                    Data.UserID = user.u_ID;
                    Manager.MainFrame.Navigate(new Menu());
                }
                else
                    MessageBox.Show("Пароль неправильный. Попробуйте еще раз.");
            }
            else
                MessageBox.Show("Такого пользователя не существует.");
        }

        private void BtnReg(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new Reg());
        }
    }
}
