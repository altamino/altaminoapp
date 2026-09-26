package coil.size;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class f implements j {

    @NotNull
    private final i size;

    @Override // coil.size.j
    @Nullable
    public Object b(@NotNull kotlin.coroutines.d<? super i> dVar) {
        return this.size;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && t.e(this.size, ((f) obj).size);
    }

    public int hashCode() {
        return this.size.hashCode();
    }

    public f(@NotNull i iVar) {
        this.size = iVar;
    }
}
