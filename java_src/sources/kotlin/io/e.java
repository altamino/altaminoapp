package kotlin.io;

import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class e extends ByteArrayOutputStream {
    @NotNull
    public final byte[] d() {
        byte[] buf = ((ByteArrayOutputStream) this).buf;
        t.i(buf, "buf");
        return buf;
    }

    public e(int i10) {
        super(i10);
    }
}
