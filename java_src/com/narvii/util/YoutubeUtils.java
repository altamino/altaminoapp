package com.narvii.util;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.invite.InviteMembersFragment;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class YoutubeUtils {
    public static final Pattern VIDEO_ID_PATTERN = Pattern.compile("[A-Za-z0-9_-]{11}");

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
            if (queryParameter != null) {
                if (!VIDEO_ID_PATTERN.matcher(queryParameter).matches()) {
                    return null;
                }
            }
            return queryParameter;
        } catch (Exception unused) {
            return null;
        }
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

    public static String getYoutubeVideoSearchKeyword(String str) {
        try {
            Uri uri = Uri.parse(str);
            if (!("." + uri.getHost()).endsWith(".youtube.com") || !"/results".equals(uri.getPath())) {
                return null;
            }
            String queryParameter = uri.getQueryParameter("q");
            if (queryParameter == null) {
                queryParameter = uri.getQueryParameter("search_query");
            }
            if (TextUtils.isEmpty(queryParameter)) {
                return null;
            }
            if (queryParameter.length() < 30) {
                return queryParameter;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean isYtvScheme(String str) {
        return str != null && str.startsWith("ytv://");
    }

    public static String getDefaultYoutubeImage(String str) {
        return "http://i.ytimg.com/vi/" + str + "/default.jpg";
    }

    public static String getHQYoutubeImage(String str) {
        return "http://i.ytimg.com/vi/" + str + "/hqdefault.jpg";
    }

    public static void openYoutubeVideo(NVContext nVContext, String str) {
        openYoutubeVideo(nVContext, str, false);
    }

    public static void openYoutubeVideo(NVContext nVContext, String str, boolean z) {
        String youtubeVideoIdFromUrl = getYoutubeVideoIdFromUrl(str);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube://" + youtubeVideoIdFromUrl));
        intent.setPackage("com.google.android.youtube");
        if (nVContext.getContext().getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
            if (z) {
                intent.putExtra("force_fullscreen", true);
            }
            nVContext.startActivity(intent);
        } else {
            nVContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.youtube.com/watch?v=" + youtubeVideoIdFromUrl)));
        }
    }

    public static String ytk() {
        char[] cArr = new char[39];
        for (int i = 0; i < 39; i++) {
            cArr[i] = (char) (170 - "ia0IW1fuaeW>Ttu[c4T=ff=d48g1bS]c0VUQRia".charAt(i));
        }
        return ((ConfigService) NVApplication.instance().getService("config")).getString("youtubeApiKey", new String(cArr));
    }

    public static long getYoutubeVideoLength(String str) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://www.googleapis.com/youtube/v3/videos?id=" + str + "&key=" + ytk() + "&part=snippet,contentDetails").openConnection();
        InputStream inputStream = httpURLConnection.getInputStream();
        long contentLength = (long) httpURLConnection.getContentLength();
        if (contentLength < 512 || contentLength > 32000) {
            contentLength = 2048;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) contentLength);
        byte[] bArr = new byte[2048];
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                inputStream.close();
                httpURLConnection.disconnect();
                return parseISO8601Duration(new JSONObject(new String(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size(), "utf-8")).getJSONArray("items").getJSONObject(0).getJSONObject("contentDetails").getString("duration"));
            }
        }
    }

    public static Map<String, Long> getYoutubeVideoLength(Collection<String> collection) throws JSONException, IOException {
        HashMap map = new HashMap();
        try {
            Iterator<String> it = collection.iterator();
            while (it.hasNext()) {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; it.hasNext() && i < 50; i++) {
                    sb.append(",");
                    sb.append((Object) it.next());
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://www.googleapis.com/youtube/v3/videos?id=" + sb.substring(1) + "&key=" + ytk() + "&part=snippet,contentDetails").openConnection();
                InputStream inputStream = httpURLConnection.getInputStream();
                long contentLength = (long) httpURLConnection.getContentLength();
                if (contentLength < 512 || contentLength > 32000) {
                    contentLength = 2048;
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) contentLength);
                byte[] bArr = new byte[2048];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
                inputStream.close();
                httpURLConnection.disconnect();
                JSONArray jSONArray = new JSONObject(new String(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size(), "utf-8")).getJSONArray("items");
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    map.put(jSONArray.getJSONObject(i3).getString("id"), Long.valueOf(parseISO8601Duration(jSONArray.getJSONObject(i3).getJSONObject("contentDetails").getString("duration"))));
                }
            }
        } catch (Exception unused) {
        }
        return map;
    }

    private static long parseISO8601Duration(String str) {
        if (str == null) {
            return 0L;
        }
        try {
            Matcher matcher = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2).matcher(str);
            if (matcher.matches() && !"T".equals(matcher.group(3))) {
                boolean zEquals = "-".equals(matcher.group(1));
                String strGroup = matcher.group(2);
                String strGroup2 = matcher.group(4);
                String strGroup3 = matcher.group(5);
                String strGroup4 = matcher.group(6);
                String strGroup5 = matcher.group(7);
                if (strGroup != null || strGroup2 != null || strGroup3 != null || strGroup4 != null) {
                    long j = strGroup == null ? 0L : Long.parseLong(strGroup) * 60 * 60 * 24;
                    long j2 = strGroup2 == null ? 0L : Long.parseLong(strGroup2) * 60 * 60;
                    long j3 = strGroup3 == null ? 0L : Long.parseLong(strGroup3) * 60;
                    long j4 = strGroup4 == null ? 0L : Long.parseLong(strGroup4);
                    long fraction = ((j + j2 + j3 + j4) * 1000) + (parseFraction(strGroup5, j4 < 0 ? -1 : 1) / 1000000);
                    return zEquals ? fraction * (-1) : fraction;
                }
            }
        } catch (Exception unused) {
        }
        return 0L;
    }

    private static int parseFraction(String str, int i) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        return Integer.parseInt((str + "000000000").substring(0, 9)) * i;
    }

    public static long getYoutubeVideoLength2(String str) throws Exception {
        int i;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://m.youtube.com/results?search_query=" + str).openConnection();
        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 8.1.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3384.0 Mobile Safari/537.36");
        httpURLConnection.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
        httpURLConnection.setRequestProperty("Accept-Language", "en-US");
        InputStream inputStream = httpURLConnection.getInputStream();
        long contentLength = httpURLConnection.getContentLength();
        if (contentLength < 4000 || contentLength > 96000) {
            contentLength = 32000;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) contentLength);
        byte[] bArr = new byte[4096];
        while (true) {
            int i2 = inputStream.read(bArr);
            i = 0;
            if (i2 == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
        inputStream.close();
        httpURLConnection.disconnect();
        Matcher matcher = Pattern.compile("id=\"initial-data\"\\s*>\\s*<!--(.*)-->").matcher(new String(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size(), "utf-8"));
        if (matcher.find()) {
            JSONArray jSONArray = new JSONObject(matcher.group(1).trim()).getJSONObject("contents").getJSONObject("sectionListRenderer").getJSONArray("contents").getJSONObject(0).getJSONObject("itemSectionRenderer").getJSONArray("contents");
            int length = jSONArray.length();
            for (int i3 = 0; i3 < length; i3++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i3);
                if (str.equals(jSONObject.getJSONObject("compactVideoRenderer").getString("videoId"))) {
                    Matcher matcher2 = Pattern.compile("(\\d+:)?(\\d{1,2}):(\\d{1,2})").matcher(jSONObject.getJSONObject("compactVideoRenderer").getJSONObject("lengthText").getJSONArray("runs").getJSONObject(0).getString(MimeTypes.BASE_TYPE_TEXT));
                    if (matcher2.matches()) {
                        String strGroup = matcher2.group(1);
                        if (strGroup != null && strGroup.length() > 1) {
                            i = Integer.parseInt(strGroup.substring(0, strGroup.length() - 1));
                        }
                        return (Integer.parseInt(matcher2.group(3)) + (Integer.parseInt(matcher2.group(2)) * 60) + (i * InviteMembersFragment.SECOND_HOUR)) * 1000;
                    }
                }
            }
            throw new Exception("video not found");
        }
        throw new Exception("data error");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x007d, code lost:
    
        r9 = com.narvii.util.StringUtils.unescapeHTML(com.narvii.util.StringUtils.decodeJsonString(r5.group(1)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x008a, code lost:
    
        if (r2 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x008c, code lost:
    
        r2.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String extractAnimatedWebpUrl(java.lang.String r9) throws java.lang.Throwable {
        /*
            com.narvii.util.http.ProxyStack r0 = new com.narvii.util.http.ProxyStack
            com.narvii.app.NVApplication r1 = com.narvii.app.NVApplication.instance()
            r0.<init>(r1)
            java.net.URL r1 = new java.net.URL
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "https://www.youtube.com/results?search_query="
            r2.append(r3)
            r2.append(r9)
            java.lang.String r3 = "&page=&utm_source=opensearch"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.net.HttpURLConnection r0 = r0.createConnection(r1)
            r1 = 0
            java.lang.String r2 = "User-Agent"
            java.lang.String r3 = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36"
            r0.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> La2
            java.lang.String r2 = "Accept"
        */
        //  java.lang.String r3 = "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8"
        /*
            r0.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> La2
            java.lang.String r2 = "Accept-Language"
            java.lang.String r3 = "en-US"
            r0.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> La2
            java.io.InputStream r2 = r0.getInputStream()     // Catch: java.lang.Throwable -> La2
            r3 = 8192(0x2000, float:1.14794E-41)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> La0
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La0
            r4.<init>()     // Catch: java.lang.Throwable -> La0
            java.lang.String r5 = "\"(https://[\\d\\w\\.]+/an_webp/"
            r4.append(r5)     // Catch: java.lang.Throwable -> La0
            r4.append(r9)     // Catch: java.lang.Throwable -> La0
            java.lang.String r9 = "/mqdefault_6s.webp[^\"]*)\""
            r4.append(r9)     // Catch: java.lang.Throwable -> La0
            java.lang.String r9 = r4.toString()     // Catch: java.lang.Throwable -> La0
            java.util.regex.Pattern r9 = java.util.regex.Pattern.compile(r9)     // Catch: java.lang.Throwable -> La0
        L60:
            r4 = 4096(0x1000, float:5.74E-42)
            int r5 = readFull(r2, r3, r4, r4)     // Catch: java.lang.Throwable -> La0
            r6 = -1
            if (r5 == r6) goto L97
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Throwable -> La0
            int r5 = r5 + 4096
            java.lang.String r7 = "us-ascii"
            r8 = 0
            r6.<init>(r3, r8, r5, r7)     // Catch: java.lang.Throwable -> La0
            java.util.regex.Matcher r5 = r9.matcher(r6)     // Catch: java.lang.Throwable -> La0
            boolean r6 = r5.find()     // Catch: java.lang.Throwable -> La0
            if (r6 == 0) goto L93
            r9 = 1
            java.lang.String r9 = r5.group(r9)     // Catch: java.lang.Throwable -> La0
            java.lang.String r9 = com.narvii.util.StringUtils.decodeJsonString(r9)     // Catch: java.lang.Throwable -> La0
            java.lang.String r9 = com.narvii.util.StringUtils.unescapeHTML(r9)     // Catch: java.lang.Throwable -> La0
            if (r2 == 0) goto L8f
            r2.close()     // Catch: java.io.IOException -> L8f
        L8f:
            r0.disconnect()
            return r9
        L93:
            java.lang.System.arraycopy(r3, r4, r3, r8, r4)     // Catch: java.lang.Throwable -> La0
            goto L60
        L97:
            if (r2 == 0) goto L9c
            r2.close()     // Catch: java.io.IOException -> L9c
        L9c:
            r0.disconnect()
            return r1
        La0:
            r9 = move-exception
            goto La4
        La2:
            r9 = move-exception
            r2 = r1
        La4:
            if (r2 == 0) goto La9
            r2.close()     // Catch: java.io.IOException -> La9
        La9:
            r0.disconnect()
            goto Lae
        Lad:
            throw r9
        Lae:
            goto Lad
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.YoutubeUtils.extractAnimatedWebpUrl(java.lang.String):java.lang.String");
    }

    public static int readFull(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = inputStream.read(bArr, i, i2);
        if (i3 != -1) {
            while (i3 < i2) {
                int i4 = inputStream.read(bArr, i + i3, i2 - i3);
                if (i4 == -1) {
                    break;
                }
                i3 += i4;
            }
        }
        return i3;
    }
}
