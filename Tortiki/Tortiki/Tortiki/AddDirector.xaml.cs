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
using System.Windows.Shapes;

namespace Tortiki
{
    /// <summary>
    /// Логика взаимодействия для AddDirector.xaml
    /// </summary>
    public partial class AddDirector : Window
    {
        public AddDirector()
        {
            InitializeComponent();
        }

        private void RegBack(object sender, RoutedEventArgs e)
        {
            AdminPanel admin = new AdminPanel();
            admin.Show();
            Close();
            //Кнопка возвращает на форму Директора.
        }

        private void AddId_Click(object sender, RoutedEventArgs e)
        {
            string NewNaimenovanie = Naimenovanie.Text;
            string NewOpisanie = Opisanie.Text;
            string NewIznos = Iznos.Text;
            string NewKolvo = Kolvo.Text;
            string NewTip = Tip.Text;
            string NewVozrast = Vozrast.Text;
           
            
            
            if (Naimenovanie.Text == "" || Opisanie.Text == "" || Iznos.Text == "" || Kolvo.Text == "" || Tip.Text == "" || Vozrast.Text == "")
            {
                    MessageBox.Show("Все поля должны быть заполнены!");
            }  //Проверка на заполнение полей
            else
            {
                CakesEntities db = new CakesEntities();


                var user = db.Instrumenty
                    .Where(u => u.Описание == Opisanie.Text)
                    .FirstOrDefault();

                if ((user == null) && (Naimenovanie.Text != "" && Opisanie.Text != "" && Iznos.Text != "" && Kolvo.Text != "" && Vozrast.Text != "" && Tip.Text != ""))
                {
                    user = new Instrumenty();
                    user.Наименование = NewNaimenovanie;
                    user.Описание = NewOpisanie;
                    user.Степень_износа = NewIznos;
                    user.Количество = NewKolvo;
                    user.Тип_инструмента = NewVozrast;
                    user.Возраст__в_месяцах_ = NewVozrast;                
                    db.Instrumenty.Add(user);
                    db.SaveChanges();
                    MessageBox.Show("Инструмент успешно добавлен.");
                    AdminPanel adminPanel = new AdminPanel();
                    adminPanel.Show();
                    Close();
                }
             } //Добавление нового пользователя в БД и закрытие старой формы и открытие новой.
            
}
        }
    }

    

