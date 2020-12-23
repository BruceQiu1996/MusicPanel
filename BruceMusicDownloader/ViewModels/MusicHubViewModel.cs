using BruceMusicDownloader.Helpers;
using BruceMusicDownloader.Models;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BruceMusicDownloader.ViewModels
{
    public class MusicHubViewModel:ViewModelBase
    {
        public RelayCommand LoadCommand { get; set; }

        private ObservableCollection<RecommandBannder> recommandBannder;
        public ObservableCollection<RecommandBannder> RecommandBannder
        {
            get { return this.recommandBannder; }
            set
            {
                recommandBannder = value;
                RaisePropertyChanged(nameof(RecommandBannder));
            }
        }

        private ObservableCollection<SingerType> singerType;
        public ObservableCollection<SingerType> SingerType
        {
            get { return this.singerType; }
            set
            {
                singerType = value;
                RaisePropertyChanged(nameof(SingerType));
            }
        }

        public MusicHubViewModel() 
        {
            LoadCommand = new RelayCommand(Load);
        }

        private async void Load() 
        {
            var resp=await HttpHelper.GetAsync(Const.RecommendImage);
            if (resp.IsSuccessStatusCode) 
            {
                var result = await resp.Content.ReadAsStringAsync();
                RecommandBannder = JsonConvert.
                    DeserializeObject<ObservableCollection<RecommandBannder>>($"{JsonConvert.DeserializeObject<dynamic>(result).data}");
            }

            var singerresp = await HttpHelper.GetAsync(Const.SingerType);
            if (singerresp.IsSuccessStatusCode)
            {
                var result = await singerresp.Content.ReadAsStringAsync();
                SingerType = JsonConvert.
                    DeserializeObject<ObservableCollection<SingerType>>($"{JsonConvert.DeserializeObject<dynamic>(result).data.list}");
            }

        }
    }
}
