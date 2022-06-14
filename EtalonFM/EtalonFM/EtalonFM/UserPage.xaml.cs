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
    /// Логика взаимодействия для UserPage.xaml
    /// </summary>
    public partial class UserPage : Page
    {
        public UserPage()
        {
            InitializeComponent();
        }

        private void BtnEd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new EditUserPage((sender as Button).DataContext as User));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new EditUserPage());
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var userForRemoving = DGridUser.SelectedItems.Cast<User>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие { userForRemoving.Count() } элементов?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                try
                {
                    EtalonFMEntities.GetContext().Users.RemoveRange(userForRemoving);
                    EtalonFMEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены.");
                    DGridUser.ItemsSource = EtalonFMEntities.GetContext().Users.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString() + ex.StackTrace.ToString());
                }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            DGridUser.ItemsSource = EtalonFMEntities.GetContext().Users.ToList();
        }
    }
}
