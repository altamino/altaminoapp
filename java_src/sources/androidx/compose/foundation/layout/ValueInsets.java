package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Stable
public final class ValueInsets implements WindowInsets {

    @NotNull
    private final String name;

    @NotNull
    private final MutableState value$delegate;

    public ValueInsets(@NotNull InsetsValues insets, @NotNull String name) {
        t.j(insets, "insets");
        t.j(name, "name");
        this.name = name;
        this.value$delegate = SnapshotStateKt__SnapshotStateKt.e(insets, null, 2, null);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int a(@NotNull Density density) {
        t.j(density, "density");
        return e().d();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return e().c();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int c(@NotNull Density density) {
        t.j(density, "density");
        return e().a();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return e().b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final InsetsValues e() {
        return (InsetsValues) this.value$delegate.getValue();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ValueInsets) {
            return t.e(e(), ((ValueInsets) obj).e());
        }
        return false;
    }

    public final void f(@NotNull InsetsValues insetsValues) {
        t.j(insetsValues, "<set-?>");
        this.value$delegate.setValue(insetsValues);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    @NotNull
    public String toString() {
        return this.name + "(left=" + e().b() + ", top=" + e().d() + ", right=" + e().c() + ", bottom=" + e().a() + ')';
    }
}
