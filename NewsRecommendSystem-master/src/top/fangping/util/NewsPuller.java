//package top.fangping.util;
//import org.jsoup.nodes.Document;
//import org.jsoup.Jsoup;
//import com.gargoylesoftware.htmlunit.html.HtmlPage;
//public class NewsPuller {
//
//    void pullNews();
//
//    // url:即新闻首页url
//    // useHtmlUnit:是否使用htmlunit
//     Document getHtmlFromUrl(String url, boolean useHtmlUnit) throws Exception {
//        if (!useHtmlUnit) {
//            return Jsoup.connect(url)
//                    //模拟火狐浏览器
//                    .userAgent("Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)")
//                    .get();
//        } else {
//            WebClient webClient = new WebClient(BrowserVersion.CHROME);
//            webClient.getOptions().setJavaScriptEnabled(true);
//            webClient.getOptions().setCssEnabled(false);
//            webClient.getOptions().setActiveXNative(false);
//            webClient.getOptions().setCssEnabled(false);
//            webClient.getOptions().setThrowExceptionOnScriptError(false);
//            webClient.getOptions().setThrowExceptionOnFailingStatusCode(false);
//            webClient.getOptions().setTimeout(10000);
//            HtmlPage htmlPage = null;
//            try {
//                htmlPage = webClient.getPage(url);
//                webClient.waitForBackgroundJavaScript(10000);
//                String htmlString = htmlPage.asXml();
//                return Jsoup.parse(htmlString);
//            } finally {
//                webClient.close();
//            }
//        }
//    }
//
//}