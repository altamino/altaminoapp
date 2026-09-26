package coil.fetch;

import coil.decode.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class m extends h {

    @NotNull
    private final coil.decode.f dataSource;

    @Nullable
    private final String mimeType;

    @NotNull
    private final p source;

    public m(@NotNull p pVar, @Nullable String str, @NotNull coil.decode.f fVar) {
        super(null);
        this.source = pVar;
        this.mimeType = str;
        this.dataSource = fVar;
    }

    @NotNull
    public final coil.decode.f a() {
        return this.dataSource;
    }

    @NotNull
    public final p b() {
        return this.source;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (t.e(this.source, mVar.source) && t.e(this.mimeType, mVar.mimeType) && this.dataSource == mVar.dataSource) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.source.hashCode() * 31;
        String str = this.mimeType;
        return ((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.dataSource.hashCode();
    }
}
