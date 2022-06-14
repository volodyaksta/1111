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
    /// Логика взаимодействия для EditOrderPage.xaml
    /// </summary>
    public partial class EditOrderPage : Page
    {
        private Order _currentOrder;
        public void getComboBox()
        {
            ComboClient.ItemsSource = EtalonFMEntities.GetContext().Clients.ToList();
            ComboType.ItemsSource = EtalonFMEntities.GetContext().AdTypes.ToList();
            ComboManag.ItemsSource = EtalonFMEntities.GetContext().Manags.ToList();
            ComboLocation.ItemsSource = EtalonFMEntities.GetContext().Locations.ToList();
            var list = new List<int>();
            for (int i = 1; i <= 21; i += 1)
                list.Add(i);
            ComboDuration.ItemsSource = list;
        }

        public EditOrderPage()
        {
            InitializeComponent();
            _currentOrder = new Order();
            DataContext = _currentOrder;
            _currentOrder.o_dateStart = DateTime.Now;
            _currentOrder.o_dateEnd = DateTime.Now;
            getComboBox();
        }

        public EditOrderPage(Order sv)
        {
            InitializeComponent();
            _currentOrder = sv;
            DataContext = _currentOrder;
            getComboBox();
        }


        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (ComboType.SelectedItem == null || ComboClient.SelectedItem == null || ComboDuration.SelectedItem == null || string.IsNullOrWhiteSpace(suuum.Text))
                MessageBox.Show("Пожалуйста, заполните все поля", "", MessageBoxButton.OK);
            else
            {
                if (_currentOrder.o_ID == 0)
                    EtalonFMEntities.GetContext().Orders.Add(_currentOrder);
                try
                {
                    EtalonFMEntities.GetContext().SaveChanges();
                }
                catch (Exception ex)
                { MessageBox.Show(ex.Message.ToString()); }
                MessageBox.Show("Вы успешно добавили/изменили заказ");
                Manager.MainFrame.GoBack();
            }
        }

        private void GetSum()
        {
            if (ComboType.SelectedItem == null) return;
            var item = EtalonFMEntities.GetContext().AdTypes.ToList().First(x => x.a_type == (ComboType.SelectedItem as AdType).a_type);
            if (string.IsNullOrWhiteSpace(suuum.Text) || ComboType.SelectedItem == null || ComboDuration.SelectedItem == null) return;
            var cost = item.a_cost;
            var duration = int.Parse(ComboDuration.SelectedItem.ToString());
            var sum = cost * duration;
            suuum.Text = $"Цена: {sum} ₽";
            _currentOrder.o_cost = sum;
        }

        private void ComboDuration_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            GetSum();
        }

        private void ComboType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            GetSum();
        }
    }
}
