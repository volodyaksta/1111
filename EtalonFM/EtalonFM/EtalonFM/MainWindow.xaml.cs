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
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Manager.MainFrame = MainFrame;
            MainFrame.Navigate(new Aut());
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            if (Manager.MainFrame.CanGoBack) Manager.MainFrame.GoBack();
        }

        private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (Manager.MainFrame.Content.ToString().Contains("Aut") || Manager.MainFrame.Content.ToString().Contains("Reg")) return;
            Manager.MainFrame.Navigate(new Menu());
        }

        private void MainFrame_ContentRendered(object sender, EventArgs e)
        {
            if (Manager.MainFrame.Content.ToString().Contains("Aut"))
            {
                BtnBack.Visibility = Visibility.Hidden;
                BtnOut.Visibility = Visibility.Hidden;
            }
            else
            {
                BtnBack.Visibility = Visibility.Visible;
            }
        }

        private void BtnOut_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new Aut());
        }
    }
}
