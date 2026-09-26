package p7;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class b implements a {

    @NotNull
    public static final b INSTANCE = new b();

    @Override // p7.a
    public void a(@NotNull ByteBuffer instance) {
        t.j(instance, "instance");
    }

    private b() {
    }

    @Override // p7.a
    @NotNull
    public ByteBuffer b(int i10) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        t.i(byteBufferAllocate, "allocate(size)");
        return c.b(byteBufferAllocate);
    }
}
