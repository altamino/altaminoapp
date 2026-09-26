package r7;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class j extends m {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final j Empty;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final j a() {
            return j.Empty;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(@NotNull s7.a head, long j6, @NotNull t7.g<s7.a> pool) {
        super(head, j6, pool);
        t.j(head, "head");
        t.j(pool, "pool");
        H0();
    }

    @Override // r7.m
    @Nullable
    protected final s7.a L() {
        return null;
    }

    @Override // r7.m
    protected final int O(@NotNull ByteBuffer destination, int i10, int i11) {
        t.j(destination, "destination");
        return 0;
    }

    @Override // r7.m
    protected final void k() {
    }

    static {
        s7.a.d dVar = s7.a.Companion;
        Empty = new j(dVar.a(), 0L, dVar.b());
    }

    @NotNull
    public String toString() {
        return "ByteReadPacket[" + hashCode() + kotlinx.serialization.json.internal.b.END_LIST;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j(@NotNull s7.a head, @NotNull t7.g<s7.a> pool) {
        this(head, h.c(head), pool);
        t.j(head, "head");
        t.j(pool, "pool");
    }
}
