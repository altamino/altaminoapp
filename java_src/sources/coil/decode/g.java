package coil.decode;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class g {

    @NotNull
    private final Drawable drawable;
    private final boolean isSampled;

    @NotNull
    public final Drawable a() {
        return this.drawable;
    }

    public final boolean b() {
        return this.isSampled;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (t.e(this.drawable, gVar.drawable) && this.isSampled == gVar.isSampled) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.drawable.hashCode() * 31) + androidx.compose.foundation.c.a(this.isSampled);
    }

    public g(@NotNull Drawable drawable, boolean z6) {
        this.drawable = drawable;
        this.isSampled = z6;
    }
}
