using BruceMusicDownloader.Models;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using GalaSoft.MvvmLight.Messaging;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace BruceMusicDownloader.ViewModels
{
    public class MainWindowViewModel:ViewModelBase
    {

        private MenuItem _current;

        private ObservableCollection<MenuItem> onlineMenuItems;
        public ObservableCollection<MenuItem> OnlineMenuItems
        {
            get { return this.onlineMenuItems; }
            set 
            {
                onlineMenuItems = value;
                RaisePropertyChanged(nameof(OnlineMenuItems));
            }
        }

        private ObservableCollection<MenuItem> myMenuItems;
        public ObservableCollection<MenuItem> MyMenuItems
        {
            get { return this.myMenuItems; }
            set
            {
                myMenuItems = value;
                RaisePropertyChanged(nameof(MyMenuItems));
            }
        }

        public RelayCommand LoadCommand { get; set; }
        public RelayCommand<object> MenuItemChangeCommand { get; set; }
        public MainWindowViewModel() 
        {
            LoadCommand = new RelayCommand(Load);
            MenuItemChangeCommand = new RelayCommand<object>(MenuChange);
            OnlineMenuItems = new ObservableCollection<MenuItem>();
            MyMenuItems = new ObservableCollection<MenuItem>();
        }

        private void Load() 
        {
            OnlineMenuItems.Add(new MenuItem()
            {
                DisplayName = "音乐馆",
                IsItemSelected = true,
                Path = Application.Current.FindResource("Logo_findMusic")?.ToString(),
                Page = Const.MusicHub
            });

            OnlineMenuItems.Add(new MenuItem()
            {
                DisplayName = "电台",
                Path = Application.Current.FindResource("Logo_studio")?.ToString(),
                Page = Const.Studio
            });


            MyMenuItems.Add(new MenuItem()
            {
                DisplayName = "下载管理",
                Path = Application.Current.FindResource("Logo_downMusic")?.ToString(),
                Page = Const.DownLoad
            });

            MyMenuItems.Add(new MenuItem()
            {
                DisplayName = "播放历史",
                Path = Application.Current.FindResource("Logo_history")?.ToString(),
                Page = Const.History
            });
        }

        private void MenuChange(object obj) 
        {
            if (obj == null || (obj as System.Windows.Controls.SelectionChangedEventArgs) == null)
                return;

            if ((obj as System.Windows.Controls.SelectionChangedEventArgs).AddedItems.Count > 0) 
            {
                var item = (MenuItem)(obj as System.Windows.Controls.SelectionChangedEventArgs).AddedItems?[0];
                if (item != null)
                {
                    item.IsItemSelected = true;
                    Messenger.Default.Send(item.Page, Const.ShiftPage);
                    if (_current != null)
                        _current.IsItemSelected = false;

                    _current = item;
                }
            }
        }
    }
}
