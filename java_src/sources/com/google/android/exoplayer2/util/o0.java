package com.google.android.exoplayer2.util;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.core.os.EnvironmentCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import androidx.renderscript.ScriptIntrinsicBLAS;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.d3;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.model.User;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.http.ApiService;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes9.dex */
public final class o0 {
    private static final int[] CRC32_BYTES_MSBF;
    private static final int[] CRC8_BYTES_MSBF;
    public static final String DEVICE;
    public static final String DEVICE_DEBUG_INFO;
    public static final byte[] EMPTY_BYTE_ARRAY;
    private static final Pattern ESCAPED_CHARACTER_PATTERN;
    private static final String ISM_DASH_FORMAT_EXTENSION = "format=mpd-time-csf";
    private static final String ISM_HLS_FORMAT_EXTENSION = "format=m3u8-aapl";
    private static final Pattern ISM_PATH_PATTERN;
    public static final String MANUFACTURER;
    public static final String MODEL;
    public static final int SDK_INT;
    private static final String TAG = "Util";
    private static final Pattern XS_DATE_TIME_PATTERN;
    private static final Pattern XS_DURATION_PATTERN;
    private static final String[] additionalIsoLanguageReplacements;
    private static final String[] isoLegacyTagReplacements;

    @Nullable
    private static HashMap<String, String> languageTagReplacementMap;

    public static <T> T[] A0(T[] tArr, int i10) {
        a.a(i10 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i10);
    }

    public static <T> T[] B0(T[] tArr, int i10, int i11) {
        a.a(i10 >= 0);
        a.a(i11 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i10, i11);
    }

