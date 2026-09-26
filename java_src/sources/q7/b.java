package q7;

import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import r7.i;
import r7.j;
import r7.m;
import r7.p;
import s7.g;

/* JADX INFO: loaded from: classes8.dex */
public final class b {
    private static final int e(CharsetEncoder charsetEncoder, p pVar) {
        s7.a aVarD = g.d(pVar, 1, null);
        int i10 = 1;
        int iF = 0;
        while (true) {
            try {
                int iF2 = aVarD.f() - aVarD.j();
                i10 = a.e(charsetEncoder, aVarD) ? 0 : i10 + 1;
                iF += iF2 - (aVarD.f() - aVarD.j());
                if (i10 <= 0) {
                    pVar.h();
                    return iF;
                }
                aVarD = g.d(pVar, 1, aVarD);
            } catch (Throwable th) {
                pVar.h();
                throw th;
            }
        }
    }

    @NotNull
    public static final String a(@NotNull CharsetDecoder charsetDecoder, @NotNull m input, int i10) {
        t.j(charsetDecoder, "<this>");
        t.j(input, "input");
        StringBuilder sb = new StringBuilder((int) Math.min(i10, g(input)));
        a.a(charsetDecoder, input, sb, i10);
        String string = sb.toString();
        t.i(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public static /* synthetic */ String b(CharsetDecoder charsetDecoder, m mVar, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        return a(charsetDecoder, mVar, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final j c(@NotNull CharsetEncoder charsetEncoder, @NotNull CharSequence input, int i10, int i11) {
        t.j(charsetEncoder, "<this>");
        t.j(input, "input");
        i iVar = new i(null, 1, 0 == true ? 1 : 0);
        try {
            f(charsetEncoder, iVar, input, i10, i11);
            return iVar.L0();
        } catch (Throwable th) {
            iVar.release();
            throw th;
        }
    }

    public static /* synthetic */ j d(CharsetEncoder charsetEncoder, CharSequence charSequence, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = charSequence.length();
        }
        return c(charsetEncoder, charSequence, i10, i11);
    }

    public static final int f(@NotNull CharsetEncoder charsetEncoder, @NotNull p destination, @NotNull CharSequence input, int i10, int i11) {
        int i12;
        t.j(charsetEncoder, "<this>");
        t.j(destination, "destination");
        t.j(input, "input");
        if (i10 >= i11) {
            return 0;
        }
        s7.a aVarD = g.d(destination, 1, null);
        int iF = 0;
        while (true) {
            try {
                int iF2 = aVarD.f() - aVarD.j();
                int iF3 = a.f(charsetEncoder, input, i10, i11, aVarD);
                if (iF3 < 0) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                i10 += iF3;
                iF += iF2 - (aVarD.f() - aVarD.j());
                if (i10 >= i11) {
                    i12 = 0;
                } else {
                    i12 = iF3 == 0 ? 8 : 1;
                }
                if (i12 <= 0) {
                    destination.h();
                    return iF + e(charsetEncoder, destination);
                }
                aVarD = g.d(destination, i12, aVarD);
            } catch (Throwable th) {
                destination.h();
                throw th;
            }
        }
    }

    public static final long g(@NotNull m mVar) {
        t.j(mVar, "<this>");
        return mVar instanceof j ? mVar.G0() : Math.max(mVar.G0(), 16L);
    }
}
