package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class TabPosition {
    private final float left;
    private final float width;

    public /* synthetic */ TabPosition(float f, float f6, k kVar) {
        this(f, f6);
    }

    public final float a() {
        return this.left;
    }

    public final float c() {
        return this.width;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TabPosition)) {
            return false;
        }
        TabPosition tabPosition = (TabPosition) obj;
        return Dp.i(this.left, tabPosition.left) && Dp.i(this.width, tabPosition.width);
    }

    private TabPosition(float f, float f6) {
        this.left = f;
        this.width = f6;
    }

    public final float b() {
        return Dp.f(this.left + this.width);
    }

    public int hashCode() {
        return (Dp.j(this.left) * 31) + Dp.j(this.width);
    }

    @NotNull
    public String toString() {
        return "TabPosition(left=" + ((Object) Dp.k(this.left)) + ", right=" + ((Object) Dp.k(b())) + ", width=" + ((Object) Dp.k(this.width)) + ')';
    }
}
