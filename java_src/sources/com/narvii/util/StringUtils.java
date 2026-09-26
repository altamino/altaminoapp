package com.narvii.util;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.master.search.SearchPrefsHelper;
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

/* JADX INFO: loaded from: classes8.dex */
public class StringUtils {
    private static final String[] hexDigits = {"0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "d", "e", "f"};
    private static Pattern UUID_PATTERN = null;
    private static Pattern EMOJI_PATTERN = null;
    private static SimpleDateFormat TODAY_FMT = null;
    public static final Comparator<String> CASE_INSENSITIVE_COMPARATOR = new Comparator<String>() { // from class: com.narvii.util.StringUtils.1
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            return str.compareToIgnoreCase(str2);
        }
    };

    public static String md5(String str) {
        String str2 = null;
        try {
            String str3 = new String(str);
            try {
                return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(str3.getBytes()));
            } catch (Exception unused) {
                str2 = str3;
                return str2;
            }
        } catch (Exception unused2) {
        }
    }

    public static ArrayList<String> split(String str, String str2) {
        return split(str, str2, false);
    }

    public static String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b7 : bArr) {
            sb.append(byteToHexString(b7));
        }
        return sb.toString();
    }

    private static String byteToHexString(byte b7) {
        int i10 = b7;
        if (b7 < 0) {
            i10 = b7 + 256;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = hexDigits;
        sb.append(strArr[i10 >> 4]);
        sb.append(strArr[i10 & 15]);
        return sb.toString();
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

    private static void colorAppend(StringBuilder sb, int i10) {
        if (i10 >= 16) {
            sb.append(Integer.toHexString(i10 & 255));
        } else {
            sb.append('0');
            sb.append(Integer.toHexString(i10));
        }
    }

    public static String decodeJsonString(String str) {
        try {
            return new JSONTokener(str + "\"").nextString(kotlinx.serialization.json.internal.b.STRING);
        } catch (JSONException unused) {
            return str;
        }
    }

    public static String formatColor(int i10) {
        StringBuilder sb = new StringBuilder("#");
        colorAppend(sb, Color.red(i10));
        colorAppend(sb, Color.green(i10));
        colorAppend(sb, Color.blue(i10));
        int iAlpha = Color.alpha(i10);
        if (iAlpha != 255) {
            colorAppend(sb, iAlpha);
        }
        return sb.toString();
    }

    public static String getStringForCommunityLocal(NVContext nVContext, int i10, String... strArr) {
        Community community = ((CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(((ConfigService) nVContext.getService("config")).getCommunityId());
        return getStringForLang(nVContext.getContext(), community == null ? null : community.primaryLanguage, i10, strArr);
    }

    public static String getStringForLang(Context context, String str, int i10, String... strArr) {
        if (str != null) {
            try {
                Locale locale = (TextUtils.isEmpty(str) || "en".equals(str)) ? Locale.US : new Locale(str);
                Configuration configuration = new Configuration(context.getResources().getConfiguration());
                configuration.setLocale(locale);
                return context.createConfigurationContext(configuration).getString(i10, strArr);
            } catch (Exception unused) {
            }
        }
        return context.getString(i10, strArr);
    }

    public static boolean isTrimEmpty(String str) {
        return str == null || str.trim().length() == 0;
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

    public static ArrayList<String> split(String str, String str2, boolean z6) {
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
            if (z6 || iIndexOf > length) {
                arrayList.add(str.substring(length, iIndexOf));
            }
            length = str2.length() + iIndexOf;
        }
        if (length < str.length()) {
            arrayList.add(str.substring(length));
        } else if (z6 && length == str.length()) {
            arrayList.add("");
        }
        return arrayList;
    }

    public static String todayString() {
        if (TODAY_FMT == null) {
            TODAY_FMT = new SimpleDateFormat("yyyyMMdd");
        }
        return TODAY_FMT.format(new Date());
    }

    public static String unescapeHTML(String str) {
        StringBuffer stringBuffer = new StringBuffer(str.length());
        int iIndexOf = str.indexOf("&");
        int i10 = 0;
        while (iIndexOf >= 0) {
            int i11 = iIndexOf + 1;
            int iIndexOf2 = str.indexOf("&", i11);
            int iIndexOf3 = str.indexOf(";", i11);
            int i12 = -1;
            if (iIndexOf3 != -1 && (iIndexOf2 == -1 || iIndexOf3 < iIndexOf2)) {
                String strSubstring = str.substring(i11, iIndexOf3);
                try {
                    if (strSubstring.startsWith("#")) {
                        i12 = Integer.parseInt(strSubstring.substring(1), 10);
                    } else if (TextUtils.equals(strSubstring, "quot")) {
                        i12 = 34;
                    } else if (TextUtils.equals(strSubstring, "amp")) {
                        i12 = 38;
                    } else if (TextUtils.equals(strSubstring, "lt")) {
                        i12 = 60;
                    } else if (TextUtils.equals(strSubstring, "gt")) {
                        i12 = 62;
                    }
                } catch (NumberFormatException unused) {
                }
                stringBuffer.append(str.substring(i10, iIndexOf));
                int i13 = iIndexOf3 + 1;
                if (i12 < 0 || i12 > 65535) {
                    stringBuffer.append("&");
                    stringBuffer.append(strSubstring);
                    stringBuffer.append(";");
                } else {
                    stringBuffer.append((char) i12);
                }
                i10 = i13;
            }
            iIndexOf = iIndexOf2;
        }
        stringBuffer.append(str.substring(i10));
        return stringBuffer.toString();
    }

    public static int getPureEmojiCount(String str) {
        int i10 = 0;
        if (TextUtils.isEmpty(str) || str.replaceAll("[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]", "").trim().length() != 0) {
            return 0;
        }
        if (EMOJI_PATTERN == null) {
            EMOJI_PATTERN = Pattern.compile("[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]", 66);
        }
        while (EMOJI_PATTERN.matcher(str).find()) {
            i10++;
        }
        return i10;
    }

    public static byte[] hex2bytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i10 = 0; i10 < length; i10 += 2) {
            bArr[i10 / 2] = (byte) ((Character.digit(str.charAt(i10), 16) << 4) + Character.digit(str.charAt(i10 + 1), 16));
        }
        return bArr;
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

    public static int parseColor(String str) throws NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (str.charAt(0) == '#') {
            if (str.length() == 9) {
                int i10 = (int) (Long.parseLong(str.substring(1), 16) & 4294967295L);
                return Color.argb(i10 & 255, (i10 >>> 24) & 255, (i10 >>> 16) & 255, (i10 >>> 8) & 255);
            }
            if (str.length() == 7) {
                int i11 = Integer.parseInt(str.substring(1), 16);
                return Color.rgb((i11 >>> 16) & 255, (i11 >>> 8) & 255, i11 & 255);
            }
        }
        throw new NumberFormatException("malformed color " + str);
    }

    public static int parseInt(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i10;
        }
    }

    public static long parseLong(String str, long j6) {
        if (TextUtils.isEmpty(str)) {
            return j6;
        }
        try {
            return Long.parseLong(str);
        } catch (Exception unused) {
            return j6;
        }
    }
}
