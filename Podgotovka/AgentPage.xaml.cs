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

namespace Podgotovka
{
    /// <summary>
    /// Логика взаимодействия для AgentPage.xaml
    /// </summary>
    public partial class AgentPage : Page
    {
        public AgentPage()
        {
            InitializeComponent();

            var allTypes = testDBEntities.GetContext().Agent.ToList();
            allTypes.Insert(0, new Agent
            {
                AgentType = "Все типы"
            });

            ComboFilter.ItemsSource = allTypes;
            ComboFilter.SelectedIndex = 0;

            var currentAgent = testDBEntities.GetContext().Agent.ToList();
            LViewPage.ItemsSource = currentAgent;

            UpdateTours();
        }

        private void UpdateTours()
        {
            var searchAgent = testDBEntities.GetContext().Agent.ToList();
            searchAgent = searchAgent.Where(p => 
            (p.AgentName.ToLower().Contains(TBoxSearch.Text.ToLower())) ||
            (p.AgentPhone.ToLower().Contains(TBoxSearch.Text.ToLower())) ||
            (p.AgentMail.ToLower().Contains(TBoxSearch.Text.ToLower()))).ToList();
            LViewPage.ItemsSource = searchAgent;
        }

        private void TBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateTours();
        }

        private void TypeSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
        }


        private void ComboFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new EditPage());
        }
    }
}
