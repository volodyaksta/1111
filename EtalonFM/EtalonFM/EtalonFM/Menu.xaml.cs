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
    /// Логика взаимодействия для Menu.xaml
    /// </summary>
    public partial class Menu : Page
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            BtnUser.Visibility = Data.isAdmin() ? Visibility.Visible : Visibility.Collapsed;

            if (EtalonFMEntities.GetContext().Manags.Any(x => x.m_userID == Data.UserID))
            {
                if (EtalonFMEntities.GetContext().Manags.First(x => x.m_userID == Data.UserID).m_name != "")
                    TbName.Text = $"Добро пожаловать, {EtalonFMEntities.GetContext().Manags.First(x => x.m_userID == Data.UserID).m_name}";
                else TbName.Visibility = Visibility.Collapsed;
            }
            else TbName.Visibility = Visibility.Collapsed;
        }

        private void BtnClient_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new ClientPage());
        }

        private void BtnOrder_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new OrderPage());
        }

        private void BtnType_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new TypePage());
        }

        private void BtnUser_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new UserPage());
        }
    }
}
