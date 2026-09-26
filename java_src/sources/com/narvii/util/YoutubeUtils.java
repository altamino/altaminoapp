package com.narvii.util;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import com.safedk.android.utils.Logger;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.schabi.newpipe.extractor.services.youtube.r0;

/* JADX INFO: loaded from: classes4.dex */
public class YoutubeUtils {
    public static final Pattern VIDEO_ID_PATTERN = Pattern.compile("[A-Za-z0-9_-]{11}");

    public static long getYoutubeVideoLength(String str) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL("https://www.googleapis.com/youtube/v3/videos?id=" + str + "&key=" + ytk() + "&part=snippet,contentDetails").openConnection()));
        InputStream inputStream = HurlConnectionHelper.getInputStream(httpURLConnection);
        long contentLength = (long) httpURLConnection.getContentLength();
        if (contentLength < 512 || contentLength > 32000) {
            contentLength = PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) contentLength);
        byte[] bArr = new byte[2048];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                inputStream.close();
                httpURLConnection.disconnect();
                return parseISO8601Duration(new JSONObject(new String(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size(), "utf-8")).getJSONArray("items").getJSONObject(0).getJSONObject("contentDetails").getString(TypedValues.TransitionType.S_DURATION));
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static void openYoutubeVideo(NVContext nVContext, String str) {
        openYoutubeVideo(nVContext, str, false);
    }

    private static int parseFraction(String str, int i10) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        return Integer.parseInt((str + "000000000").substring(0, 9)) * i10;
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static String extractAnimatedWebpUrl(String str) throws Throwable {
        HttpURLConnection httpURLConnectionCreateConnection = new ProxyStack(NVApplication.instance()).createConnection(new URL("https://www.youtube.com/results?search_query=" + str + "&page=&utm_source=opensearch"));
        InputStream inputStream = null;
        try {
            httpURLConnectionCreateConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36");
            httpURLConnectionCreateConnection.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8");
            httpURLConnectionCreateConnection.setRequestProperty("Accept-Language", "en-US");
            InputStream inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
            try {
                byte[] bArr = new byte[8192];
                Pattern patternCompile = Pattern.compile("\"(https://[\\d\\w\\.]+/an_webp/" + str + "/mqdefault_6s.webp[^\"]*)\"");
                while (true) {
                    int full = readFull(inputStream2, bArr, 4096, 4096);
                    if (full == -1) {
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException unused) {
                            }
                        }
                        httpURLConnectionCreateConnection.disconnect();
                        return null;
                    }
                    Matcher matcher = patternCompile.matcher(new String(bArr, 0, full + 4096, "us-ascii"));
                    if (matcher.find()) {
                        String strUnescapeHTML = StringUtils.unescapeHTML(StringUtils.decodeJsonString(matcher.group(1)));
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException unused2) {
                            }
                        }
                        httpURLConnectionCreateConnection.disconnect();
                        return strUnescapeHTML;
                    }
                    System.arraycopy(bArr, 4096, bArr, 0, 4096);
                }
            } catch (Throwable th) {
                th = th;
                inputStream = inputStream2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                httpURLConnectionCreateConnection.disconnect();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String getDefaultYoutubeImage(String str) {
        return "http://i.ytimg.com/vi/" + str + "/default.jpg";
    }

    public static String getHQYoutubeImage(String str) {
        return "http://i.ytimg.com/vi/" + str + "/hqdefault.jpg";
    }

    public static long getYoutubeVideoLength2(String str) throws Exception {
        int i10;
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL("https://m.youtube.com/results?search_query=" + str).openConnection()));
        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 8.1.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3384.0 Mobile Safari/537.36");
        httpURLConnection.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
        httpURLConnection.setRequestProperty("Accept-Language", "en-US");
        InputStream inputStream = HurlConnectionHelper.getInputStream(httpURLConnection);
        long contentLength = httpURLConnection.getContentLength();
        if (contentLength < 4000 || contentLength > 96000) {
            contentLength = 32000;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) contentLength);
        byte[] bArr = new byte[4096];
        while (true) {
            int i11 = inputStream.read(bArr);
            i10 = 0;
            if (i11 == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
        inputStream.close();
        httpURLConnection.disconnect();
        Matcher matcher = Pattern.compile("id=\"initial-data\"\\s*>\\s*<!--(.*)-->").matcher(new String(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size(), "utf-8"));
        if (!matcher.find()) {
            throw new Exception("data error");
        }
        JSONArray jSONArray = new JSONObject(matcher.group(1).trim()).getJSONObject("contents").getJSONObject("sectionListRenderer").getJSONArray("contents").getJSONObject(0).getJSONObject("itemSectionRenderer").getJSONArray("contents");
        int length = jSONArray.length();
        for (int i12 = 0; i12 < length; i12++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i12);
            if (str.equals(jSONObject.getJSONObject("compactVideoRenderer").getString(r0.VIDEO_ID))) {
                Matcher matcher2 = Pattern.compile("(\\d+:)?(\\d{1,2}):(\\d{1,2})").matcher(jSONObject.getJSONObject("compactVideoRenderer").getJSONObject("lengthText").getJSONArray("runs").getJSONObject(0).getString("text"));
                if (matcher2.matches()) {
                    String strGroup = matcher2.group(1);
                    if (strGroup != null && strGroup.length() > 1) {
                        i10 = Integer.parseInt(strGroup.substring(0, strGroup.length() - 1));
                    }
                    return ((long) (Integer.parseInt(matcher2.group(3)) + (Integer.parseInt(matcher2.group(2)) * 60) + (i10 * InviteMembersFragment.SECOND_HOUR))) * 1000;
                }
            }
        }
        throw new Exception("video not found");
    }

    public static boolean isYtvScheme(String str) {
        return str != null && str.startsWith("ytv://");
    }

    public static void openYoutubeVideo(NVContext nVContext, String str, boolean z6) {
        String youtubeVideoIdFromUrl = getYoutubeVideoIdFromUrl(str);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube://" + youtubeVideoIdFromUrl));
        intent.setPackage("com.google.android.youtube");
        if (nVContext.getContext().getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
            if (z6) {
                intent.putExtra("force_fullscreen", true);
            }
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
        } else {
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, new Intent("android.intent.action.VIEW", Uri.parse("https://www.youtube.com/watch?v=" + youtubeVideoIdFromUrl)));
        }
    }

    private static long parseISO8601Duration(String str) {
        if (str == null) {
            return 0L;
        }
        try {
            Matcher matcher = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2).matcher(str);
            if (matcher.matches() && !ExifInterface.GPS_DIRECTION_TRUE.equals(matcher.group(3))) {
                boolean zEquals = "-".equals(matcher.group(1));
                String strGroup = matcher.group(2);
                String strGroup2 = matcher.group(4);
                String strGroup3 = matcher.group(5);
                String strGroup4 = matcher.group(6);
                String strGroup5 = matcher.group(7);
                if (strGroup != null || strGroup2 != null || strGroup3 != null || strGroup4 != null) {
                    long j6 = strGroup == null ? 0L : Long.parseLong(strGroup) * 86400;
                    long j10 = strGroup2 == null ? 0L : Long.parseLong(strGroup2) * 3600;
                    long j11 = strGroup3 == null ? 0L : Long.parseLong(strGroup3) * 60;
                    long j12 = strGroup4 == null ? 0L : Long.parseLong(strGroup4);
                    long fraction = ((j6 + j10 + j11 + j12) * 1000) + (((long) parseFraction(strGroup5, j12 < 0 ? -1 : 1)) / 1000000);
                    return zEquals ? fraction * (-1) : fraction;
                }
            }
        } catch (Exception unused) {
        }
        return 0L;
    }

    public static String ytk() {
        char[] cArr = new char[39];
        for (int i10 = 0; i10 < 39; i10++) {
            cArr[i10] = (char) (170 - "ia0IW1fuaeW>Ttu[c4T=ff=d48g1bS]c0VUQRia".charAt(i10));
        }
        return ((ConfigService) NVApplication.instance().getService("config")).getString("youtubeApiKey", new String(cArr));
    }

    public static String getYoutubePlaylistIdFromUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Uri.parse(str).getQueryParameter("list");
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getYoutubeVideoIdFromUrl(String str) {
        String queryParameter;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("ytv://")) {
            return str.substring(6).trim();
        }
        try {
            Uri uri = Uri.parse(str);
            if (uri.getHost().toLowerCase(Locale.US).contains("youtu.be")) {
                queryParameter = uri.getPathSegments().get(0);
            } else {
                queryParameter = uri.getQueryParameter("v");
            }
            if (queryParameter != null && !VIDEO_ID_PATTERN.matcher(queryParameter).matches()) {
                return null;
            }
            return queryParameter;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getYoutubeVideoSearchKeyword(String str) {
        try {
            Uri uri = Uri.parse(str);
            if (("." + uri.getHost()).endsWith(".youtube.com") && "/results".equals(uri.getPath())) {
                String queryParameter = uri.getQueryParameter("q");
                if (queryParameter == null) {
                    queryParameter = uri.getQueryParameter("search_query");
                }
                if (!TextUtils.isEmpty(queryParameter) && queryParameter.length() < 30) {
                    return queryParameter;
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static int readFull(@NonNull InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = inputStream.read(bArr, i10, i11);
        if (i12 != -1) {
            while (i12 < i11) {
                int i13 = inputStream.read(bArr, i10 + i12, i11 - i12);
                if (i13 == -1) {
                    break;
                }
                i12 += i13;
            }
        }
        return i12;
    }

    public static Map<String, Long> getYoutubeVideoLength(Collection<String> collection) {
        HashMap map = new HashMap();
        try {
            Iterator<String> it = collection.iterator();
            while (it.hasNext()) {
                StringBuilder sb = new StringBuilder();
                for (int i10 = 0; it.hasNext() && i10 < 50; i10++) {
                    sb.append(",");
                    sb.append((Object) it.next());
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL("https://www.googleapis.com/youtube/v3/videos?id=" + sb.substring(1) + "&key=" + ytk() + "&part=snippet,contentDetails").openConnection()));
                InputStream inputStream = HurlConnectionHelper.getInputStream(httpURLConnection);
                long contentLength = (long) httpURLConnection.getContentLength();
                if (contentLength < 512 || contentLength > 32000) {
                    contentLength = PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) contentLength);
                byte[] bArr = new byte[2048];
                while (true) {
                    int i11 = inputStream.read(bArr);
                    if (i11 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i11);
                }
                inputStream.close();
                httpURLConnection.disconnect();
                JSONArray jSONArray = new JSONObject(new String(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size(), "utf-8")).getJSONArray("items");
                for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                    map.put(jSONArray.getJSONObject(i12).getString("id"), Long.valueOf(parseISO8601Duration(jSONArray.getJSONObject(i12).getJSONObject("contentDetails").getString(TypedValues.TransitionType.S_DURATION))));
                }
            }
        } catch (Exception unused) {
        }
        return map;
    }
}
