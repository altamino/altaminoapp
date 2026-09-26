package okhttp3.internal.http2;

import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class Http2 {

    @NotNull
    private static final String[] BINARY;
    public static final int FLAG_ACK = 1;
    public static final int FLAG_COMPRESSED = 32;
    public static final int FLAG_END_HEADERS = 4;
    public static final int FLAG_END_PUSH_PROMISE = 4;
    public static final int FLAG_END_STREAM = 1;
    public static final int FLAG_NONE = 0;
    public static final int FLAG_PADDED = 8;
    public static final int FLAG_PRIORITY = 32;
    public static final int INITIAL_MAX_FRAME_SIZE = 16384;
    public static final int TYPE_CONTINUATION = 9;
    public static final int TYPE_DATA = 0;
    public static final int TYPE_GOAWAY = 7;
    public static final int TYPE_HEADERS = 1;
    public static final int TYPE_PING = 6;
    public static final int TYPE_PRIORITY = 2;
    public static final int TYPE_PUSH_PROMISE = 5;
    public static final int TYPE_RST_STREAM = 3;
    public static final int TYPE_SETTINGS = 4;
    public static final int TYPE_WINDOW_UPDATE = 8;

    @NotNull
    public static final Http2 INSTANCE = new Http2();

    @NotNull
    public static final ByteString CONNECTION_PREFACE = ByteString.Companion.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    @NotNull
    private static final String[] FRAME_NAMES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    @NotNull
    private static final String[] FLAGS = new String[64];

    static {
        String[] strArr = new String[256];
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            String binaryString = Integer.toBinaryString(i11);
            t.i(binaryString, "toBinaryString(it)");
            strArr[i11] = kotlin.text.t.F(Util.format("%8s", binaryString), ' ', '0', false, 4, null);
        }
        BINARY = strArr;
        String[] strArr2 = FLAGS;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i12 = iArr[0];
        strArr2[i12 | 8] = t.s(strArr2[i12], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        int i13 = 0;
        while (i13 < 3) {
            int i14 = iArr2[i13];
            i13++;
            int i15 = iArr[0];
            String[] strArr3 = FLAGS;
            int i16 = i15 | i14;
            StringBuilder sb = new StringBuilder();
            sb.append((Object) strArr3[i15]);
            sb.append('|');
            sb.append((Object) strArr3[i14]);
            strArr3[i16] = sb.toString();
            strArr3[i16 | 8] = ((Object) strArr3[i15]) + '|' + ((Object) strArr3[i14]) + "|PADDED";
        }
        int length = FLAGS.length;
        while (i10 < length) {
            int i17 = i10 + 1;
            String[] strArr4 = FLAGS;
            if (strArr4[i10] == null) {
                strArr4[i10] = BINARY[i10];
            }
            i10 = i17;
        }
    }

    @NotNull
    public final String formatFlags(int i10, int i11) {
        String str;
        if (i11 == 0) {
            return "";
        }
        if (i10 != 2 && i10 != 3) {
            if (i10 == 4 || i10 == 6) {
                return i11 == 1 ? "ACK" : BINARY[i11];
            }
            if (i10 != 7 && i10 != 8) {
                String[] strArr = FLAGS;
                if (i11 < strArr.length) {
                    str = strArr[i11];
                    t.g(str);
                } else {
                    str = BINARY[i11];
                }
                String str2 = str;
                if (i10 != 5 || (i11 & 4) == 0) {
                    return (i10 != 0 || (i11 & 32) == 0) ? str2 : kotlin.text.t.G(str2, "PRIORITY", "COMPRESSED", false, 4, null);
                }
                return kotlin.text.t.G(str2, "HEADERS", "PUSH_PROMISE", false, 4, null);
            }
        }
        return BINARY[i11];
    }

    @NotNull
    public final String formattedType$okhttp(int i10) {
        String[] strArr = FRAME_NAMES;
        return i10 < strArr.length ? strArr[i10] : Util.format("0x%02x", Integer.valueOf(i10));
    }

    private Http2() {
    }

    @NotNull
    public final String frameLog(boolean z6, int i10, int i11, int i12, int i13) {
        String str;
        String str2 = formattedType$okhttp(i12);
        String flags = formatFlags(i12, i13);
        if (z6) {
            str = "<<";
        } else {
            str = ">>";
        }
        return Util.format("%s 0x%08x %5d %-13s %s", str, Integer.valueOf(i10), Integer.valueOf(i11), str2, flags);
    }
}
