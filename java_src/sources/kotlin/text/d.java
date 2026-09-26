package kotlin.text;

import java.nio.charset.Charset;
import org.apache.commons.compress.utils.CharsetNames;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    @NotNull
    public static final d INSTANCE = new d();

    @NotNull
    public static final Charset ISO_8859_1;

    @NotNull
    public static final Charset US_ASCII;

    @NotNull
    public static final Charset UTF_16;

    @NotNull
    public static final Charset UTF_16BE;

    @NotNull
    public static final Charset UTF_16LE;

    @NotNull
    public static final Charset UTF_8;

    @Nullable
    private static volatile Charset utf_32;

    @Nullable
    private static volatile Charset utf_32be;

    @Nullable
    private static volatile Charset utf_32le;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        kotlin.jvm.internal.t.i(charsetForName, "forName(...)");
        UTF_8 = charsetForName;
        Charset charsetForName2 = Charset.forName("UTF-16");
        kotlin.jvm.internal.t.i(charsetForName2, "forName(...)");
        UTF_16 = charsetForName2;
        Charset charsetForName3 = Charset.forName(CharsetNames.UTF_16BE);
        kotlin.jvm.internal.t.i(charsetForName3, "forName(...)");
        UTF_16BE = charsetForName3;
        Charset charsetForName4 = Charset.forName("UTF-16LE");
        kotlin.jvm.internal.t.i(charsetForName4, "forName(...)");
        UTF_16LE = charsetForName4;
        Charset charsetForName5 = Charset.forName("US-ASCII");
        kotlin.jvm.internal.t.i(charsetForName5, "forName(...)");
        US_ASCII = charsetForName5;
        Charset charsetForName6 = Charset.forName("ISO-8859-1");
        kotlin.jvm.internal.t.i(charsetForName6, "forName(...)");
        ISO_8859_1 = charsetForName6;
    }

    @NotNull
    public final Charset a() {
        Charset charset = utf_32be;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32BE");
        kotlin.jvm.internal.t.i(charsetForName, "forName(...)");
        utf_32be = charsetForName;
        return charsetForName;
    }

    @NotNull
    public final Charset b() {
        Charset charset = utf_32le;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32LE");
        kotlin.jvm.internal.t.i(charsetForName, "forName(...)");
        utf_32le = charsetForName;
        return charsetForName;
    }

    private d() {
    }
}
