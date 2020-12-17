using System;
using System.Collections.Generic;
using System.Data.Entity;
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
using System.Windows.Shapes;

namespace Tortiki
{
    /// <summary>
    /// Логика взаимодействия для DeleteArtikul.xaml
    /// </summary>
    public partial class DeleteArtikul : Window
    {
        public DeleteArtikul()
        {
            InitializeComponent();
        }

       

        private void DelteArtikul(object sender, RoutedEventArgs e)
        {
            if (DelteArt.Text == "")
            {
                MessageBox.Show("Введите артикул!");
            }//Проверка на пустое поле
            

        }

        private void BackAdminPanel_Click(object sender, RoutedEventArgs e)
        {
            AdminPanel adminPanel = new AdminPanel();
            adminPanel.Show();
            Close();
        }
    }
}
