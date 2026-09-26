package coil.fetch;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class g extends h {

    @NotNull
    private final coil.decode.f dataSource;

    @NotNull
    private final Drawable drawable;
    private final boolean isSampled;

    public g(@NotNull Drawable drawable, boolean z6, @NotNull coil.decode.f fVar) {
        super(null);
        this.drawable = drawable;
        this.isSampled = z6;
        this.dataSource = fVar;
    }

    @NotNull
    public final coil.decode.f a() {
        return this.dataSource;
    }

    @NotNull
    public final Drawable b() {
        return this.drawable;
    }

    public final boolean c() {
        return this.isSampled;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (t.e(this.drawable, gVar.drawable) && this.isSampled == gVar.isSampled && this.dataSource == gVar.dataSource) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.drawable.hashCode() * 31) + androidx.compose.foundation.c.a(this.isSampled)) * 31) + this.dataSource.hashCode();
    }
}
