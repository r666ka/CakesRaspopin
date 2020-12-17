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
    /// Логика взаимодействия для Master.xaml
    /// </summary>
    public partial class Master : Window
    {
        public Master()
        {
            InitializeComponent();
        }

        private void Masterback_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }

        private void MasterButton_Click(object sender, RoutedEventArgs e)
        {
            // Подгрузка таблицы из БД
            CakesEntities cakesEntities = new CakesEntities();
            cakesEntities.Tip_Oborudovaniye.Load();
            var instr = from Tip_Oborudovaniye in cakesEntities.Tip_Oborudovaniye
                        select new
                        {
                            Tip_Oborudovaniye.Тип_оборудования
                            
                        };
            MasterTable.ItemsSource = instr.ToList();
        }
    }
}
