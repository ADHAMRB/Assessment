using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
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
    /// Interaction logic for Sign_Up.xaml
    /// </summary>
    public partial class Sign_Up : Page
    {
        public Sign_Up()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ManagementEntities db = new ManagementEntities();
            var n = db.Userrs.FirstOrDefault(x => x.Namee == nametxt.Text);
            var E = db.Userrs.FirstOrDefault(x => x.Email == Emailtxt.Text);
            var p = db.Userrs.FirstOrDefault(x => x.Passwordd == Passtxt.Text);
            
            if (nametxt.Text.Length < 5)
            {
                MessageBox.Show("Name must be longer that 5 characters");

            }
            if (nametxt.Text == null)
            {
                MessageBox.Show("Please Enter your name");
            }


            if (E != null || p != null)
            {
                MessageBox.Show("Email or Password Already Exists");

            }
            if (Emailtxt.Text == null)
            {
                MessageBox.Show("Please enter email");

            }
            if (Passtxt.Text == null)
            {
                MessageBox.Show("Please enter password");
            }
            if (Passtxt.Text.Length < 8)
            {
                MessageBox.Show("Password must be longer than 8 characters");
            }
            if (Passtxt.Text != confirmpasstxt.Text)
            {
                MessageBox.Show("Passwords dont match");
            }
            else
            {
                Userr userr = new Userr();
                userr.Namee = nametxt.Text;
                userr.Email = Emailtxt.Text;
                userr.Passwordd = Passtxt.Text;
                userr.Rolee = roletxt.Text;
                db.Userrs.Add(userr);
                db.SaveChanges();
                MessageBox.Show("Sign Up Successful now Log In");
                this.NavigationService.Navigate(new Log_In());
            }



        }

        
    }
}
