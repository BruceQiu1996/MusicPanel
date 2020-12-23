using BruceMusicDownloader.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BruceMusicDownloader
{
    public class Const
    {
        private static readonly string BaseUrl = "http://127.0.0.1:3300";

        internal static readonly string Search = $"{BaseUrl}/search";

        internal static readonly string RecommendImage = $"{BaseUrl}/recommend/banner";
        internal static readonly string SingerType = $"{BaseUrl}/singer/list";

        //page

        internal static MusicHub musicHub;
        internal static MusicHub MusicHub => musicHub ?? (musicHub = new MusicHub());

        internal static History history;
        internal static History History => history ?? (history = new History());

        internal static Studio studio;
        internal static Studio Studio => studio ?? (studio = new Studio());

        internal static DownLoad downLoad;
        internal static DownLoad DownLoad => downLoad ?? (downLoad = new DownLoad());

        //token

        public static readonly string ShiftPage = nameof(ShiftPage);
    }
}
