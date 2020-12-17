using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Логика взаимодействия для Register.xaml
    /// </summary>
    public partial class Register : Window
    {
        public Register()
        {
            InitializeComponent();
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
            //Кнопка возвращает на форму авторизации.
        }

        private void register_Click(object sender, RoutedEventArgs e)
        {
            string NewName = NameUser.Text;
            string NewFemale = FamiliyUser.Text;
            string NewLogin = LoginUser.Text;
            string NewPass = ParolUser.Text;
            string NewRole = UserRole.Text;
            

            CakesEntities db = new CakesEntities();
            

            var user = db.Polzovateli
                .Where(u => u.Login == LoginUser.Text && u.Password == ParolUser.Text && u.Фамилия == FamiliyUser.Text && u.Имя_Отчество == NameUser.Text)
                .FirstOrDefault();
            //Загрузка данных из БД

            if (user != null)
            {
                MessageBox.Show("Этот логин уже занят.");
            }  //Проверка на наличие уже существующего пользователя.

            if (LoginUser.Text == "" || ParolUser.Text == "" || FamiliyUser.Text == "" || NameUser.Text == "" || UserRole.Text == "")
            {
                MessageBox.Show("Поля 'Фамилия', 'Имя и Отчество', 'Логин', 'Пароль' обязательны к заполнению!");
            }  //Проверка на заполнение полей
            else
            {
                if (NewPass.Length < 5)
                {
                    MessageBox.Show("Пароль должен содержать от 5 до 20 символов");
                    //Провка на количество символов
                }
                else
                {
                    if (Regex.IsMatch(ParolUser.Text, @"[А-ЯЁ]"))
                    {
                        MessageBox.Show("Пароль не должен содержать кириллицу");
                    }
                    else
                    {
                        if (user == null)
                        {
                            user = new Polzovateli();
                            user.Имя_Отчество = NewName;
                            user.Фамилия = NewFemale;
                            user.Login = NewLogin;
                            user.Password = NewPass;
                            user.Role = "Заказчик";
                            db.Polzovateli.Add(user);
                            db.SaveChanges();
                            MessageBox.Show("Регистрация завершена успешно.");
                            MainWindow mainWindow = new MainWindow();
                            mainWindow.Show();
                            Close();
                        } //Добавление нового пользователя в БД и закрытие старой формы и открытие новой.
                    }
                }
            }
        }
    }
}
