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
    /// Логика взаимодействия для ClientPage.xaml
    /// </summary>
    public partial class ClientPage : Page
    {
        public ClientPage()
        {
            InitializeComponent();
            OrSorting.ItemsSource = new List<string>
            {
                "Фамилия", "Имя", "Отчество"
            };
        }

        private void BtnEd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new EditClientPage((sender as Button).DataContext as Client));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new EditClientPage());
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var clientForRemoving = DGridClient.SelectedItems.Cast<Client>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие { clientForRemoving.Count() } элементов?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                try
                {
                    EtalonFMEntities.GetContext().Clients.RemoveRange(clientForRemoving);
                    EtalonFMEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены.");
                    DGridClient.ItemsSource = EtalonFMEntities.GetContext().Clients.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString() + ex.StackTrace.ToString());
                }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            DGridClient.ItemsSource = EtalonFMEntities.GetContext().Clients.ToList();
            BtnDel.Visibility = Data.isAdmin() ? Visibility.Visible : Visibility.Collapsed;
        }

        private void OrSorting_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var list = DGridClient.ItemsSource.Cast<Client>().ToList();
            switch (OrSorting.SelectedItem.ToString())
            {
                case "Фамилия":
                    DGridClient.ItemsSource = list.OrderBy(x => x.c_surname);
                    break;
                case "Имя":
                    DGridClient.ItemsSource = list.OrderBy(x => x.c_name);
                    break;
                case "Отчество":
                    DGridClient.ItemsSource = list.OrderBy(x => x.c_patronymic);
                    break;
            }
        }
    }
}
