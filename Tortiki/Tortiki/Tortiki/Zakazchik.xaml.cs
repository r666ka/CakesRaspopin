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
    /// Логика взаимодействия для Zakazchik.xaml
    /// </summary>
    public partial class Zakazchik : Window
    {
        public Zakazchik()
        {
            InitializeComponent();
        }

        

        private void IngradietiZakazshick_Click(object sender, RoutedEventArgs e)
        {
            // Подгрузка таблицы из БД
             CakesEntities cakesEntities = new CakesEntities();
            cakesEntities.Ingrediyent.Load();
            var instr = from Ingrediyent in cakesEntities.Ingrediyent
                        select new
                        {
                            Ingrediyent.Артикул,
                            Ingrediyent.Наименование,
                            Ingrediyent.Единицы_измерения,
                            Ingrediyent.Количество,
                            Ingrediyent.Тип,
                            Ingrediyent.Цена,
                            Ingrediyent.ГОСТ,
                            Ingrediyent.Фасовка,
                            Ingrediyent.Поставщик,
                            Ingrediyent.Дата
                        };
            ZakazchikTable.ItemsSource = instr.ToList();
        }

        private void ykrasheniy_Click(object sender, RoutedEventArgs e)
        {
            //Подгрузка таблицы из БД 
            CakesEntities cakesEntities = new CakesEntities();
            cakesEntities.Ukrasheniye_dlya_torta.Load();
            var instr = from Ukrasheniye_dlya_torta in cakesEntities.Ukrasheniye_dlya_torta
                        select new
                        {
                            Ukrasheniye_dlya_torta.Артикул,
                            Ukrasheniye_dlya_torta.Наименование,
                            Ukrasheniye_dlya_torta.Единицы_измерения,
                            Ukrasheniye_dlya_torta.Количество,
                            Ukrasheniye_dlya_torta.Тип,
                            Ukrasheniye_dlya_torta.Закуп_Цена,
                            Ukrasheniye_dlya_torta.Вес,
                            Ukrasheniye_dlya_torta.Поставщик,
                        };
            ZakazchikTable.ItemsSource = instr.ToList();
        }

        private void IngradietiZakazshickBack_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }
    }
}
