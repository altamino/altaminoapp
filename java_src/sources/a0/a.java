package a0;

import android.util.Base64;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final a f25a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f26b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final String f27c;

    @NotNull
    public static final String d;

    @NotNull
    public static final char[] e;

    @NotNull
    public static final String f;

    @NotNull
    public static final String g;

    @NotNull
    public static final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    public static final String f28i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    public static final String f29j;

    @NotNull
    public static final String k;

    @NotNull
    public static final String l;

    @NotNull
    public static final String m;

    @NotNull
    public static final String n;

    @NotNull
    public static final String o;

    static {
        byte[] bArrDecode = Base64.decode("UEVORElOR19ERVZJQ0VJX0lEX1BSRUZJWA==", 0);
        t.i(bArrDecode, "decode(...)");
        Charset UTF_8 = StandardCharsets.UTF_8;
        t.i(UTF_8, "UTF_8");
        f27c = new String(bArrDecode, UTF_8);
        byte[] bArrDecode2 = Base64.decode("ZGlk", 0);
        t.i(bArrDecode2, "decode(...)");
        t.i(UTF_8, "UTF_8");
        d = new String(bArrDecode2, UTF_8);
        byte[] bArrDecode3 = Base64.decode("MDEyMzQ1Njc4OUFCQ0RFRg==", 0);
        t.i(bArrDecode3, "decode(...)");
        t.i(UTF_8, "UTF_8");
        char[] charArray = new String(bArrDecode3, UTF_8).toCharArray();
        t.i(charArray, "toCharArray(...)");
        e = charArray;
        byte[] bArrDecode4 = Base64.decode("NTI=", 0);
        t.i(bArrDecode4, "decode(...)");
        t.i(UTF_8, "UTF_8");
        f = new String(bArrDecode4, UTF_8);
        byte[] bArrDecode5 = Base64.decode("WzAtOWEtel17ODJ9", 0);
        t.i(bArrDecode5, "decode(...)");
        t.i(UTF_8, "UTF_8");
        g = new String(bArrDecode5, UTF_8);
        byte[] bArrDecode6 = Base64.decode("ZGlkZg==", 0);
        t.i(bArrDecode6, "decode(...)");
        t.i(UTF_8, "UTF_8");
        h = new String(bArrDecode6, UTF_8);
        byte[] bArrDecode7 = Base64.decode("aGdu", 0);
        t.i(bArrDecode7, "decode(...)");
        t.i(UTF_8, "UTF_8");
        f28i = new String(bArrDecode7, UTF_8);
        byte[] bArrDecode8 = Base64.decode("TkRDLU1TRy1TSUc=", 0);
        t.i(bArrDecode8, "decode(...)");
        t.i(UTF_8, "UTF_8");
        f29j = new String(bArrDecode8, UTF_8);
        byte[] bArrDecode9 = Base64.decode("TkRDLU1FU1NBR0UtU0lHTkFUVVJF", 0);
        t.i(bArrDecode9, "decode(...)");
        t.i(UTF_8, "UTF_8");
        k = new String(bArrDecode9, UTF_8);
        byte[] bArrDecode10 = Base64.decode("TkRDREVWSUNFSUQ=", 0);
        t.i(bArrDecode10, "decode(...)");
        t.i(UTF_8, "UTF_8");
        l = new String(bArrDecode10, UTF_8);
        byte[] bArrDecode11 = Base64.decode("U01ERVZJQ0VJRA==", 0);
        t.i(bArrDecode11, "decode(...)");
        t.i(UTF_8, "UTF_8");
        m = new String(bArrDecode11, UTF_8);
        byte[] bArrDecode12 = Base64.decode("ZGV2aWNlSWQ=", 0);
        t.i(bArrDecode12, "decode(...)");
        t.i(UTF_8, "UTF_8");
        n = new String(bArrDecode12, UTF_8);
        byte[] bArrDecode13 = Base64.decode("ZGV2aWNlSUQ=", 0);
        t.i(bArrDecode13, "decode(...)");
        t.i(UTF_8, "UTF_8");
        o = new String(bArrDecode13, UTF_8);
    }

    private a() {
    }
}
