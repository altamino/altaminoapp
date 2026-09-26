package p7;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final ByteBuffer Empty;

    @NotNull
    private final ByteBuffer buffer;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final ByteBuffer a() {
            return c.Empty;
        }
    }

    @NotNull
    public static ByteBuffer b(@NotNull ByteBuffer buffer) {
        t.j(buffer, "buffer");
        return buffer;
    }

    public static boolean d(ByteBuffer byteBuffer, Object obj) {
        return (obj instanceof c) && t.e(byteBuffer, ((c) obj).h());
    }

    public static int e(ByteBuffer byteBuffer) {
        return byteBuffer.hashCode();
    }

    public static String g(ByteBuffer byteBuffer) {
        return "Memory(buffer=" + byteBuffer + ')';
    }

    public boolean equals(Object obj) {
        return d(this.buffer, obj);
    }

    public final /* synthetic */ ByteBuffer h() {
        return this.buffer;
    }

    public int hashCode() {
        return e(this.buffer);
    }

    public String toString() {
        return g(this.buffer);
    }

    static {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(0).order(ByteOrder.BIG_ENDIAN);
        t.i(byteBufferOrder, "allocate(0).order(ByteOrder.BIG_ENDIAN)");
        Empty = b(byteBufferOrder);
    }

    public static final void c(ByteBuffer byteBuffer, @NotNull ByteBuffer destination, int i10, int i11, int i12) {
        t.j(destination, "destination");
        if (byteBuffer.hasArray() && destination.hasArray() && !byteBuffer.isReadOnly() && !destination.isReadOnly()) {
            System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + i10, destination.array(), destination.arrayOffset() + i12, i11);
            return;
        }
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position(i10);
        byteBufferDuplicate.limit(i10 + i11);
        ByteBuffer byteBufferDuplicate2 = destination.duplicate();
        byteBufferDuplicate2.position(i12);
        byteBufferDuplicate2.put(byteBufferDuplicate);
    }

    @NotNull
    public static final ByteBuffer f(ByteBuffer byteBuffer, int i10, int i11) {
        return b(d.d(byteBuffer, i10, i11));
    }
}
