package com.narvii.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.model.Community;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class StringUtils {
    private static Pattern EMOJI_PATTERN;
    private static SimpleDateFormat TODAY_FMT;
    private static Pattern UUID_PATTERN;
    private static final String[] hexDigits = {"0", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};
    public static final Comparator<String> CASE_INSENSITIVE_COMPARATOR = new Comparator<String>() { // from class: com.narvii.util.StringUtils.1
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            return str.compareToIgnoreCase(str2);
        }
    };

    public static boolean isTrimEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(byteToHexString(b));
        }
        return sb.toString();
    }

    private static String byteToHexString(byte b) {
        int i = b;
        if (b < 0) {
            i = b + 256;
        }
        return hexDigits[i >> 4] + hexDigits[i & 15];
    }

    public static byte[] hex2bytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static String md5(String str) {
        try {
            String str2 = new String(str);
            try {
                return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(str2.getBytes()));
            } catch (Exception unused) {
                return str2;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static String capitalize(String str) {
        int length;
        char cCharAt;
        char titleCase;
        if (str == null || (length = str.length()) == 0 || cCharAt == (titleCase = Character.toTitleCase((cCharAt = str.charAt(0))))) {
            return str;
        }
        char[] cArr = new char[length];
        cArr[0] = titleCase;
        str.getChars(1, length, cArr, 1);
        return String.valueOf(cArr);
    }

    public static ArrayList<String> split(String str, String str2) {
        return split(str, str2, false);
    }

    public static ArrayList<String> split(String str, String str2, boolean z) {
        if (str == null || str.length() == 0) {
            return new ArrayList<>();
        }
        ArrayList<String> arrayList = new ArrayList<>();
        int length = 0;
        while (true) {
            int iIndexOf = str.indexOf(str2, length);
            if (iIndexOf == -1) {
                break;
            }
            if (z || iIndexOf > length) {
                arrayList.add(str.substring(length, iIndexOf));
            }
            length = str2.length() + iIndexOf;
        }
        if (length < str.length()) {
            arrayList.add(str.substring(length));
        } else if (z && length == str.length()) {
            arrayList.add("");
        }
        return arrayList;
    }

    public static String join(Collection<?> collection, String str) {
        if (collection == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            String strTrim = String.valueOf(it.next()).trim();
            if (strTrim.length() != 0) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(str);
                }
                stringBuffer.append(strTrim);
            }
        }
        return stringBuffer.toString();
    }

    public static String decodeJsonString(String str) {
        try {
            return new JSONTokener(str + "\"").nextString('\"');
        } catch (JSONException unused) {
            return str;
        }
    }

    public static int parseInt(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i;
        }
    }

    public static long parseLong(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return j;
        }
        try {
            return Long.parseLong(str);
        } catch (Exception unused) {
            return j;
        }
    }

    public static int parseColor(String str) throws NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (str.charAt(0) == '#') {
            if (str.length() == 9) {
                int i = (int) (Long.parseLong(str.substring(1), 16) & 4294967295L);
                return Color.argb(i & 255, (i >>> 24) & 255, (i >>> 16) & 255, (i >>> 8) & 255);
            }
            if (str.length() == 7) {
                int i2 = Integer.parseInt(str.substring(1), 16);
                return Color.rgb((i2 >>> 16) & 255, (i2 >>> 8) & 255, i2 & 255);
            }
        }
        throw new NumberFormatException("malformed color " + str);
    }

    public static String formatColor(int i) {
        StringBuilder sb = new StringBuilder("#");
        colorAppend(sb, Color.red(i));
        colorAppend(sb, Color.green(i));
        colorAppend(sb, Color.blue(i));
        int iAlpha = Color.alpha(i);
        if (iAlpha != 255) {
            colorAppend(sb, iAlpha);
        }
        return sb.toString();
    }

    private static void colorAppend(StringBuilder sb, int i) {
        if (i < 16) {
            sb.append('0');
            sb.append(Integer.toHexString(i));
        } else {
            sb.append(Integer.toHexString(i & 255));
        }
    }

    public static boolean isUuid(String str) {
        if (str == null || str.length() != 36) {
            return false;
        }
        if (UUID_PATTERN == null) {
            UUID_PATTERN = Pattern.compile("([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})", 2);
        }
        return UUID_PATTERN.matcher(str).matches();
    }

    public static List<String> parseUuids(String str) {
        if (UUID_PATTERN == null) {
            UUID_PATTERN = Pattern.compile("([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})", 2);
        }
        Matcher matcher = UUID_PATTERN.matcher(str);
        ArrayList arrayList = null;
        while (matcher.find()) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(matcher.group(1));
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    public static String todayString() {
        if (TODAY_FMT == null) {
            TODAY_FMT = new SimpleDateFormat("yyyyMMdd");
        }
        return TODAY_FMT.format(new Date());
    }

    public static int getPureEmojiCount(String str) {
        int i = 0;
        if (TextUtils.isEmpty(str) || str.replaceAll("[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]", "").trim().length() != 0) {
            return 0;
        }
        if (EMOJI_PATTERN == null) {
            EMOJI_PATTERN = Pattern.compile("[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]", 66);
        }
        while (EMOJI_PATTERN.matcher(str).find()) {
            i++;
        }
        return i;
    }

    public static String getStringForCommunityLocal(NVContext nVContext, int i, String... strArr) {
        Community community = ((CommunityService) nVContext.getService("community")).getCommunity(((ConfigService) nVContext.getService("config")).getCommunityId());
        return getStringForLang(nVContext.getContext(), (community == null || NVApplication.CLIENT_TYPE == 101) ? null : community.primaryLanguage, i, strArr);
    }

    public static String getStringForLang(Context context, String str, int i, String... strArr) {
        Locale locale;
        if (str != null) {
            try {
                if (TextUtils.isEmpty(str) || "en".equals(str)) {
                    locale = Locale.US;
                } else {
                    locale = new Locale(str);
                }
                Configuration configuration = new Configuration(context.getResources().getConfiguration());
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = locale;
                    return new Resources(context.getAssets(), new DisplayMetrics(), configuration).getString(i, strArr);
                }
                configuration.setLocale(locale);
                return context.createConfigurationContext(configuration).getString(i, strArr);
            } catch (Exception unused) {
            }
        }
        return context.getString(i, strArr);
    }

    public static boolean isStringNotEquals(String str, String str2) {
        boolean zIsTrimEmpty = isTrimEmpty(str);
        boolean zIsTrimEmpty2 = isTrimEmpty(str2);
        if (zIsTrimEmpty && zIsTrimEmpty2) {
            return false;
        }
        if (zIsTrimEmpty ^ zIsTrimEmpty2) {
            return true;
        }
        return !Utils.isEquals(str, str2);
    }

    public static String unescapeHTML(String str) throws NumberFormatException {
        StringBuffer stringBuffer = new StringBuffer(str.length());
        int iIndexOf = str.indexOf("&");
        int i = 0;
        while (iIndexOf >= 0) {
            int i2 = iIndexOf + 1;
            int iIndexOf2 = str.indexOf("&", i2);
            int iIndexOf3 = str.indexOf(";", i2);
            int i3 = -1;
            if (iIndexOf3 != -1 && (iIndexOf2 == -1 || iIndexOf3 < iIndexOf2)) {
                String strSubstring = str.substring(i2, iIndexOf3);
                try {
                    if (strSubstring.startsWith("#")) {
                        i3 = Integer.parseInt(strSubstring.substring(1), 10);
                    } else if (TextUtils.equals(strSubstring, "quot")) {
                        i3 = 34;
                    } else if (TextUtils.equals(strSubstring, "amp")) {
                        i3 = 38;
                    } else if (TextUtils.equals(strSubstring, "lt")) {
                        i3 = 60;
                    } else if (TextUtils.equals(strSubstring, "gt")) {
                        i3 = 62;
                    }
                } catch (NumberFormatException unused) {
                }
                stringBuffer.append(str.substring(i, iIndexOf));
                int i4 = iIndexOf3 + 1;
                if (i3 >= 0 && i3 <= 65535) {
                    stringBuffer.append((char) i3);
                } else {
                    stringBuffer.append("&");
                    stringBuffer.append(strSubstring);
                    stringBuffer.append(";");
                }
                i = i4;
            }
            iIndexOf = iIndexOf2;
        }
        stringBuffer.append(str.substring(i));
        return stringBuffer.toString();
    }
}
