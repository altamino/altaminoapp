package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class w0 {

    @NotNull
    private static final byte[] ESCAPE_MARKERS;

    @NotNull
    private static final String[] ESCAPE_STRINGS;

    @NotNull
    public static final byte[] a() {
        return ESCAPE_MARKERS;
    }

    @NotNull
    public static final String[] b() {
        return ESCAPE_STRINGS;
    }

    private static final char e(int i10) {
        int i11 = i10 & 15;
        return (char) (i11 < 10 ? i11 + 48 : i11 + 87);
    }

    static {
        String[] strArr = new String[93];
        for (int i10 = 0; i10 < 32; i10++) {
            strArr[i10] = "\\u" + e(i10 >> 12) + e(i10 >> 8) + e(i10 >> 4) + e(i10);
        }
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        ESCAPE_STRINGS = strArr;
        byte[] bArr = new byte[93];
        for (int i11 = 0; i11 < 32; i11++) {
            bArr[i11] = 1;
        }
        bArr[34] = 34;
        bArr[92] = 92;
        bArr[9] = 116;
        bArr[8] = 98;
        bArr[10] = 110;
        bArr[13] = 114;
        bArr[12] = 102;
        ESCAPE_MARKERS = bArr;
    }

    public static final void c(@NotNull StringBuilder sb, @NotNull String value) {
        kotlin.jvm.internal.t.j(sb, "<this>");
        kotlin.jvm.internal.t.j(value, "value");
        sb.append(b.STRING);
        int length = value.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = value.charAt(i11);
            String[] strArr = ESCAPE_STRINGS;
            if (cCharAt < strArr.length && strArr[cCharAt] != null) {
                sb.append((CharSequence) value, i10, i11);
                sb.append(strArr[cCharAt]);
                i10 = i11 + 1;
            }
        }
        if (i10 != 0) {
            sb.append((CharSequence) value, i10, value.length());
        } else {
            sb.append(value);
        }
        sb.append(b.STRING);
    }

    @Nullable
    public static final Boolean d(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        if (kotlin.text.t.w(str, "true", true)) {
            return Boolean.TRUE;
        }
        if (kotlin.text.t.w(str, "false", true)) {
            return Boolean.FALSE;
        }
        return null;
    }
}
