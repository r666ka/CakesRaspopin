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
using System.Data.SqlClient;
using System.Data;
using System.Data.Entity;

namespace Tortiki
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_parol_Click(object sender, RoutedEventArgs e)
        {
            Register register = new Register();
            register.Show();
            Close();
            //Открытие формы регистрации. Закрытие формы авторизации.
        }

        private void button_login_Click(object sender, RoutedEventArgs e)
        {
            String loginUser = UserLogin.Text;
            String Pass = Parol.Password;   
            CakesEntities cakesEntities = new CakesEntities();
            cakesEntities.Polzovateli.Load();
            var Login = cakesEntities.Polzovateli
               .Where(log => log.Login == UserLogin.Text && log.Password == Parol.Password)
               .FirstOrDefault();
            //Авторизация. Данные берутся из БД

            if (Login == null)
            {
                MessageBox.Show("Пустые поля ввода или неверно введены данные");
            }    
            // Проверка на пустые поля
            
            if (Login != null)
            {
                if (Login != null && Login.Role == "Директор")
                {
                    AdminPanel adminPanel = new AdminPanel();
                    adminPanel.Show();
                    Close();

                }               
            }
            //Проверка на роль Директора

            if (Login != null)
            {
                if (Login != null && Login.Role == "Заказчик")
                {
                    Zakazchik zakazchik = new Zakazchik();
                    zakazchik.Show();
                    Close();

                }
            }
            //Проверка на роль Директора

            if (Login != null)
            {
                if (Login != null && Login.Role == "Менеджер по продажам")
                {
                    ManedjerSKlientami manedjer = new ManedjerSKlientami();
                    manedjer.Show();
                    Close();

                }
            }
            //Проверка на роль Менеджер по работе с клиентами

       

            if (Login != null)
            {
                if (Login != null && Login.Role == "Менеджер по закупкам")
                {
                    MenedzherPoZakypkam zakypkam = new MenedzherPoZakypkam();
                    zakypkam.Show();
                    Close();

                }
            }
            //Проверка на роль Менеджер по закупкам


            if (Login != null)
            {
                if (Login != null && Login.Role == "Мастер")
                {
                    Master m = new Master();
                    m.Show();
                    Close();

                }
            } //Проверка на роль Мастер
        }
    }
}
