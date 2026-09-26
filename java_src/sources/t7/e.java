package t7;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends d<ByteBuffer> {
    private final int bufferSize;

    /* JADX WARN: Illegal instructions before constructor call */
    public e() {
        int i10 = 0;
        this(i10, i10, 3, null);
    }

    public /* synthetic */ e(int i10, int i11, int i12, k kVar) {
        this((i12 & 1) != 0 ? 2000 : i10, (i12 & 2) != 0 ? 4096 : i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // t7.d
    @NotNull
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public ByteBuffer d(@NotNull ByteBuffer instance) {
        t.j(instance, "instance");
        instance.clear();
        instance.order(ByteOrder.BIG_ENDIAN);
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // t7.d
    @NotNull
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public ByteBuffer k() {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.bufferSize);
        t.g(byteBufferAllocateDirect);
        return byteBufferAllocateDirect;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // t7.d
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void o(@NotNull ByteBuffer instance) {
        t.j(instance, "instance");
        if (instance.capacity() != this.bufferSize) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!instance.isDirect()) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public e(int i10, int i11) {
        super(i10);
        this.bufferSize = i11;
    }
}
