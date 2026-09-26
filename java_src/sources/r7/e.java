package r7;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final void a(@NotNull a aVar, @NotNull ByteBuffer source) throws o {
        t.j(aVar, "<this>");
        t.j(source, "source");
        int iRemaining = source.remaining();
        ByteBuffer byteBufferG = aVar.g();
        int iJ = aVar.j();
        int iF = aVar.f() - iJ;
        if (iF < iRemaining) {
            throw new o("buffer content", iRemaining, iF);
        }
        p7.d.c(source, byteBufferG, iJ);
        aVar.a(iRemaining);
    }
}
