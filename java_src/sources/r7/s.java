package r7;

import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i0;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    private static final void i(p pVar, CharSequence charSequence, int i10, int i11) {
        int i12;
        s7.a aVarD = s7.g.d(pVar, 1, null);
        while (true) {
            try {
                int iB = s7.f.b(aVarD.g(), charSequence, i10, i11, aVarD.j(), aVarD.f());
                short sA = s7.c.a(iB);
                short sB = s7.c.b(iB);
                int i13 = sA & i0.MAX_VALUE;
                i10 += i13;
                aVarD.a(sB & i0.MAX_VALUE);
                if (i13 != 0 || i10 >= i11) {
                    i12 = i10 < i11 ? 1 : 0;
                } else {
                    i12 = 8;
                }
                if (i12 <= 0) {
                    pVar.h();
                    return;
                }
                aVarD = s7.g.d(pVar, i12, aVarD);
            } catch (Throwable th) {
                pVar.h();
                throw th;
            }
        }
    }

    @NotNull
    public static final Void a(int i10) throws EOFException {
        throw new EOFException("Premature end of stream: expected " + i10 + " bytes");
    }

    @NotNull
    public static final byte[] b(@NotNull j jVar, int i10) {
        t.j(jVar, "<this>");
        if (i10 == 0) {
            return s7.g.EmptyByteArray;
        }
        byte[] bArr = new byte[i10];
        n.b(jVar, bArr, 0, i10);
        return bArr;
    }

    public static /* synthetic */ byte[] c(j jVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            long jG0 = jVar.G0();
            if (jG0 > 2147483647L) {
                throw new IllegalArgumentException("Unable to convert to a ByteArray: packet is too big");
            }
            i10 = (int) jG0;
        }
        return b(jVar, i10);
    }

    @NotNull
    public static final String d(@NotNull m mVar, @NotNull Charset charset, int i10) {
        t.j(mVar, "<this>");
        t.j(charset, "charset");
        CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
        t.i(charsetDecoderNewDecoder, "charset.newDecoder()");
        return q7.b.a(charsetDecoderNewDecoder, mVar, i10);
    }

    public static /* synthetic */ String e(m mVar, Charset charset, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        if ((i11 & 2) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        return d(mVar, charset, i10);
    }

    @NotNull
    public static final String f(@NotNull m mVar, int i10, @NotNull Charset charset) {
        t.j(mVar, "<this>");
        t.j(charset, "charset");
        CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
        t.i(charsetDecoderNewDecoder, "charset.newDecoder()");
        return q7.a.b(charsetDecoderNewDecoder, mVar, i10);
    }

    public static /* synthetic */ String g(m mVar, int i10, Charset charset, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        return f(mVar, i10, charset);
    }

    public static final void h(@NotNull p pVar, @NotNull CharSequence text, int i10, int i11, @NotNull Charset charset) {
        t.j(pVar, "<this>");
        t.j(text, "text");
        t.j(charset, "charset");
        if (charset == kotlin.text.d.UTF_8) {
            i(pVar, text, i10, i11);
            return;
        }
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        t.i(charsetEncoderNewEncoder, "charset.newEncoder()");
        q7.b.f(charsetEncoderNewEncoder, pVar, text, i10, i11);
    }
}
