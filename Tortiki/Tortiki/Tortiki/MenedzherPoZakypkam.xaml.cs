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
    /// Логика взаимодействия для MenedzherPoZakypkam.xaml
    /// </summary>
    public partial class MenedzherPoZakypkam : Window
    {
        public MenedzherPoZakypkam()
        {
            InitializeComponent();
        }

        private void MenedzherPoZakypkamButton_Click(object sender, RoutedEventArgs e)
        {
            // Подгрузка таблицы из БД
            CakesEntities cakesEntities = new CakesEntities();
            cakesEntities.Postavishchik.Load() ;
            var instr = from Postavishchik in cakesEntities.Postavishchik
                        select new
                        {
                            Postavishchik.Название_поставщика,
                            Postavishchik.Адрес,
                            Postavishchik.Срок_доставки,                      
                        };
            MenedzherPoZakypkamTable.ItemsSource = instr.ToList();
        }

        private void MenedzherPoZakypkamBack_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }
    }
}
