package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class AnimateItemPlacementModifier extends InspectorValueInfo implements ParentDataModifier {

    @NotNull
    private final FiniteAnimationSpec<IntOffset> animationSpec;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @NotNull
    public Object Q(@NotNull Density density, @Nullable Object obj) {
        t.j(density, "<this>");
        return this.animationSpec;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AnimateItemPlacementModifier) {
            return !t.e(this.animationSpec, ((AnimateItemPlacementModifier) obj).animationSpec);
        }
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimateItemPlacementModifier(@NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(animationSpec, "animationSpec");
        t.j(inspectorInfo, "inspectorInfo");
        this.animationSpec = animationSpec;
    }

    public int hashCode() {
        return this.animationSpec.hashCode();
    }
}
