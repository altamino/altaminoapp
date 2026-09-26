package com.narvii.util.crawler;

import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.YoutubeUtils;
import com.narvii.volley.util.HurlConnectionHelper;
import com.narvii.youtube.DownloaderImpl;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
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
import java.util.Map;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import qa.y;

/* JADX INFO: loaded from: classes7.dex */
public class TextCrawler {
    public static final int ALL = -1;
    public static final int NONE = -2;
    private LinkPreviewCallback callback;
    private NVContext nvContext;
    private final String HTTP_PROTOCOL = y.HTTP;
    private final String HTTPS_PROTOCOL = y.HTTPS;

    public class GetCode extends AsyncTask<String, Void, Void> {
        private int imageQuantity;
        private SourceContent sourceContent = new SourceContent();
        private ArrayList<String> urls;

        public GetCode(int i10) {
            this.imageQuantity = i10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code duplicated, block: B:102:0x0315 A[Catch: Exception -> 0x0406, TryCatch #7 {Exception -> 0x0406, blocks: (B:14:0x0071, B:23:0x00bc, B:31:0x00ff, B:33:0x0119, B:34:0x0120, B:37:0x0143, B:44:0x015e, B:46:0x016e, B:47:0x0178, B:49:0x017f, B:61:0x01cf, B:70:0x01de, B:72:0x01e4, B:74:0x01f0, B:77:0x0230, B:78:0x0233, B:79:0x0234, B:80:0x0242, B:82:0x0248, B:86:0x025d, B:88:0x029e, B:90:0x02b1, B:91:0x02bc, B:93:0x02c8, B:94:0x02d7, B:96:0x02ff, B:100:0x0310, B:102:0x0315, B:107:0x0327, B:109:0x0333, B:110:0x0353, B:111:0x0377, B:113:0x038a, B:114:0x0397, B:116:0x039f, B:119:0x03ad, B:127:0x03e7, B:128:0x03ff), top: B:145:0x0071 }] */
        /* JADX WARN: Code duplicated, block: B:104:0x0321  */
        /* JADX WARN: Code duplicated, block: B:111:0x0377 A[Catch: Exception -> 0x0406, TryCatch #7 {Exception -> 0x0406, blocks: (B:14:0x0071, B:23:0x00bc, B:31:0x00ff, B:33:0x0119, B:34:0x0120, B:37:0x0143, B:44:0x015e, B:46:0x016e, B:47:0x0178, B:49:0x017f, B:61:0x01cf, B:70:0x01de, B:72:0x01e4, B:74:0x01f0, B:77:0x0230, B:78:0x0233, B:79:0x0234, B:80:0x0242, B:82:0x0248, B:86:0x025d, B:88:0x029e, B:90:0x02b1, B:91:0x02bc, B:93:0x02c8, B:94:0x02d7, B:96:0x02ff, B:100:0x0310, B:102:0x0315, B:107:0x0327, B:109:0x0333, B:110:0x0353, B:111:0x0377, B:113:0x038a, B:114:0x0397, B:116:0x039f, B:119:0x03ad, B:127:0x03e7, B:128:0x03ff), top: B:145:0x0071 }] */
        /* JADX WARN: Code duplicated, block: B:112:0x0388 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:113:0x038a A[Catch: Exception -> 0x0406, TryCatch #7 {Exception -> 0x0406, blocks: (B:14:0x0071, B:23:0x00bc, B:31:0x00ff, B:33:0x0119, B:34:0x0120, B:37:0x0143, B:44:0x015e, B:46:0x016e, B:47:0x0178, B:49:0x017f, B:61:0x01cf, B:70:0x01de, B:72:0x01e4, B:74:0x01f0, B:77:0x0230, B:78:0x0233, B:79:0x0234, B:80:0x0242, B:82:0x0248, B:86:0x025d, B:88:0x029e, B:90:0x02b1, B:91:0x02bc, B:93:0x02c8, B:94:0x02d7, B:96:0x02ff, B:100:0x0310, B:102:0x0315, B:107:0x0327, B:109:0x0333, B:110:0x0353, B:111:0x0377, B:113:0x038a, B:114:0x0397, B:116:0x039f, B:119:0x03ad, B:127:0x03e7, B:128:0x03ff), top: B:145:0x0071 }] */
        /* JADX WARN: Code duplicated, block: B:123:0x03d1 A[Catch: Exception -> 0x03e7, TryCatch #4 {Exception -> 0x03e7, blocks: (B:121:0x03bd, B:123:0x03d1, B:125:0x03db), top: B:142:0x03bd }] */
        /* JADX WARN: Code duplicated, block: B:142:0x03bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:150:0x025c A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:151:0x025a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:152:? A[LOOP:1: B:80:0x0242->B:152:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:22:0x00bb  */
        /* JADX WARN: Code duplicated, block: B:77:0x0230 A[Catch: Exception -> 0x0406, TryCatch #7 {Exception -> 0x0406, blocks: (B:14:0x0071, B:23:0x00bc, B:31:0x00ff, B:33:0x0119, B:34:0x0120, B:37:0x0143, B:44:0x015e, B:46:0x016e, B:47:0x0178, B:49:0x017f, B:61:0x01cf, B:70:0x01de, B:72:0x01e4, B:74:0x01f0, B:77:0x0230, B:78:0x0233, B:79:0x0234, B:80:0x0242, B:82:0x0248, B:86:0x025d, B:88:0x029e, B:90:0x02b1, B:91:0x02bc, B:93:0x02c8, B:94:0x02d7, B:96:0x02ff, B:100:0x0310, B:102:0x0315, B:107:0x0327, B:109:0x0333, B:110:0x0353, B:111:0x0377, B:113:0x038a, B:114:0x0397, B:116:0x039f, B:119:0x03ad, B:127:0x03e7, B:128:0x03ff), top: B:145:0x0071 }] */
        /* JADX WARN: Code duplicated, block: B:82:0x0248 A[Catch: Exception -> 0x0406, TryCatch #7 {Exception -> 0x0406, blocks: (B:14:0x0071, B:23:0x00bc, B:31:0x00ff, B:33:0x0119, B:34:0x0120, B:37:0x0143, B:44:0x015e, B:46:0x016e, B:47:0x0178, B:49:0x017f, B:61:0x01cf, B:70:0x01de, B:72:0x01e4, B:74:0x01f0, B:77:0x0230, B:78:0x0233, B:79:0x0234, B:80:0x0242, B:82:0x0248, B:86:0x025d, B:88:0x029e, B:90:0x02b1, B:91:0x02bc, B:93:0x02c8, B:94:0x02d7, B:96:0x02ff, B:100:0x0310, B:102:0x0315, B:107:0x0327, B:109:0x0333, B:110:0x0353, B:111:0x0377, B:113:0x038a, B:114:0x0397, B:116:0x039f, B:119:0x03ad, B:127:0x03e7, B:128:0x03ff), top: B:145:0x0071 }] */
        /* JADX WARN: Code duplicated, block: B:88:0x029e A[Catch: Exception -> 0x0406, TryCatch #7 {Exception -> 0x0406, blocks: (B:14:0x0071, B:23:0x00bc, B:31:0x00ff, B:33:0x0119, B:34:0x0120, B:37:0x0143, B:44:0x015e, B:46:0x016e, B:47:0x0178, B:49:0x017f, B:61:0x01cf, B:70:0x01de, B:72:0x01e4, B:74:0x01f0, B:77:0x0230, B:78:0x0233, B:79:0x0234, B:80:0x0242, B:82:0x0248, B:86:0x025d, B:88:0x029e, B:90:0x02b1, B:91:0x02bc, B:93:0x02c8, B:94:0x02d7, B:96:0x02ff, B:100:0x0310, B:102:0x0315, B:107:0x0327, B:109:0x0333, B:110:0x0353, B:111:0x0377, B:113:0x038a, B:114:0x0397, B:116:0x039f, B:119:0x03ad, B:127:0x03e7, B:128:0x03ff), top: B:145:0x0071 }] */
        /* JADX WARN: Code duplicated, block: B:90:0x02b1 A[Catch: Exception -> 0x0406, TryCatch #7 {Exception -> 0x0406, blocks: (B:14:0x0071, B:23:0x00bc, B:31:0x00ff, B:33:0x0119, B:34:0x0120, B:37:0x0143, B:44:0x015e, B:46:0x016e, B:47:0x0178, B:49:0x017f, B:61:0x01cf, B:70:0x01de, B:72:0x01e4, B:74:0x01f0, B:77:0x0230, B:78:0x0233, B:79:0x0234, B:80:0x0242, B:82:0x0248, B:86:0x025d, B:88:0x029e, B:90:0x02b1, B:91:0x02bc, B:93:0x02c8, B:94:0x02d7, B:96:0x02ff, B:100:0x0310, B:102:0x0315, B:107:0x0327, B:109:0x0333, B:110:0x0353, B:111:0x0377, B:113:0x038a, B:114:0x0397, B:116:0x039f, B:119:0x03ad, B:127:0x03e7, B:128:0x03ff), top: B:145:0x0071 }] */
        /* JADX WARN: Code duplicated, block: B:93:0x02c8 A[Catch: Exception -> 0x0406, TryCatch #7 {Exception -> 0x0406, blocks: (B:14:0x0071, B:23:0x00bc, B:31:0x00ff, B:33:0x0119, B:34:0x0120, B:37:0x0143, B:44:0x015e, B:46:0x016e, B:47:0x0178, B:49:0x017f, B:61:0x01cf, B:70:0x01de, B:72:0x01e4, B:74:0x01f0, B:77:0x0230, B:78:0x0233, B:79:0x0234, B:80:0x0242, B:82:0x0248, B:86:0x025d, B:88:0x029e, B:90:0x02b1, B:91:0x02bc, B:93:0x02c8, B:94:0x02d7, B:96:0x02ff, B:100:0x0310, B:102:0x0315, B:107:0x0327, B:109:0x0333, B:110:0x0353, B:111:0x0377, B:113:0x038a, B:114:0x0397, B:116:0x039f, B:119:0x03ad, B:127:0x03e7, B:128:0x03ff), top: B:145:0x0071 }] */
        /* JADX WARN: Code duplicated, block: B:99:0x030f  */
        @Override // android.os.AsyncTask
        public Void doInBackground(String... strArr) throws Throwable {
            char c7;
            String string;
            HashMap<String, String> metaTags;
            Iterator<Map.Entry<String, String>> it;
            boolean z6;
            boolean z10;
            String strPregMatch;
            Uri uri;
            String strPregMatch2;
            HttpURLConnection httpURLConnection;
            JsonNode tree;
            if (TextUtils.isEmpty(strArr[0])) {
                this.sourceContent.setSuccess(false);
            } else {
                this.sourceContent.setFinalUrl(TextCrawler.this.unshortenUrl(TextCrawler.extendedTrim(strArr[0])));
            }
            if (this.sourceContent.getFinalUrl().equals("")) {
                c7 = 0;
            } else if (!TextCrawler.this.isImage(this.sourceContent.getFinalUrl()) || this.sourceContent.getFinalUrl().contains("dropbox")) {
                try {
                    if (TextCrawler.this.nvContext != null) {
                        try {
                            if (new PackageUtils(TextCrawler.this.nvContext.getContext()).isPermalinkHost(Uri.parse(this.sourceContent.getFinalUrl()).getHost())) {
                                AccountService accountService = (AccountService) TextCrawler.this.nvContext.getService("account");
                                if (accountService.hasAccount()) {
                                    string = accountService.getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null);
                                } else {
                                    string = null;
                                }
                            } else {
                                string = null;
                            }
                        } catch (Exception unused) {
                        }
                    } else {
                        string = null;
                    }
                    Connection connectionUserAgent = Jsoup.connect(this.sourceContent.getFinalUrl()).userAgent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36");
                    String finalUrl = this.sourceContent.getFinalUrl();
                    try {
                        if (TextCrawler.this.nvContext != null && !TextUtils.isEmpty(finalUrl) && new PackageUtils(TextCrawler.this.nvContext.getContext()).isPermalinkHost(Uri.parse(finalUrl).getHost()) && string != null) {
                            connectionUserAgent.header("NDCAUTH", "sid=" + string);
                            if (NVApplication.DEBUG) {
                                connectionUserAgent.cookie("pebkit_secret", "charmander_hitokage");
                            }
                        }
                        while (true) {
                            if (it.hasNext()) {
                                z6 = false;
                                break;
                            }
                            if (!TextUtils.isEmpty(it.next().getValue())) {
                                z6 = true;
                                break;
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    Document document = connectionUserAgent.get();
                    this.sourceContent.setHtmlCode(TextCrawler.extendedTrim(document.toString()));
                    boolean z11 = this.sourceContent.getFinalUrl().contains(DownloaderImpl.YOUTUBE_DOMAIN) || this.sourceContent.getFinalUrl().contains("youtu.be");
                    if (z11) {
                        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(this.sourceContent.getFinalUrl());
                        if (TextUtils.isEmpty(youtubeVideoIdFromUrl)) {
                            youtubeVideoIdFromUrl = Regex.pregMatch(this.sourceContent.getFinalUrl(), Regex.METATAG_YT_PATTERN, 1);
                        }
                        String str = youtubeVideoIdFromUrl;
                        if (!TextUtils.isEmpty(str)) {
                            StringBuilder sb = new StringBuilder();
                            try {
                                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL("https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=" + str + "&format=json").openConnection()));
                                try {
                                    try {
                                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new BufferedInputStream(HurlConnectionHelper.getInputStream(httpURLConnection))));
                                        while (true) {
                                            String line = bufferedReader.readLine();
                                            if (line == null) {
                                                break;
                                            }
                                            sb.append(line);
                                        }
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                    } catch (Exception e) {
                                        e = e;
                                        e.printStackTrace();
                                        if (httpURLConnection != null) {
                                        }
                                        if (!TextUtils.isEmpty(sb)) {
                                            this.sourceContent.setTitle(tree.get("title").textValue());
                                            this.sourceContent.setSiteName("Youtube");
                                            SourceContent sourceContent = this.sourceContent;
                                            sourceContent.setFavicon(TextCrawler.this.getFavIcon(sourceContent));
                                            this.sourceContent.getImages().add("ytv://" + str);
                                            this.sourceContent.setSuccess(true);
                                            return null;
                                        }
                                        metaTags = TextCrawler.this.getMetaTags(document, z11);
                                        it = metaTags.entrySet().iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                z6 = false;
                                                break;
                                            }
                                            if (!TextUtils.isEmpty(it.next().getValue())) {
                                                z6 = true;
                                                break;
                                            }
                                        }
                                        this.sourceContent.setMetaTags(metaTags);
                                        this.sourceContent.setTitle(metaTags.get("title"));
                                        this.sourceContent.setDescription(metaTags.get("description"));
                                        this.sourceContent.setSiteName(metaTags.get("sitename"));
                                        SourceContent sourceContent2 = this.sourceContent;
                                        sourceContent2.setFavicon(TextCrawler.this.getFavIcon(sourceContent2));
                                        if (this.sourceContent.getTitle().equals("")) {
                                            strPregMatch2 = Regex.pregMatch(this.sourceContent.getHtmlCode(), Regex.TITLE_PATTERN, 2);
                                            if (!strPregMatch2.equals("")) {
                                                this.sourceContent.setTitle(TextCrawler.this.htmlDecode(strPregMatch2));
                                            }
                                        }
                                        if (this.sourceContent.getDescription().equals("")) {
                                            SourceContent sourceContent3 = this.sourceContent;
                                            sourceContent3.setDescription(TextCrawler.this.crawlCode(sourceContent3.getHtmlCode()));
                                        }
                                        SourceContent sourceContent4 = this.sourceContent;
                                        sourceContent4.setDescription(sourceContent4.getDescription().replaceAll(Regex.SCRIPT_PATTERN, ""));
                                        boolean z12 = !TextUtils.isEmpty(metaTags.get("channelId"));
                                        if (TextUtils.isEmpty(this.sourceContent.getFinalUrl())) {
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                        }
                                        if (this.imageQuantity != -2) {
                                            if (!metaTags.get("image").equals("")) {
                                                if (!z6) {
                                                    this.sourceContent.setImages(TextCrawler.this.getImages(document, this.imageQuantity));
                                                }
                                                if (this.sourceContent.getImages() != null) {
                                                    strPregMatch = Regex.pregMatch(this.sourceContent.getFinalUrl(), Regex.METATAG_YT_PATTERN, 1);
                                                    if (TextUtils.isEmpty(strPregMatch)) {
                                                        try {
                                                            uri = Uri.parse(this.sourceContent.getFinalUrl());
                                                            if ("youtu.be".equals(uri.getHost())) {
                                                                strPregMatch = uri.getPathSegments().get(0);
                                                            }
                                                        } catch (Exception unused3) {
                                                        }
                                                    }
                                                    this.sourceContent.getImages().add("ytv://" + strPregMatch);
                                                } else {
                                                    strPregMatch = Regex.pregMatch(this.sourceContent.getFinalUrl(), Regex.METATAG_YT_PATTERN, 1);
                                                    if (TextUtils.isEmpty(strPregMatch)) {
                                                        uri = Uri.parse(this.sourceContent.getFinalUrl());
                                                        if ("youtu.be".equals(uri.getHost())) {
                                                            strPregMatch = uri.getPathSegments().get(0);
                                                        }
                                                    }
                                                    this.sourceContent.getImages().add("ytv://" + strPregMatch);
                                                }
                                            } else if (z11) {
                                                this.sourceContent.getImages().add(metaTags.get("image"));
                                            } else {
                                                this.sourceContent.getImages().add(metaTags.get("image"));
                                            }
                                        }
                                        this.sourceContent.setSuccess(true);
                                        c7 = 0;
                                        this.sourceContent.setUrl(this.sourceContent.getFinalUrl().split("&")[c7]);
                                        SourceContent sourceContent5 = this.sourceContent;
                                        sourceContent5.setCannonicalUrl(TextCrawler.this.cannonicalPage(sourceContent5.getFinalUrl()));
                                        SourceContent sourceContent6 = this.sourceContent;
                                        sourceContent6.setDescription(TextCrawler.this.stripTags(sourceContent6.getDescription()));
                                        return null;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    throw th;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                httpURLConnection = null;
                            } catch (Throwable th2) {
                                th = th2;
                                httpURLConnection = null;
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                            if (!TextUtils.isEmpty(sb) && (tree = JacksonUtils.DEFAULT_MAPPER.readTree(sb.toString())) != null) {
                                this.sourceContent.setTitle(tree.get("title").textValue());
                                this.sourceContent.setSiteName("Youtube");
                                SourceContent sourceContent7 = this.sourceContent;
                                sourceContent7.setFavicon(TextCrawler.this.getFavIcon(sourceContent7));
                                this.sourceContent.getImages().add("ytv://" + str);
                                this.sourceContent.setSuccess(true);
                                return null;
                            }
                        }
                    }
                    metaTags = TextCrawler.this.getMetaTags(document, z11);
                    it = metaTags.entrySet().iterator();
                    this.sourceContent.setMetaTags(metaTags);
                    this.sourceContent.setTitle(metaTags.get("title"));
                    this.sourceContent.setDescription(metaTags.get("description"));
                    this.sourceContent.setSiteName(metaTags.get("sitename"));
                    SourceContent sourceContent8 = this.sourceContent;
                    sourceContent8.setFavicon(TextCrawler.this.getFavIcon(sourceContent8));
                    if (this.sourceContent.getTitle().equals("")) {
                        strPregMatch2 = Regex.pregMatch(this.sourceContent.getHtmlCode(), Regex.TITLE_PATTERN, 2);
                        if (!strPregMatch2.equals("")) {
                            this.sourceContent.setTitle(TextCrawler.this.htmlDecode(strPregMatch2));
                        }
                    }
                    if (this.sourceContent.getDescription().equals("")) {
                        SourceContent sourceContent9 = this.sourceContent;
                        sourceContent9.setDescription(TextCrawler.this.crawlCode(sourceContent9.getHtmlCode()));
                    }
                    SourceContent sourceContent10 = this.sourceContent;
                    sourceContent10.setDescription(sourceContent10.getDescription().replaceAll(Regex.SCRIPT_PATTERN, ""));
                    boolean z13 = !TextUtils.isEmpty(metaTags.get("channelId"));
                    if (TextUtils.isEmpty(this.sourceContent.getFinalUrl()) || !this.sourceContent.getFinalUrl().contains("/playlist")) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    if (this.imageQuantity != -2) {
                        if (!metaTags.get("image").equals("")) {
                            if (!z6) {
                                this.sourceContent.setImages(TextCrawler.this.getImages(document, this.imageQuantity));
                            }
                            if ((this.sourceContent.getImages() != null || this.sourceContent.getImages().size() == 0) && z11) {
                                strPregMatch = Regex.pregMatch(this.sourceContent.getFinalUrl(), Regex.METATAG_YT_PATTERN, 1);
                                if (TextUtils.isEmpty(strPregMatch)) {
                                    uri = Uri.parse(this.sourceContent.getFinalUrl());
                                    if ("youtu.be".equals(uri.getHost()) && uri.getPathSegments().size() > 0) {
                                        strPregMatch = uri.getPathSegments().get(0);
                                    }
                                }
                                this.sourceContent.getImages().add("ytv://" + strPregMatch);
                            }
                        } else if (z11 || z13 || z10) {
                            this.sourceContent.getImages().add(metaTags.get("image"));
                        } else if (TextUtils.isEmpty(metaTags.get("image"))) {
                            String strPregMatch3 = Regex.pregMatch(this.sourceContent.getFinalUrl(), Regex.METATAG_YT_PATTERN, 1);
                            this.sourceContent.getImages().add("ytv://" + strPregMatch3);
                        } else {
                            this.sourceContent.getImages().add("ytv://" + metaTags.get("image"));
                        }
                    }
                    this.sourceContent.setSuccess(true);
                    c7 = 0;
                } catch (Exception unused4) {
                    c7 = 0;
                    this.sourceContent.setSuccess(false);
                }
            } else {
                this.sourceContent.setSuccess(true);
                this.sourceContent.getImages().add(this.sourceContent.getFinalUrl());
                this.sourceContent.setTitle("");
                this.sourceContent.setDescription("");
                c7 = 0;
            }
            this.sourceContent.setUrl(this.sourceContent.getFinalUrl().split("&")[c7]);
            SourceContent sourceContent11 = this.sourceContent;
            sourceContent11.setCannonicalUrl(TextCrawler.this.cannonicalPage(sourceContent11.getFinalUrl()));
            SourceContent sourceContent12 = this.sourceContent;
            sourceContent12.setDescription(TextCrawler.this.stripTags(sourceContent12.getDescription()));
            return null;
        }

        public boolean isNull() {
            return (this.sourceContent.isSuccess() || !TextCrawler.extendedTrim(this.sourceContent.getHtmlCode()).equals("") || TextCrawler.this.isImage(this.sourceContent.getFinalUrl())) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r5) {
            if ((TextCrawler.this.nvContext instanceof NVFragment) && (!((NVFragment) TextCrawler.this.nvContext).isAdded() || ((NVFragment) TextCrawler.this.nvContext).isDestoryed() || ((NVFragment) TextCrawler.this.nvContext).getActivity().isFinishing())) {
                return;
            }
            if (TextCrawler.this.callback != null) {
                TextCrawler.this.callback.onPos(this.sourceContent, isNull());
            }
            super.onPostExecute(r5);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            if (TextCrawler.this.callback != null) {
                TextCrawler.this.callback.onPre();
            }
            super.onPreExecute();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> getMetaTags(Document document, boolean z6) {
        HashMap<String, String> map = new HashMap<>();
        map.put(ImagesContract.URL, "");
        map.put("title", "");
        map.put("description", "");
        map.put("image", "");
        map.put("sitename", "");
        map.put("channelId", "");
        for (Element element : document.select("meta")) {
            updateMetaTag(map, ImagesContract.URL, extraContent(element, "property", "og:url", "twitter:url", "name", ImagesContract.URL));
            updateMetaTag(map, "title", extraContent(element, "property", "og:title", "twitter:title", "name", "title"));
            updateMetaTag(map, "description", extraContent(element, "property", "og:description", "twitter:description", "name", "description"));
            updateMetaTag(map, "image", extraContent(element, "property", "og:image", "twitter:image", "name", "image"));
            updateMetaTag(map, "sitename", extraContent(element, "property", "og:site_name", "twitter:site_name", "name", "site_name"));
            if (z6) {
                updateMetaTag(map, "image", extraContent(element, "itemprop", "videoid", null, null, null));
                updateMetaTag(map, "channelId", extraContent(element, "itemprop", "channelid", null, null, null));
            }
        }
        return map;
    }

    public void makePreview(LinkPreviewCallback linkPreviewCallback, String str) {
        this.callback = linkPreviewCallback;
        new GetCode(-1).execute(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String cannonicalPage(String str) {
        if (str.startsWith(y.HTTP)) {
            str = str.substring(7);
        } else if (str.startsWith(y.HTTPS)) {
            str = str.substring(8);
        }
        int length = str.length();
        String str2 = "";
        for (int i10 = 0; i10 < length && str.charAt(i10) != '/'; i10++) {
            str2 = str2 + str.charAt(i10);
        }
        return str2;
    }

    private URLConnection connectURL(String str) {
        try {
            return (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
        } catch (MalformedURLException unused) {
            Log.w("Please input a valid URL");
            return null;
        } catch (IOException unused2) {
            Log.w("Can not connect to the URL");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String crawlCode(String str) {
        String tagContent = getTagContent("span", str);
        String tagContent2 = getTagContent("p", str);
        String tagContent3 = getTagContent("div", str);
        if ((tagContent2.length() <= tagContent.length() || tagContent2.length() < tagContent3.length()) && tagContent2.length() > tagContent.length() && tagContent2.length() < tagContent3.length()) {
            tagContent2 = tagContent3;
        }
        return htmlDecode(tagContent2);
    }

    public static String extendedTrim(String str) {
        return str.replaceAll("\\s+", " ").replace("\n", " ").replace("\r", " ").trim();
    }

    private String extraContent(Element element, String str, String str2, String str3, String str4, String str5) {
        if (element == null) {
            return null;
        }
        if (!element.hasAttr(str) || TextUtils.isEmpty(element.attr(str))) {
            return (TextUtils.isEmpty(str4) || !element.hasAttr(str4) || TextUtils.isEmpty(element.attr(str4)) || !element.attr(str4).toLowerCase(Locale.US).equals(str5)) ? "" : element.attr("content");
        }
        return ((TextUtils.isEmpty(str2) || !element.attr(str).toLowerCase(Locale.US).equals(str2)) && (TextUtils.isEmpty(str3) || !element.attr(str).toLowerCase(Locale.US).equals(str3))) ? "" : element.attr("content");
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
        for (Element element : elementsSelect) {
            if (element.tagName().equals("img") && !element.attr("abs:src").endsWith("svg")) {
                arrayList.add(element.attr("abs:src"));
            }
        }
        return arrayList;
    }

    private String getTagContent(String str, String str2) {
        String strExtendedTrim;
        String str3 = "<" + str + "(.*?)>(.*?)</" + str + ">";
        List<String> listPregMatchAll = Regex.pregMatchAll(str2, str3, 2);
        int size = listPregMatchAll.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                strExtendedTrim = "";
                break;
            }
            String strStripTags = stripTags(listPregMatchAll.get(i10));
            if (strStripTags.length() >= 120) {
                strExtendedTrim = extendedTrim(strStripTags);
                break;
            }
            i10++;
        }
        if (strExtendedTrim.equals("")) {
            strExtendedTrim = extendedTrim(Regex.pregMatch(str2, str3, 2));
        }
        return htmlDecode(strExtendedTrim.replaceAll("&nbsp;", ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isImage(String str) {
        return str.matches(Regex.IMAGE_PATTERN);
    }

    private String separeMetaTagsContent(String str) {
        return htmlDecode(Regex.pregMatch(str, Regex.METATAG_CONTENT_PATTERN, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String unshortenUrl(String str) {
        Locale locale = Locale.US;
        if (!str.toLowerCase(locale).startsWith(y.HTTP) && !str.toLowerCase(locale).startsWith(y.HTTPS)) {
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

    private void updateMetaTag(HashMap<String, String> map, String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return;
        }
        map.put(str, str2);
    }

    public List<String> getImages(Document document, int i10) {
        new ArrayList();
        List<String> imagesSrc = getImagesSrc(document.getElementsByTag("p"));
        if (imagesSrc == null || imagesSrc.size() == 0) {
            Elements elementsByTag = document.getElementsByTag("div");
            ArrayList arrayList = new ArrayList();
            for (Element element : elementsByTag) {
                if (element.tagName().equals(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY)) {
                    arrayList.add(element);
                }
            }
            imagesSrc = getImagesSrc(arrayList);
        }
        if (imagesSrc == null || imagesSrc.size() == 0) {
            imagesSrc = getImagesSrc(document.getElementsByTag("div"));
        }
        if (imagesSrc == null || imagesSrc.size() == 0) {
            imagesSrc = getImagesSrc(document);
        }
        return i10 != -1 ? imagesSrc.subList(0, i10) : imagesSrc;
    }

    public void makePreview(LinkPreviewCallback linkPreviewCallback, String str, int i10) {
        this.callback = linkPreviewCallback;
        new GetCode(i10).execute(str);
    }

    public TextCrawler(NVContext nVContext) {
        this.nvContext = nVContext;
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
        if (TextUtils.isEmpty(string)) {
            try {
                Uri uri2 = Uri.parse(sourceContent.getFinalUrl());
                return new URI(uri2.getScheme() + "://" + uri2.getHost()).resolve("/favicon.ico").toString();
            } catch (URISyntaxException e2) {
                e2.printStackTrace();
                return "";
            }
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String htmlDecode(String str) {
        return Jsoup.parse(str).text();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String stripTags(String str) {
        return Jsoup.parse(str).text();
    }

    private HashMap<String, String> getMetaTags(String str, boolean z6) {
        HashMap<String, String> map = new HashMap<>();
        map.put(ImagesContract.URL, "");
        map.put("title", "");
        map.put("description", "");
        map.put("image", "");
        map.put("sitename", "");
        List<String> listPregMatchAll = Regex.pregMatchAll(str, Regex.METATAG_PATTERN, 1);
        for (String str2 : listPregMatchAll) {
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains("property=\"og:url\"") && !lowerCase.contains("property='og:url'") && !lowerCase.contains("name=\"url\"") && !lowerCase.contains("name='url'")) {
                if (!lowerCase.contains("property=\"og:title\"") && !lowerCase.contains("property='og:title'") && !lowerCase.contains("name=\"title\"") && !lowerCase.contains("name='title'")) {
                    if (!lowerCase.contains("property=\"og:description\"") && !lowerCase.contains("property='og:description'") && !lowerCase.contains("name=\"description\"") && !lowerCase.contains("name='description'")) {
                        if (!lowerCase.contains("property=\"og:image\"") && !lowerCase.contains("property='og:image'") && !lowerCase.contains("name=\"image\"") && !lowerCase.contains("name='image'")) {
                            if (lowerCase.contains("property=\"og:site_name\"") || lowerCase.contains("property='og:site_name'") || lowerCase.contains("name=\"site_name\"") || lowerCase.contains("name='site_name'")) {
                                updateMetaTag(map, "sitename", separeMetaTagsContent(str2));
                            }
                        } else {
                            updateMetaTag(map, "image", separeMetaTagsContent(str2));
                        }
                    } else {
                        updateMetaTag(map, "description", separeMetaTagsContent(str2));
                    }
                } else {
                    updateMetaTag(map, "title", separeMetaTagsContent(str2));
                }
            } else {
                updateMetaTag(map, ImagesContract.URL, separeMetaTagsContent(str2));
            }
        }
        if (z6) {
            for (String str3 : listPregMatchAll) {
                String lowerCase2 = str3.toLowerCase(Locale.US);
                if (lowerCase2.contains("itemprop=\"videoid\"") || lowerCase2.contains("itemprop='videoid'")) {
                    updateMetaTag(map, "image", separeMetaTagsContent(str3));
                }
            }
        }
        return map;
    }
}
