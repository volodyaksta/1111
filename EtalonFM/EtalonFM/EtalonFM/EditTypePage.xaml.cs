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
    /// Логика взаимодействия для EditTypePage.xaml
    /// </summary>
    public partial class EditTypePage : Page
    {
        private AdType _currentType;

        public EditTypePage()
        {
            InitializeComponent();
            _currentType = new AdType();
            DataContext = _currentType;
        }

        public EditTypePage(AdType sv)
        {
            InitializeComponent();
            _currentType = sv;
            DataContext = _currentType;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(type.Text) || string.IsNullOrWhiteSpace(cost.Text))
                MessageBox.Show("Пожалуйста, заполните все поля", "", MessageBoxButton.OK);
            else
            {
                if (_currentType.a_ID == 0)
                    EtalonFMEntities.GetContext().AdTypes.Add(_currentType);
                try
                {
                    EtalonFMEntities.GetContext().SaveChanges();
                }
                catch (Exception ex)
                { MessageBox.Show(ex.Message.ToString()); }
                MessageBox.Show("Вы успешно добавили/изменили тип");
                Manager.MainFrame.GoBack();
            }
        }
    }
}
