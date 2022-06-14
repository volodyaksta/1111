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
    /// Логика взаимодействия для EditUserPage.xaml
    /// </summary>
    public partial class EditUserPage : Page
    {
        private User _currentUser = new User();

        public EditUserPage()
        {
            InitializeComponent();
            _currentUser = new User();
            DataContext = _currentUser;
        }

        public EditUserPage(User cl)
        {
            InitializeComponent();
            _currentUser = cl;
            DataContext = _currentUser;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(login.Text))
                MessageBox.Show("Пожалуйста, заполните все поля", "", MessageBoxButton.OK);
            else
            {
                if (_currentUser.u_ID == 0)
                    EtalonFMEntities.GetContext().Users.Add(_currentUser);
                try
                {
                    EtalonFMEntities.GetContext().SaveChanges();
                }
                catch (Exception ex)
                { MessageBox.Show(ex.Message.ToString()); }
                MessageBox.Show("Вы успешно добавили/изменили пользователя");
                Manager.MainFrame.GoBack();
            }
        }
    }
}
