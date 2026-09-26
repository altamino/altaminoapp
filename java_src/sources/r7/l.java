package r7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class l extends t7.d<s7.a> {

    @NotNull
    private final p7.a allocator;
    private final int bufferSize;

    public l() {
        this(0, 0, null, 7, null);
    }

    public /* synthetic */ l(int i10, int i11, p7.a aVar, int i12, kotlin.jvm.internal.k kVar) {
        this((i12 & 1) != 0 ? 4096 : i10, (i12 & 2) != 0 ? 1000 : i11, (i12 & 4) != 0 ? p7.b.INSTANCE : aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // t7.d
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public void o(@NotNull s7.a instance) {
        t.j(instance, "instance");
        super.o(instance);
        if (instance.g().limit() != this.bufferSize) {
            StringBuilder sb = new StringBuilder();
            sb.append("Buffer size mismatch. Expected: ");
            sb.append(this.bufferSize);
            sb.append(", actual: ");
            sb.append(instance.g().limit());
            throw new IllegalStateException(sb.toString().toString());
        }
        if (instance == s7.a.Companion.a()) {
            throw new IllegalStateException("ChunkBuffer.Empty couldn't be recycled".toString());
        }
        if (instance == a.Companion.a()) {
            throw new IllegalStateException("Empty instance couldn't be recycled".toString());
        }
        if (instance.z() != 0) {
            throw new IllegalStateException("Unable to clear buffer: it is still in use.".toString());
        }
        if (instance.x() != null) {
            throw new IllegalStateException("Recycled instance shouldn't be a part of a chain.".toString());
        }
        if (instance.y() != null) {
            throw new IllegalStateException("Recycled instance shouldn't be a view or another buffer.".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // t7.d
    @NotNull
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public s7.a d(@NotNull s7.a instance) {
        t.j(instance, "instance");
        s7.a aVar = (s7.a) super.d(instance);
        aVar.E();
        aVar.q();
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // t7.d
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void e(@NotNull s7.a instance) {
        t.j(instance, "instance");
        this.allocator.a(instance.g());
        super.e(instance);
        instance.D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // t7.d
    @NotNull
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public s7.a k() {
        return new s7.a(this.allocator.b(this.bufferSize), null, this, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(int i10, int i11, @NotNull p7.a allocator) {
        super(i11);
        t.j(allocator, "allocator");
        this.bufferSize = i10;
        this.allocator = allocator;
    }
}
