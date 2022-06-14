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
    /// Логика взаимодействия для TypePage.xaml
    /// </summary>
    public partial class TypePage : Page
    {
        public TypePage()
        {
            InitializeComponent();
        }

        private void BtnEd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new EditTypePage((sender as Button).DataContext as AdType));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new EditTypePage());
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var typeForRemoving = DGridType.SelectedItems.Cast<AdType>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие { typeForRemoving.Count() } элементов?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                try
                {
                    EtalonFMEntities.GetContext().AdTypes.RemoveRange(typeForRemoving);
                    EtalonFMEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены.");
                    DGridType.ItemsSource = EtalonFMEntities.GetContext().AdTypes.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString() + ex.StackTrace.ToString());
                }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            DGridType.ItemsSource = EtalonFMEntities.GetContext().AdTypes.ToList();
            BtnAdd.Visibility = Data.isAdmin() ? Visibility.Visible : Visibility.Collapsed;
            BtnDel.Visibility = Data.isAdmin() ? Visibility.Visible : Visibility.Collapsed;
            BtnEd.Visibility = Data.isAdmin() ? Visibility.Visible : Visibility.Collapsed;
        }
    }
}
