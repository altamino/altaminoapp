package androidx.media3.common.util;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.core.os.EnvironmentCompat;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import androidx.renderscript.ScriptIntrinsicBLAS;
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
import java.math.BigDecimal;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes2.dex */
public final class Util {
    private static final int[] CRC32_BYTES_MSBF;
    private static final int[] CRC8_BYTES_MSBF;

    @UnstableApi
    public static final String DEVICE;

    @UnstableApi
    public static final String DEVICE_DEBUG_INFO;

    @UnstableApi
    public static final byte[] EMPTY_BYTE_ARRAY;
    private static final Pattern ESCAPED_CHARACTER_PATTERN;
    private static final String ISM_DASH_FORMAT_EXTENSION = "format=mpd-time-csf";
    private static final String ISM_HLS_FORMAT_EXTENSION = "format=m3u8-aapl";
    private static final Pattern ISM_PATH_PATTERN;

    @UnstableApi
    public static final String MANUFACTURER;

    @UnstableApi
    public static final String MODEL;

    @UnstableApi
    public static final int SDK_INT;
    private static final String TAG = "Util";
    private static final Pattern XS_DATE_TIME_PATTERN;
    private static final Pattern XS_DURATION_PATTERN;
    private static final String[] additionalIsoLanguageReplacements;
    private static final String[] isoLegacyTagReplacements;

    @Nullable
    private static HashMap<String, String> languageTagReplacementMap;

    @UnstableApi
    public static long B(long j6, int i10) {
        return m(j6 * ((long) i10), 1000000L);
    }

    @UnstableApi
    public static boolean B0(int i10) {
        return i10 == 536870912 || i10 == 805306368 || i10 == 4;
    }

    @UnstableApi
    public static boolean C0(int i10) {
        return i10 == 3 || i10 == 2 || i10 == 268435456 || i10 == 536870912 || i10 == 805306368 || i10 == 4;
    }

    @UnstableApi
    public static boolean D0(int i10) {
        return i10 == 10 || i10 == 13;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x0015 A[RETURN] */
    @SuppressLint({"InlinedApi"})
    @UnstableApi
    public static int H(int i10) {
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
            case 9:
            case 11:
            default:
                return 0;
            case 10:
                if (SDK_INT >= 32) {
                    return 737532;
                }
                return 6396;
            case 12:
                return 743676;
        }
    }

