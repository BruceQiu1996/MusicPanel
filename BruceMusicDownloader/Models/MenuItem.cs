using GalaSoft.MvvmLight;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace BruceMusicDownloader.Models
{
    public class MenuItem:ViewModelBase
    {
        public string DisplayName { get; set; }

        private bool isItemSelected;
        public bool IsItemSelected 
        {
            get { return this.isItemSelected; }
            set 
            {
                isItemSelected = value;
                RaisePropertyChanged(nameof(IsItemSelected));
            }
        }
        public string Key { get; set; }
        public string Path { get; set; }

        public Page Page { get; set; }
    }
}
