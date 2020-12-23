using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BruceMusicDownloader.Helpers
{
    public class HttpHelper
    {
        public async static Task<HttpResponseMessage> GetAsync(string url) 
        {
            using (HttpClient client = new HttpClient()) 
            {
                return await client.GetAsync(url);
            }
        }
    }
}