    @SuppressLint({"InlinedApi"})
    public static int D(int i10) {
        if (i10 == 12) {
            return 743676;
        }
        switch (i10) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return ComposerKt.providerMapsKey;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                return 6396;
            default:
                return 0;
        }
    }

    public static String[] H0(String str, String str2) {
        return str.split(str2, -1);
    }

    public static String[] I0(String str, String str2) {
        return str.split(str2, 2);
    }

    public static long K0(long j6, long j10, long j11) {
        long j12 = j6 - j10;
        return ((j6 ^ j12) & (j10 ^ j6)) < 0 ? j11 : j12;
    }

    public static long N0(int i10) {
        return ((long) i10) & 4294967295L;
    }

    public static int P(int i10) {
        if (i10 == 2 || i10 == 4) {
            return 6005;
        }
        if (i10 == 10) {
            return 6004;
        }
        if (i10 == 7) {
            return 6005;
        }
        if (i10 == 8) {
            return 6003;
        }
        switch (i10) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i10) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    public static int Q(@Nullable String str) {
        String[] strArrH0;
        int length;
        if (str == null || (length = (strArrH0 = H0(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = strArrH0[length - 1];
        boolean z6 = length >= 3 && "neg".equals(strArrH0[length - 2]);
        try {
            int i10 = Integer.parseInt((String) a.e(str2));
            return z6 ? -i10 : i10;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static int W(int i10) {
        if (i10 == 8) {
            return 3;
        }
        if (i10 == 16) {
            return 2;
        }
        if (i10 != 24) {
            return i10 != 32 ? 0 : 805306368;
        }
        return 536870912;
    }

    public static int Y(int i10, int i11) {
        if (i10 != 2) {
            if (i10 == 3) {
                return i11;
            }
            if (i10 != 4) {
                if (i10 != 268435456) {
                    if (i10 == 536870912) {
                        return i11 * 3;
                    }
                    if (i10 != 805306368) {
                        throw new IllegalArgumentException();
                    }
                }
            }
            return i11 * 4;
        }
        return i11 * 2;
    }

    public static int a0(int i10) {
        if (i10 == 13) {
            return 1;
        }
        switch (i10) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            default:
                return 3;
        }
    }

    public static long b(long j6, long j10, long j11) {
        long j12 = j6 + j10;
        return ((j6 ^ j12) & (j10 ^ j12)) < 0 ? j11 : j12;
    }

    public static <T> T j(@Nullable T t5) {
        return t5;
    }

    public static <T> T[] k(T[] tArr) {
        return tArr;
    }

    public static int l(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    public static int n(long j6, long j10) {
        if (j6 < j10) {
            return -1;
        }
        return j6 == j10 ? 0 : 1;
    }

    public static boolean n0(int i10) {
        return i10 == 536870912 || i10 == 805306368 || i10 == 4;
    }

    public static boolean o0(int i10) {
        return i10 == 3 || i10 == 2 || i10 == 268435456 || i10 == 536870912 || i10 == 805306368 || i10 == 4;
    }

    public static boolean p0(int i10) {
        return i10 == 10 || i10 == 13;
    }

    public static int t0(int[] iArr, int i10) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (iArr[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public static Handler u() {
        return v(null);
    }

    private static String u0(String str) {
        int i10 = 0;
        while (true) {
            String[] strArr = isoLegacyTagReplacements;
            if (i10 >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i10])) {
                return strArr[i10 + 1] + str.substring(strArr[i10].length());
            }
            i10 += 2;
        }
    }

    public static Handler w() {
        return x(null);
    }

    public static long w0(long j6) {
        return (j6 == -9223372036854775807L || j6 == Long.MIN_VALUE) ? j6 : j6 * 1000;
    }

    public static <T> T[] z0(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        SDK_INT = i10;
        String str = Build.DEVICE;
        DEVICE = str;
        String str2 = Build.MANUFACTURER;
        MANUFACTURER = str2;
        String str3 = Build.MODEL;
        MODEL = str3;
        DEVICE_DEBUG_INFO = str + ", " + str3 + ", " + str2 + ", " + i10;
        EMPTY_BYTE_ARRAY = new byte[0];
        XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        ESCAPED_CHARACTER_PATTERN = Pattern.compile("%([A-Fa-f0-9]{2})");
        ISM_PATH_PATTERN = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        additionalIsoLanguageReplacements = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        isoLegacyTagReplacements = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        CRC32_BYTES_MSBF = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        CRC8_BYTES_MSBF = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 242, 245, 216, 223, 214, 209, 196, 195, 202, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 144, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 158, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 140, WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, ComposerKt.referenceKey, 219, 220, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 129, 134, 147, TarConstants.CHKSUM_OFFSET, Constants.ERR_MODULE_NOT_FOUND, Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, ScriptIntrinsicBLAS.RIGHT, 135, 128, 149, 146, 155, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, TextFieldImplKt.AnimationDuration, 145, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 159, 138, ScriptIntrinsicBLAS.LEFT, 132, 131, 222, 217, 208, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN, 194, 197, ComposerKt.providerMapsKey, 203, ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 225, 232, 239, 250, User.USER_ROLE_NEWS_FEED, 244, 243};
    }

    public static String A(byte[] bArr) {
        return new String(bArr, com.google.common.base.e.UTF_8);
    }

    public static String B(byte[] bArr, int i10, int i11) {
        return new String(bArr, i10, i11, com.google.common.base.e.UTF_8);
    }

    @RequiresApi
    public static int C(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    @Nullable
    public static Intent E0(Context context, @Nullable BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return SDK_INT < 33 ? context.registerReceiver(broadcastReceiver, intentFilter) : context.registerReceiver(broadcastReceiver, intentFilter, 4);
    }

    public static long F0(long j6, long j10, long j11) {
        if (j11 >= j10 && j11 % j10 == 0) {
            return j6 / (j11 / j10);
        }
        if (j11 < j10 && j10 % j11 == 0) {
            return j6 * (j10 / j11);
        }
        return (long) (j6 * (j10 / j11));
    }

    public static String G(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < objArr.length; i10++) {
            sb.append(objArr[i10].getClass().getSimpleName());
            if (i10 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static void G0(long[] jArr, long j6, long j10) {
        int i10 = 0;
        if (j10 >= j6 && j10 % j6 == 0) {
            long j11 = j10 / j6;
            while (i10 < jArr.length) {
                jArr[i10] = jArr[i10] / j11;
                i10++;
            }
            return;
        }
        if (j10 >= j6 || j6 % j10 != 0) {
            double d = j6 / j10;
            while (i10 < jArr.length) {
                jArr[i10] = (long) (jArr[i10] * d);
                i10++;
            }
            return;
        }
        long j12 = j6 / j10;
        while (i10 < jArr.length) {
            jArr[i10] = jArr[i10] * j12;
            i10++;
        }
    }

    public static String H(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return com.google.common.base.c.f(networkCountryIso);
            }
        }
        return com.google.common.base.c.f(Locale.getDefault().getCountry());
    }

    public static Point I(Context context) {
        DisplayManager displayManager;
        Display display = (SDK_INT < 17 || (displayManager = (DisplayManager) context.getSystemService("display")) == null) ? null : displayManager.getDisplay(0);
        if (display == null) {
            display = ((WindowManager) a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return J(context, display);
    }

    public static Locale L() {
        return SDK_INT >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
    }

    public static byte[] L0(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static String R(int i10) {
        if (i10 == 0) {
            return "NO";
        }
        if (i10 == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i10 == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i10 == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i10 == 4) {
            return "YES";
        }
        throw new IllegalStateException();
    }

    public static String S(Locale locale) {
        return SDK_INT >= 21 ? T(locale) : locale.toString();
    }

    public static long U(long j6, float f) {
        return f == 1.0f ? j6 : Math.round(j6 * ((double) f));
    }

    public static a2 X(int i10, int i11, int i12) {
        return new a2.b().e0("audio/raw").H(i11).f0(i12).Y(i10).E();
    }

    public static long Z(long j6, float f) {
        return f == 1.0f ? j6 : Math.round(j6 / ((double) f));
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Nullable
    private static String f0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            t.d(TAG, "Failed to read system property " + str, e);
            return null;
        }
    }

    public static byte[] h0(String str) {
        return str.getBytes(com.google.common.base.e.UTF_8);
    }

    public static int k0(Uri uri, @Nullable String str) {
        if (str == null) {
            return i0(uri);
        }
        switch (str) {
            case "application/x-mpegURL":
                return 2;
            case "application/vnd.ms-sstr+xml":
                return 1;
            case "application/dash+xml":
                return 0;
            case "application/x-rtsp":
                return 3;
            default:
                return 4;
        }
    }

    public static void m(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean m0(Context context) {
        return SDK_INT >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public static int r(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = CRC32_BYTES_MSBF[((i12 >>> 24) ^ (bArr[i10] & 255)) & 255] ^ (i12 << 8);
            i10++;
        }
        return i12;
    }

    public static int s(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = CRC8_BYTES_MSBF[i12 ^ (bArr[i10] & 255)];
            i10++;
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread s0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static Handler t(Looper looper, @Nullable Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static <T> void v0(List<T> list, int i10, int i11, int i12) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i13 = (i11 - i10) - 1; i13 >= 0; i13--) {
            arrayDeque.addFirst(list.remove(i10 + i13));
        }
        list.addAll(Math.min(i12, list.size()), arrayDeque);
    }

    public static ExecutorService x0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer2.util.n0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return o0.s0(str, runnable);
            }
        });
    }

    public static String y0(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals("und")) {
            str = strReplace;
        }
        String strE = com.google.common.base.c.e(str);
        String str2 = I0(strE, "-")[0];
        if (languageTagReplacementMap == null) {
            languageTagReplacementMap = y();
        }
        String str3 = languageTagReplacementMap.get(str2);
        if (str3 != null) {
            strE = str3 + strE.substring(str2.length());
            str2 = str3;
        }
        return ("no".equals(str2) || CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT.equals(str2) || "zh".equals(str2)) ? u0(strE) : strE;
    }

    public static String z(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static boolean C0(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    public static boolean D0(Parcel parcel) {
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    public static d3.b E(d3 d3Var, d3.b bVar) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean zIsPlayingAd = d3Var.isPlayingAd();
        boolean zK = d3Var.k();
        boolean zW = d3Var.w();
        boolean zF = d3Var.f();
        boolean zN = d3Var.n();
        boolean zQ = d3Var.q();
        boolean zU = d3Var.getCurrentTimeline().u();
        d3.b.a aVarD = new d3.b.a().b(bVar).d(4, !zIsPlayingAd);
        boolean z15 = false;
        if (zK && !zIsPlayingAd) {
            z6 = true;
        } else {
            z6 = false;
        }
        d3.b.a aVarD2 = aVarD.d(5, z6);
        if (zW && !zIsPlayingAd) {
            z10 = true;
        } else {
            z10 = false;
        }
        d3.b.a aVarD3 = aVarD2.d(6, z10);
        if (!zU && ((zW || !zN || zK) && !zIsPlayingAd)) {
            z11 = true;
        } else {
            z11 = false;
        }
        d3.b.a aVarD4 = aVarD3.d(7, z11);
        if (zF && !zIsPlayingAd) {
            z12 = true;
        } else {
            z12 = false;
        }
        d3.b.a aVarD5 = aVarD4.d(8, z12);
        if (!zU && ((zF || (zN && zQ)) && !zIsPlayingAd)) {
            z13 = true;
        } else {
            z13 = false;
        }
        d3.b.a aVarD6 = aVarD5.d(9, z13).d(10, !zIsPlayingAd);
        if (zK && !zIsPlayingAd) {
            z14 = true;
        } else {
            z14 = false;
        }
        d3.b.a aVarD7 = aVarD6.d(11, z14);
        if (zK && !zIsPlayingAd) {
            z15 = true;
        }
        return aVarD7.d(12, z15).e();
    }

    public static int F(ByteBuffer byteBuffer, int i10) {
        int i11 = byteBuffer.getInt(i10);
        if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
            return Integer.reverseBytes(i11);
        }
        return i11;
    }

    public static Point J(Context context, Display display) {
        String strF0;
        if (display.getDisplayId() == 0 && r0(context)) {
            if (SDK_INT < 28) {
                strF0 = f0("sys.display-size");
            } else {
                strF0 = f0("vendor.display-size");
            }
            if (!TextUtils.isEmpty(strF0)) {
                try {
                    String[] strArrH0 = H0(strF0.trim(), "x");
                    if (strArrH0.length == 2) {
                        int i10 = Integer.parseInt(strArrH0[0]);
                        int i11 = Integer.parseInt(strArrH0[1]);
                        if (i10 > 0 && i11 > 0) {
                            return new Point(i10, i11);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                t.c(TAG, "Invalid display size: " + strF0);
            }
            if ("Sony".equals(MANUFACTURER) && MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        int i12 = SDK_INT;
        if (i12 >= 23) {
            O(display, point);
        } else if (i12 >= 17) {
            N(display, point);
        } else {
            M(display, point);
        }
        return point;
    }

    public static String[] J0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        return H0(str.trim(), "(\\s*,\\s*)");
    }

    public static Looper K() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            return Looper.getMainLooper();
        }
        return looperMyLooper;
    }

    private static void M(Display display, Point point) {
        display.getSize(point);
    }

    public static long M0(int i10, int i11) {
        return N0(i11) | (N0(i10) << 32);
    }

    @RequiresApi
    private static void N(Display display, Point point) {
        display.getRealSize(point);
    }

    @RequiresApi
    private static void O(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static CharSequence O0(CharSequence charSequence, int i10) {
        if (charSequence.length() > i10) {
            return charSequence.subSequence(0, i10);
        }
        return charSequence;
    }

    public static void Q0(Parcel parcel, boolean z6) {
        parcel.writeInt(z6 ? 1 : 0);
    }

    @RequiresApi
    private static String T(Locale locale) {
        return locale.toLanguageTag();
    }

    public static String[] c0() {
        String[] strArrD0 = d0();
        for (int i10 = 0; i10 < strArrD0.length; i10++) {
            strArrD0[i10] = y0(strArrD0[i10]);
        }
        return strArrD0;
    }

    public static <T extends Comparable<? super T>> int d(List<? extends Comparable<? super T>> list, T t5, boolean z6, boolean z10) {
        int i10;
        int i11;
        int iBinarySearch = Collections.binarySearch(list, t5);
        if (iBinarySearch < 0) {
            i11 = ~iBinarySearch;
        } else {
            int size = list.size();
            while (true) {
                i10 = iBinarySearch + 1;
                if (i10 >= size || list.get(i10).compareTo(t5) != 0) {
                    break;
                }
                iBinarySearch = i10;
            }
            if (z6) {
                i11 = iBinarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z10) {
            return Math.min(list.size() - 1, i11);
        }
        return i11;
    }

    private static String[] d0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        if (SDK_INT >= 24) {
            return e0(configuration);
        }
        return new String[]{S(configuration.locale)};
    }

    public static int e(long[] jArr, long j6, boolean z6, boolean z10) {
        int i10;
        int i11;
        int iBinarySearch = Arrays.binarySearch(jArr, j6);
        if (iBinarySearch < 0) {
            i11 = ~iBinarySearch;
        } else {
            while (true) {
                i10 = iBinarySearch + 1;
                if (i10 >= jArr.length || jArr[i10] != j6) {
                    break;
                }
                iBinarySearch = i10;
            }
            if (z6) {
                i11 = iBinarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z10) {
            return Math.min(jArr.length - 1, i11);
        }
        return i11;
    }

    @RequiresApi
    private static String[] e0(Configuration configuration) {
        return H0(configuration.getLocales().toLanguageTags(), ",");
    }

    public static int f(u uVar, long j6, boolean z6, boolean z10) {
        int i10;
        int iC = uVar.c() - 1;
        int i11 = 0;
        while (i11 <= iC) {
            int i12 = (i11 + iC) >>> 1;
            if (uVar.b(i12) < j6) {
                i11 = i12 + 1;
            } else {
                iC = i12 - 1;
            }
        }
        if (z6 && (i10 = iC + 1) < uVar.c() && uVar.b(i10) == j6) {
            return i10;
        }
        if (z10 && iC == -1) {
            return 0;
        }
        return iC;
    }

    public static <T extends Comparable<? super T>> int g(List<? extends Comparable<? super T>> list, T t5, boolean z6, boolean z10) {
        int i10;
        int i11;
        int iBinarySearch = Collections.binarySearch(list, t5);
        if (iBinarySearch < 0) {
            i11 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i10 = iBinarySearch - 1;
                if (i10 < 0 || list.get(i10).compareTo(t5) != 0) {
                    break;
                }
                iBinarySearch = i10;
            }
            if (z6) {
                i11 = iBinarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z10) {
            return Math.max(0, i11);
        }
        return i11;
    }

    public static String g0(int i10) {
        switch (i10) {
            case -2:
                return "none";
            case -1:
                return EnvironmentCompat.MEDIA_UNKNOWN;
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return "metadata";
            case 6:
                return "camera motion";
            default:
                if (i10 >= 10000) {
                    return "custom (" + i10 + ")";
                }
                return "?";
        }
    }

    public static int h(int[] iArr, int i10, boolean z6, boolean z10) {
        int i11;
        int i12;
        int iBinarySearch = Arrays.binarySearch(iArr, i10);
        if (iBinarySearch < 0) {
            i12 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i11 = iBinarySearch - 1;
                if (i11 < 0 || iArr[i11] != i10) {
                    break;
                }
                iBinarySearch = i11;
            }
            if (z6) {
                i12 = iBinarySearch;
            } else {
                i12 = i11;
            }
        }
        if (z10) {
            return Math.max(0, i12);
        }
        return i12;
    }

    public static int i(long[] jArr, long j6, boolean z6, boolean z10) {
        int i10;
        int i11;
        int iBinarySearch = Arrays.binarySearch(jArr, j6);
        if (iBinarySearch < 0) {
            i11 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i10 = iBinarySearch - 1;
                if (i10 < 0 || jArr[i10] != j6) {
                    break;
                }
                iBinarySearch = i10;
            }
            if (z6) {
                i11 = iBinarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z10) {
            return Math.max(0, i11);
        }
        return i11;
    }

    public static int i0(Uri uri) {
        int iJ0;
        String scheme = uri.getScheme();
        if (scheme != null && com.google.common.base.c.a("rtsp", scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0 && (iJ0 = j0(lastPathSegment.substring(iLastIndexOf + 1))) != 4) {
            return iJ0;
        }
        Matcher matcher = ISM_PATH_PATTERN.matcher((CharSequence) a.e(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            if (strGroup.contains(ISM_DASH_FORMAT_EXTENSION)) {
                return 0;
            }
            if (strGroup.contains(ISM_HLS_FORMAT_EXTENSION)) {
                return 2;
            }
        }
        return 1;
    }

    public static int j0(String str) {
        String strE = com.google.common.base.c.e(str);
        strE.hashCode();
        switch (strE) {
            case "ism":
            case "isml":
                return 1;
            case "mpd":
                return 0;
            case "m3u8":
                return 2;
            default:
                return 4;
        }
    }

    public static boolean l0(c0 c0Var, c0 c0Var2, @Nullable Inflater inflater) {
        if (c0Var.a() <= 0) {
            return false;
        }
        if (c0Var2.b() < c0Var.a()) {
            c0Var2.c(c0Var.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(c0Var.d(), c0Var.e(), c0Var.a());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(c0Var2.d(), iInflate, c0Var2.b() - iInflate);
                if (inflater.finished()) {
                    c0Var2.O(iInflate);
                    inflater.reset();
                    return true;
                }
                if (!inflater.needsDictionary() && !inflater.needsInput()) {
                    if (iInflate == c0Var2.b()) {
                        c0Var2.c(c0Var2.b() * 2);
                    }
                }
                inflater.reset();
                return false;
            } catch (DataFormatException unused) {
                inflater.reset();
                return false;
            } catch (Throwable th) {
                inflater.reset();
                throw th;
            }
        }
    }

    public static float o(float f, float f6, float f7) {
        return Math.max(f6, Math.min(f, f7));
    }

    public static int p(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i10, i12));
    }

    public static long q(long j6, long j10, long j11) {
        return Math.max(j10, Math.min(j6, j11));
    }

    public static boolean q0(Uri uri) {
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && !"file".equals(scheme)) {
            return false;
        }
        return true;
    }

    public static boolean r0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return true;
        }
        return false;
    }

    public static Handler v(@Nullable Handler.Callback callback) {
        return t((Looper) a.i(Looper.myLooper()), callback);
    }

    public static Handler x(@Nullable Handler.Callback callback) {
        return t(K(), callback);
    }

    private static HashMap<String, String> y() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> map = new HashMap<>(iSOLanguages.length + additionalIsoLanguageReplacements.length);
        int i10 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    map.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = additionalIsoLanguageReplacements;
            if (i10 < strArr.length) {
                map.put(strArr[i10], strArr[i10 + 1]);
                i10 += 2;
            } else {
                return map;
            }
        }
    }

    public static long P0(long j6) {
        if (j6 != -9223372036854775807L && j6 != Long.MIN_VALUE) {
            return j6 / 1000;
        }
        return j6;
    }

    public static long V(long j6) {
        if (j6 == -9223372036854775807L) {
            return System.currentTimeMillis();
        }
        return j6 + SystemClock.elapsedRealtime();
    }

    public static String b0(StringBuilder sb, Formatter formatter, long j6) {
        String str;
        if (j6 == -9223372036854775807L) {
            j6 = 0;
        }
        if (j6 < 0) {
            str = "-";
        } else {
            str = "";
        }
        long jAbs = (Math.abs(j6) + 500) / 1000;
        long j10 = jAbs % 60;
        long j11 = (jAbs / 60) % 60;
        long j12 = jAbs / 3600;
        sb.setLength(0);
        if (j12 > 0) {
            return formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j12), Long.valueOf(j11), Long.valueOf(j10)).toString();
        }
        return formatter.format("%s%02d:%02d", str, Long.valueOf(j11), Long.valueOf(j10)).toString();
    }
}
