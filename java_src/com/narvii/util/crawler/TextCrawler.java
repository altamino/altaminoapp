package com.narvii.util.crawler;

import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.util.Log;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes3.dex */
public class TextCrawler {
    public static final int ALL = -1;
    public static final int NONE = -2;
    private LinkPreviewCallback callback;
    private NVContext nvContext;
    private final String HTTP_PROTOCOL = "http://";
    private final String HTTPS_PROTOCOL = "https://";

    public TextCrawler(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void makePreview(LinkPreviewCallback linkPreviewCallback, String str) {
        this.callback = linkPreviewCallback;
        new GetCode(-1).execute(str);
    }

    public void makePreview(LinkPreviewCallback linkPreviewCallback, String str, int i) {
        this.callback = linkPreviewCallback;
        new GetCode(i).execute(str);
    }

    public class GetCode extends AsyncTask<String, Void, Void> {
        private int imageQuantity;
        private SourceContent sourceContent = new SourceContent();
        private ArrayList<String> urls;

        public GetCode(int i) {
            this.imageQuantity = i;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            if (TextCrawler.this.callback != null) {
                TextCrawler.this.callback.onPre();
            }
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            if ((TextCrawler.this.nvContext instanceof NVFragment) && (!((NVFragment) TextCrawler.this.nvContext).isAdded() || ((NVFragment) TextCrawler.this.nvContext).isDestoryed() || ((NVFragment) TextCrawler.this.nvContext).getActivity().isFinishing())) {
                return;
            }
            if (TextCrawler.this.callback != null) {
                TextCrawler.this.callback.onPos(this.sourceContent, isNull());
            }
            super.onPostExecute((GetCode) r4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0228 A[Catch: Exception -> 0x040f, TryCatch #0 {Exception -> 0x040f, blocks: (B:13:0x0070, B:22:0x00bb, B:32:0x0100, B:34:0x011a, B:35:0x0121, B:38:0x0142, B:45:0x015a, B:47:0x016a, B:48:0x0174, B:50:0x017b, B:58:0x01c1, B:71:0x01d7, B:73:0x01dd, B:75:0x01e9, B:83:0x022f, B:85:0x0236, B:86:0x0244, B:88:0x024a, B:92:0x025f, B:94:0x02a2, B:96:0x02b5, B:97:0x02c0, B:99:0x02cc, B:100:0x02dd, B:104:0x02ff, B:106:0x030b, B:110:0x031c, B:112:0x0321, B:117:0x0333, B:119:0x033f, B:120:0x035f, B:121:0x0383, B:123:0x0394, B:124:0x03a1, B:126:0x03a9, B:129:0x03b7, B:137:0x03f1, B:138:0x0409, B:79:0x0228, B:80:0x022b, B:70:0x01d4), top: B:147:0x0070 }] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x022c  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x022f A[Catch: Exception -> 0x040f, TryCatch #0 {Exception -> 0x040f, blocks: (B:13:0x0070, B:22:0x00bb, B:32:0x0100, B:34:0x011a, B:35:0x0121, B:38:0x0142, B:45:0x015a, B:47:0x016a, B:48:0x0174, B:50:0x017b, B:58:0x01c1, B:71:0x01d7, B:73:0x01dd, B:75:0x01e9, B:83:0x022f, B:85:0x0236, B:86:0x0244, B:88:0x024a, B:92:0x025f, B:94:0x02a2, B:96:0x02b5, B:97:0x02c0, B:99:0x02cc, B:100:0x02dd, B:104:0x02ff, B:106:0x030b, B:110:0x031c, B:112:0x0321, B:117:0x0333, B:119:0x033f, B:120:0x035f, B:121:0x0383, B:123:0x0394, B:124:0x03a1, B:126:0x03a9, B:129:0x03b7, B:137:0x03f1, B:138:0x0409, B:79:0x0228, B:80:0x022b, B:70:0x01d4), top: B:147:0x0070 }] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0236 A[Catch: Exception -> 0x040f, TryCatch #0 {Exception -> 0x040f, blocks: (B:13:0x0070, B:22:0x00bb, B:32:0x0100, B:34:0x011a, B:35:0x0121, B:38:0x0142, B:45:0x015a, B:47:0x016a, B:48:0x0174, B:50:0x017b, B:58:0x01c1, B:71:0x01d7, B:73:0x01dd, B:75:0x01e9, B:83:0x022f, B:85:0x0236, B:86:0x0244, B:88:0x024a, B:92:0x025f, B:94:0x02a2, B:96:0x02b5, B:97:0x02c0, B:99:0x02cc, B:100:0x02dd, B:104:0x02ff, B:106:0x030b, B:110:0x031c, B:112:0x0321, B:117:0x0333, B:119:0x033f, B:120:0x035f, B:121:0x0383, B:123:0x0394, B:124:0x03a1, B:126:0x03a9, B:129:0x03b7, B:137:0x03f1, B:138:0x0409, B:79:0x0228, B:80:0x022b, B:70:0x01d4), top: B:147:0x0070 }] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.String... r17) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 1098
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.crawler.TextCrawler.GetCode.doInBackground(java.lang.String[]):java.lang.Void");
        }

        public boolean isNull() {
            return (this.sourceContent.isSuccess() || !TextCrawler.extendedTrim(this.sourceContent.getHtmlCode()).equals("") || TextCrawler.this.isImage(this.sourceContent.getFinalUrl())) ? false : true;
        }
    }

    private String getTagContent(String str, String str2) {
        String strExtendedTrim;
        String str3 = "<" + str + "(.*?)>(.*?)</" + str + ">";
        List<String> listPregMatchAll = Regex.pregMatchAll(str2, str3, 2);
        int size = listPregMatchAll.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                strExtendedTrim = "";
                break;
            }
            String strStripTags = stripTags(listPregMatchAll.get(i));
            if (strStripTags.length() >= 120) {
                strExtendedTrim = extendedTrim(strStripTags);
                break;
            }
            i++;
        }
        if (strExtendedTrim.equals("")) {
            strExtendedTrim = extendedTrim(Regex.pregMatch(str2, str3, 2));
        }
        return htmlDecode(strExtendedTrim.replaceAll("&nbsp;", ""));
    }

    public List<String> getImages(Document document, int i) {
        new ArrayList();
        List<String> imagesSrc = getImagesSrc(document.getElementsByTag(TtmlNode.TAG_P));
        if (imagesSrc == null || imagesSrc.size() == 0) {
            Elements elementsByTag = document.getElementsByTag(TtmlNode.TAG_DIV);
            ArrayList arrayList = new ArrayList();
            Iterator<Element> it = elementsByTag.iterator();
            while (it.hasNext()) {
                Element next = it.next();
                if (next.tagName().equals("a")) {
                    arrayList.add(next);
                }
            }
            imagesSrc = getImagesSrc(arrayList);
        }
        if (imagesSrc == null || imagesSrc.size() == 0) {
            imagesSrc = getImagesSrc(document.getElementsByTag(TtmlNode.TAG_DIV));
        }
        if (imagesSrc == null || imagesSrc.size() == 0) {
            imagesSrc = getImagesSrc(document);
        }
        return i != -1 ? imagesSrc.subList(0, i) : imagesSrc;
    }

    private List<String> getImagesSrc(Object obj) {
        Elements elementsSelect;
        ArrayList arrayList = new ArrayList();
        if (obj == null) {
            return null;
        }
        if (obj instanceof Elements) {
            elementsSelect = ((Elements) obj).select("[src]");
        } else if (obj instanceof Document) {
            elementsSelect = ((Document) obj).select("[src]");
        } else {
            if (!(obj instanceof Element)) {
                return null;
            }
            elementsSelect = ((Element) obj).select("[src]");
        }
        Iterator<Element> it = elementsSelect.iterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next.tagName().equals("img") && !next.attr("abs:src").endsWith("svg")) {
                arrayList.add(next.attr("abs:src"));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String htmlDecode(String str) {
        return Jsoup.parse(str).text();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String crawlCode(String str) {
        String tagContent = getTagContent(TtmlNode.TAG_SPAN, str);
        String tagContent2 = getTagContent(TtmlNode.TAG_P, str);
        String tagContent3 = getTagContent(TtmlNode.TAG_DIV, str);
        if ((tagContent2.length() > tagContent.length() && tagContent2.length() >= tagContent3.length()) || tagContent2.length() <= tagContent.length() || tagContent2.length() >= tagContent3.length()) {
            tagContent3 = tagContent2;
        }
        return htmlDecode(tagContent3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String cannonicalPage(String str) {
        if (str.startsWith("http://")) {
            str = str.substring(7);
        } else if (str.startsWith("https://")) {
            str = str.substring(8);
        }
        int length = str.length();
        String str2 = "";
        for (int i = 0; i < length && str.charAt(i) != '/'; i++) {
            str2 = str2 + str.charAt(i);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String stripTags(String str) {
        return Jsoup.parse(str).text();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isImage(String str) {
        return str.matches(Regex.IMAGE_PATTERN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFavIcon(SourceContent sourceContent) {
        String string = null;
        for (String str : Regex.pregMatchAll(sourceContent.getHtmlCode(), Regex.LINK_PATTERN, 1)) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.contains("rel=\"shortcut icon\"") || lowerCase.contains("rel='shortcut icon'")) {
                String strPregMatch = Regex.pregMatch(str, Regex.LINK_CONTENT_PATTERN, 1);
                if (!TextUtils.isEmpty(strPregMatch)) {
                    String strHtmlDecode = htmlDecode(strPregMatch);
                    try {
                        Uri uri = Uri.parse(sourceContent.getFinalUrl());
                        string = new URI(uri.getScheme() + "://" + uri.getHost()).resolve(strHtmlDecode).toString();
                    } catch (URISyntaxException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            Uri uri2 = Uri.parse(sourceContent.getFinalUrl());
            return new URI(uri2.getScheme() + "://" + uri2.getHost()).resolve("/favicon.ico").toString();
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> getMetaTags(Document document, boolean z) {
        HashMap<String, String> map = new HashMap<>();
        map.put("url", "");
        map.put("title", "");
        map.put("description", "");
        map.put("image", "");
        map.put("sitename", "");
        map.put("channelId", "");
        Iterator<Element> it = document.select("meta").iterator();
        while (it.hasNext()) {
            Element next = it.next();
            updateMetaTag(map, "url", extraContent(next, "property", "og:url", "twitter:url", AppMeasurementSdk.ConditionalUserProperty.NAME, "url"));
            updateMetaTag(map, "title", extraContent(next, "property", "og:title", "twitter:title", AppMeasurementSdk.ConditionalUserProperty.NAME, "title"));
            updateMetaTag(map, "description", extraContent(next, "property", "og:description", "twitter:description", AppMeasurementSdk.ConditionalUserProperty.NAME, "description"));
            updateMetaTag(map, "image", extraContent(next, "property", "og:image", "twitter:image", AppMeasurementSdk.ConditionalUserProperty.NAME, "image"));
            updateMetaTag(map, "sitename", extraContent(next, "property", "og:site_name", "twitter:site_name", AppMeasurementSdk.ConditionalUserProperty.NAME, "site_name"));
            if (z) {
                updateMetaTag(map, "image", extraContent(next, "itemprop", "videoid", null, null, null));
                updateMetaTag(map, "channelId", extraContent(next, "itemprop", "channelid", null, null, null));
            }
        }
        return map;
    }

    private String extraContent(Element element, String str, String str2, String str3, String str4, String str5) {
        if (element == null) {
            return null;
        }
        return (!element.hasAttr(str) || TextUtils.isEmpty(element.attr(str))) ? (TextUtils.isEmpty(str4) || !element.hasAttr(str4) || TextUtils.isEmpty(element.attr(str4)) || !element.attr(str4).toLowerCase(Locale.US).equals(str5)) ? "" : element.attr("content") : ((TextUtils.isEmpty(str2) || !element.attr(str).toLowerCase(Locale.US).equals(str2)) && (TextUtils.isEmpty(str3) || !element.attr(str).toLowerCase(Locale.US).equals(str3))) ? "" : element.attr("content");
    }

    private HashMap<String, String> getMetaTags(String str, boolean z) {
        HashMap<String, String> map = new HashMap<>();
        map.put("url", "");
        map.put("title", "");
        map.put("description", "");
        map.put("image", "");
        map.put("sitename", "");
        List<String> listPregMatchAll = Regex.pregMatchAll(str, Regex.METATAG_PATTERN, 1);
        for (String str2 : listPregMatchAll) {
            String lowerCase = str2.toLowerCase(Locale.US);
            if (lowerCase.contains("property=\"og:url\"") || lowerCase.contains("property='og:url'") || lowerCase.contains("name=\"url\"") || lowerCase.contains("name='url'")) {
                updateMetaTag(map, "url", separeMetaTagsContent(str2));
            } else if (lowerCase.contains("property=\"og:title\"") || lowerCase.contains("property='og:title'") || lowerCase.contains("name=\"title\"") || lowerCase.contains("name='title'")) {
                updateMetaTag(map, "title", separeMetaTagsContent(str2));
            } else if (lowerCase.contains("property=\"og:description\"") || lowerCase.contains("property='og:description'") || lowerCase.contains("name=\"description\"") || lowerCase.contains("name='description'")) {
                updateMetaTag(map, "description", separeMetaTagsContent(str2));
            } else if (lowerCase.contains("property=\"og:image\"") || lowerCase.contains("property='og:image'") || lowerCase.contains("name=\"image\"") || lowerCase.contains("name='image'")) {
                updateMetaTag(map, "image", separeMetaTagsContent(str2));
            } else if (lowerCase.contains("property=\"og:site_name\"") || lowerCase.contains("property='og:site_name'") || lowerCase.contains("name=\"site_name\"") || lowerCase.contains("name='site_name'")) {
                updateMetaTag(map, "sitename", separeMetaTagsContent(str2));
            }
        }
        if (z) {
            for (String str3 : listPregMatchAll) {
                String lowerCase2 = str3.toLowerCase(Locale.US);
                if (lowerCase2.contains("itemprop=\"videoid\"") || lowerCase2.contains("itemprop='videoid'")) {
                    updateMetaTag(map, "image", separeMetaTagsContent(str3));
                }
            }
        }
        return map;
    }

    private void updateMetaTag(HashMap<String, String> map, String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return;
        }
        map.put(str, str2);
    }

    private String separeMetaTagsContent(String str) {
        return htmlDecode(Regex.pregMatch(str, Regex.METATAG_CONTENT_PATTERN, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String unshortenUrl(String str) {
        if (!str.toLowerCase(Locale.US).startsWith("http://") && !str.toLowerCase(Locale.US).startsWith("https://")) {
            return "";
        }
        URLConnection uRLConnectionConnectURL = connectURL(str);
        if (uRLConnectionConnectURL == null) {
            return str;
        }
        uRLConnectionConnectURL.getHeaderFields();
        String string = uRLConnectionConnectURL.getURL().toString();
        URLConnection uRLConnectionConnectURL2 = connectURL(string);
        uRLConnectionConnectURL2.getHeaderFields();
        return !uRLConnectionConnectURL2.getURL().toString().equals(string) ? str : string;
    }

    private URLConnection connectURL(String str) {
        try {
            return new URL(str).openConnection();
        } catch (MalformedURLException unused) {
            Log.w("Please input a valid URL");
            return null;
        } catch (IOException unused2) {
            Log.w("Can not connect to the URL");
            return null;
        }
    }

    public static String extendedTrim(String str) {
        return str.replaceAll("\\s+", " ").replace("\n", " ").replace("\r", " ").trim();
    }
}
