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
    /// Логика взаимодействия для Reg.xaml
    /// </summary>
    public partial class Reg : Page
    {
        public Reg()
        {
            InitializeComponent();
        }

        private void BtnReg(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(LoginBox.Text) && !EtalonFMEntities.GetContext().Users.Where(x => x.u_login == LoginBox.Text).Any())
            {
                User user = new User();
                user.u_login = LoginBox.Text;
                user.u_password = PasswordBox.Password;
                EtalonFMEntities.GetContext().Users.Add(user);
                EtalonFMEntities.GetContext().SaveChanges();
                MessageBox.Show("Вы успешно зарегестрировались.");
                Manager.MainFrame.GoBack();
            }
            else
            {
                MessageBox.Show("Такой пользователь уже существует.");
            }
        }
    }
}
