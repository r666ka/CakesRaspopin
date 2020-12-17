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
    /// Логика взаимодействия для ManedjerSKlientami.xaml
    /// </summary>
    public partial class ManedjerSKlientami : Window
    {
        public ManedjerSKlientami()
        {
            InitializeComponent();
        }

        private void ManedjerSKlientamiButton_Click(object sender, RoutedEventArgs e)
        {
            // Подгрузка таблицы из БД
            CakesEntities cakesEntities = new CakesEntities();
            cakesEntities.Polzovateli.Load();
            var instr = from Polzovateli in cakesEntities.Polzovateli
                        select new
                        {
                            Polzovateli.Фамилия,
                            Polzovateli.Имя_Отчество,
                            Polzovateli.Role,
                            Polzovateli.Zakaz,
                        };
            ManedjerSKlientamiTable.ItemsSource = instr.ToList();
        }

        private void ManedjerSKlientamiBack_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }
    }
}
