package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class BoxWithConstraintsScopeImpl implements BoxWithConstraintsScope, BoxScope {
    private final /* synthetic */ BoxScopeInstance $$delegate_0;
    private final long constraints;

    @NotNull
    private final Density density;

    public /* synthetic */ BoxWithConstraintsScopeImpl(Density density, long j6, kotlin.jvm.internal.k kVar) {
        this(density, j6);
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    @Stable
    @NotNull
    public Modifier a(@NotNull Modifier modifier, @NotNull Alignment alignment) {
        t.j(modifier, "<this>");
        t.j(alignment, "alignment");
        return this.$$delegate_0.a(modifier, alignment);
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    public long b() {
        return this.constraints;
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    @Stable
    @NotNull
    public Modifier c(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return this.$$delegate_0.c(modifier);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxWithConstraintsScopeImpl)) {
            return false;
        }
        BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj;
        return t.e(this.density, boxWithConstraintsScopeImpl.density) && Constraints.g(b(), boxWithConstraintsScopeImpl.b());
    }

    public int hashCode() {
        return (this.density.hashCode() * 31) + Constraints.q(b());
    }

    @NotNull
    public String toString() {
        return "BoxWithConstraintsScopeImpl(density=" + this.density + ", constraints=" + ((Object) Constraints.s(b())) + ')';
    }

    private BoxWithConstraintsScopeImpl(Density density, long j6) {
        this.density = density;
        this.constraints = j6;
        this.$$delegate_0 = BoxScopeInstance.INSTANCE;
    }
}