    @UnstableApi
    public static int H0(int[] iArr, int i10) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (iArr[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    private static String I0(String str) {
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

    @UnstableApi
    public static long K0(long j6) {
        return (j6 == -9223372036854775807L || j6 == Long.MIN_VALUE) ? j6 : j6 * 1000;
    }

    @UnstableApi
    public static <T> T[] N0(T[] tArr, T t5) {
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length + 1);
        objArrCopyOf[tArr.length] = t5;
        return (T[]) k(objArrCopyOf);
    }

    @UnstableApi
    public static <T> T[] O0(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    @UnstableApi
    public static <T> T[] P0(T[] tArr, int i10) {
        Assertions.a(i10 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i10);
    }

    @UnstableApi
    public static <T> T[] Q0(T[] tArr, int i10, int i11) {
        Assertions.a(i10 >= 0);
        Assertions.a(i11 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i10, i11);
    }

    @UnstableApi
    public static int X(int i10) {
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

    @UnstableApi
    public static int Y(@Nullable String str) {
        String[] strArrD1;
        int length;
        if (str == null || (length = (strArrD1 = d1(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = strArrD1[length - 1];
        boolean z6 = length >= 3 && "neg".equals(strArrD1[length - 2]);
        try {
            int i10 = Integer.parseInt((String) Assertions.e(str2));
            return z6 ? -i10 : i10;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static boolean a1(@Nullable Player player) {
        return player == null || !player.getPlayWhenReady() || player.getPlaybackState() == 1 || player.getPlaybackState() == 4;
    }

    @UnstableApi
    public static long b(long j6, long j10, long j11) {
        long j12 = j6 + j10;
        return ((j6 ^ j12) & (j10 ^ j12)) < 0 ? j11 : j12;
    }

    private static <T extends Throwable> void c1(Throwable th) throws Throwable {
        throw th;
    }

    @UnstableApi
    public static String[] d1(String str, String str2) {
        return str.split(str2, -1);
    }

    @UnstableApi
    public static String[] e1(String str, String str2) {
        return str.split(str2, 2);
    }

    @UnstableApi
    public static int f0(int i10) {
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

    @UnstableApi
    public static int h0(int i10, int i11) {
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

    @UnstableApi
    public static long h1(long j6, long j10, long j11) {
        long j12 = j6 - j10;
        return ((j6 ^ j12) & (j10 ^ j6)) < 0 ? j11 : j12;
    }

    @UnstableApi
    public static <T> T j(@Nullable T t5) {
        return t5;
    }

    @UnstableApi
    public static int j0(int i10) {
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

    @UnstableApi
    public static <T> T[] k(T[] tArr) {
        return tArr;
    }

    @UnstableApi
    public static float k1(byte[] bArr) {
        Assertions.a(bArr.length == 4);
        return Float.intBitsToFloat((bArr[3] & 255) | (bArr[0] << com.google.common.base.c.CAN) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8));
    }

    @UnstableApi
    public static int l(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    @UnstableApi
    public static long m(long j6, long j10) {
        return ((j6 + j10) - 1) / j10;
    }

    @UnstableApi
    public static int m1(byte[] bArr) {
        Assertions.a(bArr.length == 4);
        return bArr[3] | (bArr[0] << com.google.common.base.c.CAN) | (bArr[1] << com.google.common.base.c.DLE) | (bArr[2] << 8);
    }

    @UnstableApi
    public static int o(long j6, long j10) {
        if (j6 < j10) {
            return -1;
        }
        return j6 == j10 ? 0 : 1;
    }

    @UnstableApi
    public static long o1(int i10) {
        return ((long) i10) & 4294967295L;
    }

    @UnstableApi
    public static boolean s(Object[] objArr, @Nullable Object obj) {
        for (Object obj2 : objArr) {
            if (c(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002a  */
    /* JADX WARN: Code duplicated, block: B:19:0x002e  */
    public static boolean s0(@Nullable Player player) {
        boolean z6 = false;
        if (player == null) {
            return false;
        }
        int playbackState = player.getPlaybackState();
        if (playbackState != 1 || !player.g(2)) {
            if (playbackState == 4 && player.g(4)) {
                player.seekToDefaultPosition();
            }
            if (player.g(1)) {
                return z6;
            }
            player.play();
            return true;
        }
        player.prepare();
        z6 = true;
        if (player.g(1)) {
            return z6;
        }
        player.play();
        return true;
    }

    @UnstableApi
    public static Handler w() {
        return x(null);
    }

    @UnstableApi
    public static Handler y() {
        return z(null);
    }

    @RequiresApi
    private static final class Api21 {
        private Api21() {
        }

        @DoNotInline
        public static Drawable a(Context context, Resources resources, @DrawableRes int i10) {
            return resources.getDrawable(i10, context.getTheme());
        }
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

    @UnstableApi
    public static boolean A0(Context context) {
        return SDK_INT >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    @UnstableApi
    public static String D(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    @UnstableApi
    public static String E(byte[] bArr) {
        return new String(bArr, com.google.common.base.e.UTF_8);
    }

    @UnstableApi
    public static String F(byte[] bArr, int i10, int i11) {
        return new String(bArr, i10, i11, com.google.common.base.e.UTF_8);
    }

    @RequiresApi
    @UnstableApi
    public static int G(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread G0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    @UnstableApi
    public static <T> void J0(List<T> list, int i10, int i11, int i12) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i13 = (i11 - i10) - 1; i13 >= 0; i13--) {
            arrayDeque.addFirst(list.remove(i10 + i13));
        }
        list.addAll(Math.min(i12, list.size()), arrayDeque);
    }

    @UnstableApi
    public static ExecutorService L0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: androidx.media3.common.util.n
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Util.G0(str, runnable);
            }
        });
    }

    @UnstableApi
    public static String M0(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals("und")) {
            str = strReplace;
        }
        String strE = com.google.common.base.c.e(str);
        String str2 = e1(strE, "-")[0];
        if (languageTagReplacementMap == null) {
            languageTagReplacementMap = A();
        }
        String str3 = languageTagReplacementMap.get(str2);
        if (str3 != null) {
            strE = str3 + strE.substring(str2.length());
            str2 = str3;
        }
        return ("no".equals(str2) || CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT.equals(str2) || "zh".equals(str2)) ? I0(strE) : strE;
    }

    @UnstableApi
    public static String N(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < objArr.length; i10++) {
            sb.append(objArr[i10].getClass().getSimpleName());
            if (i10 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    @UnstableApi
    public static String O(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return com.google.common.base.c.f(networkCountryIso);
            }
        }
        return com.google.common.base.c.f(Locale.getDefault().getCountry());
    }

    @UnstableApi
    public static Point P(Context context) {
        DisplayManager displayManager;
        Display display = (SDK_INT < 17 || (displayManager = (DisplayManager) context.getSystemService("display")) == null) ? null : displayManager.getDisplay(0);
        if (display == null) {
            display = ((WindowManager) Assertions.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return Q(context, display);
    }

    @UnstableApi
    public static long R0(String str) throws ParserException {
        Matcher matcher = XS_DATE_TIME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.a("Invalid date/time format: " + str, null);
        }
        int i10 = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            i10 = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
            if ("-".equals(matcher.group(11))) {
                i10 *= -1;
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i10 != 0 ? timeInMillis - (((long) i10) * 60000) : timeInMillis;
    }

    @UnstableApi
    public static Locale S() {
        return SDK_INT >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
    }

    @UnstableApi
    public static long S0(String str) {
        Matcher matcher = XS_DURATION_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
        }
        boolean zIsEmpty = true ^ TextUtils.isEmpty(matcher.group(1));
        String strGroup = matcher.group(3);
        double d = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        double d2 = strGroup != null ? Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
        String strGroup2 = matcher.group(5);
        double d6 = d2 + (strGroup2 != null ? Double.parseDouble(strGroup2) * 2629739.0d : 0.0d);
        String strGroup3 = matcher.group(7);
        double d7 = d6 + (strGroup3 != null ? Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
        String strGroup4 = matcher.group(10);
        double d10 = d7 + (strGroup4 != null ? Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
        String strGroup5 = matcher.group(12);
        double d11 = d10 + (strGroup5 != null ? Double.parseDouble(strGroup5) * 60.0d : 0.0d);
        String strGroup6 = matcher.group(14);
        if (strGroup6 != null) {
            d = Double.parseDouble(strGroup6);
        }
        long j6 = (long) ((d11 + d) * 1000.0d);
        return zIsEmpty ? -j6 : j6;
    }

    @UnstableApi
    public static <T> void V0(List<T> list, int i10, int i11) {
        if (i10 < 0 || i11 > list.size() || i10 > i11) {
            throw new IllegalArgumentException();
        }
        if (i10 != i11) {
            list.subList(i10, i11).clear();
        }
    }

    @UnstableApi
    public static Drawable W(Context context, Resources resources, @DrawableRes int i10) {
        return SDK_INT >= 21 ? Api21.a(context, resources, i10) : resources.getDrawable(i10);
    }

    @UnstableApi
    public static long X0(long j6, long j10, long j11) {
        if (j11 >= j10 && j11 % j10 == 0) {
            return j6 / (j11 / j10);
        }
        if (j11 < j10 && j10 % j11 == 0) {
            return j6 * (j10 / j11);
        }
        return (long) (j6 * (j10 / j11));
    }

    @UnstableApi
    public static String Z(int i10) {
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

    @UnstableApi
    public static void Z0(long[] jArr, long j6, long j10) {
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

    @UnstableApi
    public static String a0(Locale locale) {
        return SDK_INT >= 21 ? b0(locale) : locale.toString();
    }

    @UnstableApi
    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @UnstableApi
    public static int c0(Context context, String str, boolean z6) {
        return (SDK_INT < 29 || context.getApplicationContext().getApplicationInfo().targetSdkVersion < 29) ? 1 : 5;
    }

    @UnstableApi
    public static long d0(long j6, float f) {
        return f == 1.0f ? j6 : Math.round(j6 * ((double) f));
    }

    @UnstableApi
    public static Format g0(int i10, int i11, int i12) {
        return new Format.Builder().g0("audio/raw").J(i11).h0(i12).a0(i10).G();
    }

    @Nullable
    @UnstableApi
    public static ComponentName g1(Context context, Intent intent) {
        return SDK_INT >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    @UnstableApi
    public static long i0(long j6, float f) {
        return f == 1.0f ? j6 : Math.round(j6 / ((double) f));
    }

    @UnstableApi
    public static boolean i1(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    @UnstableApi
    public static byte[] j1(InputStream inputStream) throws IOException {
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

    @UnstableApi
    public static String l1(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            sb.append(Character.forDigit((bArr[i10] >> 4) & 15, 16));
            sb.append(Character.forDigit(bArr[i10] & com.google.common.base.c.SI, 16));
        }
        return sb.toString();
    }

    @UnstableApi
    public static void n(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @Nullable
    private static String o0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            Log.d(TAG, "Failed to read system property " + str, e);
            return null;
        }
    }

    @UnstableApi
    public static byte[] q0(String str) {
        return str.getBytes(com.google.common.base.e.UTF_8);
    }

    public static boolean r0(@Nullable Player player) {
        if (player == null || !player.g(1)) {
            return false;
        }
        player.pause();
        return true;
    }

    @UnstableApi
    public static int t(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = CRC32_BYTES_MSBF[((i12 >>> 24) ^ (bArr[i10] & 255)) & 255] ^ (i12 << 8);
            i10++;
        }
        return i12;
    }

    @UnstableApi
    public static int u(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = CRC8_BYTES_MSBF[i12 ^ (bArr[i10] & 255)];
            i10++;
        }
        return i12;
    }

    @UnstableApi
    public static Handler v(Looper looper, @Nullable Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    @UnstableApi
    @Deprecated
    public static int v0(String str) {
        return u0(Uri.parse("file:///" + str));
    }

    public static int x0(Uri uri, @Nullable String str) {
        if (str == null) {
            return u0(uri);
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

    @UnstableApi
    public static String z0(int i10) {
        return Integer.toString(i10, 36);
    }

    private Util() {
    }

    private static HashMap<String, String> A() {
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

    @UnstableApi
    public static Uri C(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return uri;
        }
        Matcher matcher = ISM_PATH_PATTERN.matcher(path);
        if (matcher.matches() && matcher.group(1) == null) {
            return Uri.withAppendedPath(uri, "Manifest");
        }
        return uri;
    }

    @UnstableApi
    public static boolean E0(Uri uri) {
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && !"file".equals(scheme)) {
            return false;
        }
        return true;
    }

    @UnstableApi
    public static boolean F0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return true;
        }
        return false;
    }

    @UnstableApi
    public static Player.Commands I(Player player, Player.Commands commands) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean zIsPlayingAd = player.isPlayingAd();
        boolean zK = player.k();
        boolean zW = player.w();
        boolean zF = player.f();
        boolean zN = player.n();
        boolean zQ = player.q();
        boolean zU = player.getCurrentTimeline().u();
        Player.Commands.Builder builderD = new Player.Commands.Builder().b(commands).d(4, !zIsPlayingAd);
        boolean z15 = false;
        if (zK && !zIsPlayingAd) {
            z6 = true;
        } else {
            z6 = false;
        }
        Player.Commands.Builder builderD2 = builderD.d(5, z6);
        if (zW && !zIsPlayingAd) {
            z10 = true;
        } else {
            z10 = false;
        }
        Player.Commands.Builder builderD3 = builderD2.d(6, z10);
        if (!zU && ((zW || !zN || zK) && !zIsPlayingAd)) {
            z11 = true;
        } else {
            z11 = false;
        }
        Player.Commands.Builder builderD4 = builderD3.d(7, z11);
        if (zF && !zIsPlayingAd) {
            z12 = true;
        } else {
            z12 = false;
        }
        Player.Commands.Builder builderD5 = builderD4.d(8, z12);
        if (!zU && ((zF || (zN && zQ)) && !zIsPlayingAd)) {
            z13 = true;
        } else {
            z13 = false;
        }
        Player.Commands.Builder builderD6 = builderD5.d(9, z13).d(10, !zIsPlayingAd);
        if (zK && !zIsPlayingAd) {
            z14 = true;
        } else {
            z14 = false;
        }
        Player.Commands.Builder builderD7 = builderD6.d(11, z14);
        if (zK && !zIsPlayingAd) {
            z15 = true;
        }
        return builderD7.d(12, z15).e();
    }

    @UnstableApi
    public static int J(ByteBuffer byteBuffer, int i10) {
        int i11 = byteBuffer.getInt(i10);
        if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
            return Integer.reverseBytes(i11);
        }
        return i11;
    }

    @UnstableApi
    public static byte[] K(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((Character.digit(str.charAt(i11), 16) << 4) + Character.digit(str.charAt(i11 + 1), 16));
        }
        return bArr;
    }

    @UnstableApi
    public static int L(@Nullable String str, int i10) {
        int i11 = 0;
        for (String str2 : f1(str)) {
            if (i10 == MimeTypes.m(str2)) {
                i11++;
            }
        }
        return i11;
    }

    @Nullable
    @UnstableApi
    public static String M(@Nullable String str, int i10) {
        String[] strArrF1 = f1(str);
        if (strArrF1.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrF1) {
            if (i10 == MimeTypes.m(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() <= 0) {
            return null;
        }
        return sb.toString();
    }

    @UnstableApi
    public static Point Q(Context context, Display display) {
        String strO0;
        if (display.getDisplayId() == 0 && F0(context)) {
            if (SDK_INT < 28) {
                strO0 = o0("sys.display-size");
            } else {
                strO0 = o0("vendor.display-size");
            }
            if (!TextUtils.isEmpty(strO0)) {
                try {
                    String[] strArrD1 = d1(strO0.trim(), "x");
                    if (strArrD1.length == 2) {
                        int i10 = Integer.parseInt(strArrD1[0]);
                        int i11 = Integer.parseInt(strArrD1[1]);
                        if (i10 > 0 && i11 > 0) {
                            return new Point(i10, i11);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                Log.c(TAG, "Invalid display size: " + strO0);
            }
            if ("Sony".equals(MANUFACTURER) && MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        int i12 = SDK_INT;
        if (i12 >= 23) {
            V(display, point);
        } else if (i12 >= 17) {
            U(display, point);
        } else {
            T(display, point);
        }
        return point;
    }

    @UnstableApi
    public static Looper R() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            return Looper.getMainLooper();
        }
        return looperMyLooper;
    }

    private static void T(Display display, Point point) {
        display.getSize(point);
    }

    @UnstableApi
    public static boolean T0(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    @RequiresApi
    private static void U(Display display, Point point) {
        display.getRealSize(point);
    }

    @UnstableApi
    public static boolean U0(Parcel parcel) {
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    @RequiresApi
    private static void V(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    @UnstableApi
    public static long W0(long j6, int i10) {
        return (j6 * 1000000) / ((long) i10);
    }

    @UnstableApi
    public static long[] Y0(List<Long> list, long j6, long j10) {
        int size = list.size();
        long[] jArr = new long[size];
        int i10 = 0;
        if (j10 >= j6 && j10 % j6 == 0) {
            long j11 = j10 / j6;
            while (i10 < size) {
                jArr[i10] = list.get(i10).longValue() / j11;
                i10++;
            }
        } else if (j10 < j6 && j6 % j10 == 0) {
            long j12 = j6 / j10;
            while (i10 < size) {
                jArr[i10] = list.get(i10).longValue() * j12;
                i10++;
            }
        } else {
            double d = j6 / j10;
            while (i10 < size) {
                jArr[i10] = (long) (list.get(i10).longValue() * d);
                i10++;
            }
        }
        return jArr;
    }

    @RequiresApi
    private static String b0(Locale locale) {
        return locale.toLanguageTag();
    }

    @UnstableApi
    public static void b1(Throwable th) throws Throwable {
        c1(th);
    }

    @UnstableApi
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

    @UnstableApi
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

    @UnstableApi
    public static int f(LongArray longArray, long j6, boolean z6, boolean z10) {
        int i10;
        int iC = longArray.c() - 1;
        int i11 = 0;
        while (i11 <= iC) {
            int i12 = (i11 + iC) >>> 1;
            if (longArray.b(i12) < j6) {
                i11 = i12 + 1;
            } else {
                iC = i12 - 1;
            }
        }
        if (z6 && (i10 = iC + 1) < longArray.c() && longArray.b(i10) == j6) {
            return i10;
        }
        if (z10 && iC == -1) {
            return 0;
        }
        return iC;
    }

    @UnstableApi
    public static String[] f1(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        return d1(str.trim(), "(\\s*,\\s*)");
    }

    @UnstableApi
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

    @UnstableApi
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

    @UnstableApi
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

    @UnstableApi
    public static String[] l0() {
        String[] strArrM0 = m0();
        for (int i10 = 0; i10 < strArrM0.length; i10++) {
            strArrM0[i10] = M0(strArrM0[i10]);
        }
        return strArrM0;
    }

    private static String[] m0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        if (SDK_INT >= 24) {
            return n0(configuration);
        }
        return new String[]{a0(configuration.locale)};
    }

    @RequiresApi
    private static String[] n0(Configuration configuration) {
        return d1(configuration.getLocales().toLanguageTags(), ",");
    }

    @UnstableApi
    public static long n1(int i10, int i11) {
        return o1(i11) | (o1(i10) << 32);
    }

    @UnstableApi
    public static float p(float f, float f6, float f7) {
        return Math.max(f6, Math.min(f, f7));
    }

    @UnstableApi
    public static String p0(int i10) {
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

    @Nullable
    @UnstableApi
    public static String p1(String str) {
        int length = str.length();
        int iEnd = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.charAt(i11) == '%') {
                i10++;
            }
        }
        if (i10 == 0) {
            return str;
        }
        int i12 = length - (i10 * 2);
        StringBuilder sb = new StringBuilder(i12);
        Matcher matcher = ESCAPED_CHARACTER_PATTERN.matcher(str);
        while (i10 > 0 && matcher.find()) {
            char c7 = (char) Integer.parseInt((String) Assertions.e(matcher.group(1)), 16);
            sb.append((CharSequence) str, iEnd, matcher.start());
            sb.append(c7);
            iEnd = matcher.end();
            i10--;
        }
        if (iEnd < length) {
            sb.append((CharSequence) str, iEnd, length);
        }
        if (sb.length() != i12) {
            return null;
        }
        return sb.toString();
    }

    @UnstableApi
    public static int q(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i10, i12));
    }

    @UnstableApi
    public static long r(long j6, long j10, long j11) {
        return Math.max(j10, Math.min(j6, j11));
    }

    @UnstableApi
    public static void r1(Parcel parcel, boolean z6) {
        parcel.writeInt(z6 ? 1 : 0);
    }

    public static boolean t0(@Nullable Player player) {
        if (a1(player)) {
            return s0(player);
        }
        return r0(player);
    }

    public static int u0(Uri uri) {
        int iW0;
        String scheme = uri.getScheme();
        if (scheme != null && com.google.common.base.c.a("rtsp", scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0 && (iW0 = w0(lastPathSegment.substring(iLastIndexOf + 1))) != 4) {
            return iW0;
        }
        Matcher matcher = ISM_PATH_PATTERN.matcher((CharSequence) Assertions.e(uri.getPath()));
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

    public static int w0(String str) {
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

    @UnstableApi
    public static Handler x(@Nullable Handler.Callback callback) {
        return v((Looper) Assertions.i(Looper.myLooper()), callback);
    }

    @UnstableApi
    public static boolean y0(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, @Nullable Inflater inflater) {
        if (parsableByteArray.a() <= 0) {
            return false;
        }
        if (parsableByteArray2.b() < parsableByteArray.a()) {
            parsableByteArray2.c(parsableByteArray.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(parsableByteArray.e(), parsableByteArray.f(), parsableByteArray.a());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(parsableByteArray2.e(), iInflate, parsableByteArray2.b() - iInflate);
                if (inflater.finished()) {
                    parsableByteArray2.T(iInflate);
                    inflater.reset();
                    return true;
                }
                if (!inflater.needsDictionary() && !inflater.needsInput()) {
                    if (iInflate == parsableByteArray2.b()) {
                        parsableByteArray2.c(parsableByteArray2.b() * 2);
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

    @UnstableApi
    public static Handler z(@Nullable Handler.Callback callback) {
        return v(R(), callback);
    }

    @UnstableApi
    public static long e0(long j6) {
        if (j6 == -9223372036854775807L) {
            return System.currentTimeMillis();
        }
        return j6 + android.os.SystemClock.elapsedRealtime();
    }

    @UnstableApi
    public static String k0(StringBuilder sb, Formatter formatter, long j6) {
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

    @UnstableApi
    public static long q1(long j6) {
        if (j6 != -9223372036854775807L && j6 != Long.MIN_VALUE) {
            return j6 / 1000;
        }
        return j6;
    }
}
