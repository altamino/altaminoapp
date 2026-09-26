package coil.size;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class i {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    public static final i ORIGINAL;

    @NotNull
    private final c height;

    @NotNull
    private final c width;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    @NotNull
    public final c a() {
        return this.height;
    }

    @NotNull
    public final c b() {
        return this.width;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return t.e(this.width, iVar.width) && t.e(this.height, iVar.height);
    }

    public int hashCode() {
        return (this.width.hashCode() * 31) + this.height.hashCode();
    }

    @NotNull
    public String toString() {
        return "Size(width=" + this.width + ", height=" + this.height + ')';
    }

    static {
        c.b bVar = c.b.INSTANCE;
        ORIGINAL = new i(bVar, bVar);
    }

    public i(@NotNull c cVar, @NotNull c cVar2) {
        this.width = cVar;
        this.height = cVar2;
    }
}
