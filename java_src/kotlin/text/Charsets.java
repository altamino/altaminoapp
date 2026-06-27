package kotlin.text;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Charsets.kt */
/* loaded from: classes4.dex */
public final class Charsets {
    public static final Charsets INSTANCE = new Charsets();
    public static final Charset ISO_8859_1;
    public static final Charset US_ASCII;
    public static final Charset UTF_16;
    public static final Charset UTF_16BE;
    public static final Charset UTF_16LE;
    public static final Charset UTF_8;
    private static Charset utf_32;
    private static Charset utf_32be;
    private static Charset utf_32le;

    static {
        Charset charsetForName = Charset.forName(C.UTF8_NAME);
        Intrinsics.checkExpressionValueIsNotNull(charsetForName, "Charset.forName(\"UTF-8\")");
        UTF_8 = charsetForName;
        Charset charsetForName2 = Charset.forName(C.UTF16_NAME);
        Intrinsics.checkExpressionValueIsNotNull(charsetForName2, "Charset.forName(\"UTF-16\")");
        UTF_16 = charsetForName2;
        Charset charsetForName3 = Charset.forName("UTF-16BE");
        Intrinsics.checkExpressionValueIsNotNull(charsetForName3, "Charset.forName(\"UTF-16BE\")");
        UTF_16BE = charsetForName3;
        Charset charsetForName4 = Charset.forName(C.UTF16LE_NAME);
        Intrinsics.checkExpressionValueIsNotNull(charsetForName4, "Charset.forName(\"UTF-16LE\")");
        UTF_16LE = charsetForName4;
        Charset charsetForName5 = Charset.forName(C.ASCII_NAME);
        Intrinsics.checkExpressionValueIsNotNull(charsetForName5, "Charset.forName(\"US-ASCII\")");
        US_ASCII = charsetForName5;
        Charset charsetForName6 = Charset.forName("ISO-8859-1");
        Intrinsics.checkExpressionValueIsNotNull(charsetForName6, "Charset.forName(\"ISO-8859-1\")");
        ISO_8859_1 = charsetForName6;
    }

    private Charsets() {
    }
}
