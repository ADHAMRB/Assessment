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

namespace Management
{
    /// <summary>
    /// Interaction logic for Log_In.xaml
    /// </summary>
    public partial class Log_In : Page
    {
        public Log_In()
        {
            InitializeComponent();
        }
        ManagementEntities db = new ManagementEntities();

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var manage = db.Userrs.FirstOrDefault(x => x.Email == Emailtxt.Text && x.Passwordd == Passtxt.Text);
            
            if (Emailtxt.Text == "admin123" && Passtxt.Text == "admin123")
            {
                this.NavigationService.Navigate(new ManagementPage());
                MessageBox.Show("Welcome Manager");
            }
            
            else if (manage != null)
            {
                this.NavigationService.Navigate(new ViewTasks());
                MessageBox.Show("Welcome Employee");

            }
            else if(Emailtxt.Text == "" ||  Passtxt.Text == "") 
            {
                MessageBox.Show("Enter Fields!");
            }
        }
    }
}
