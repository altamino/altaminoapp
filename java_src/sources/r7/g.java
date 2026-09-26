package r7;

import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final void a(@NotNull a aVar, @NotNull ByteBuffer dst, int i10) throws EOFException {
        t.j(aVar, "<this>");
        t.j(dst, "dst");
        ByteBuffer byteBufferG = aVar.g();
        int iH = aVar.h();
        if (aVar.j() - iH < i10) {
            throw new EOFException("Not enough bytes to read a buffer content of size " + i10 + '.');
        }
        int iLimit = dst.limit();
        try {
            dst.limit(dst.position() + i10);
            p7.d.a(byteBufferG, dst, iH);
            dst.limit(iLimit);
            l0 l0Var = l0.INSTANCE;
            aVar.c(i10);
        } catch (Throwable th) {
            dst.limit(iLimit);
            throw th;
        }
    }
}
