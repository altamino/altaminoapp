package androidx.compose.ui.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
final class LayoutId extends InspectorValueInfo implements ParentDataModifier, LayoutIdParentData {

    @NotNull
    private final Object layoutId;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @Nullable
    public Object Q(@NotNull Density density, @Nullable Object obj) {
        t.j(density, "<this>");
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.LayoutIdParentData
    @NotNull
    public Object getLayoutId() {
        return this.layoutId;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutId(@NotNull Object layoutId, @NotNull l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(layoutId, "layoutId");
        t.j(inspectorInfo, "inspectorInfo");
        this.layoutId = layoutId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        LayoutId layoutId = obj instanceof LayoutId ? (LayoutId) obj : null;
        if (layoutId == null) {
            return false;
        }
        return t.e(getLayoutId(), layoutId.getLayoutId());
    }

    @NotNull
    public String toString() {
        return "LayoutId(id=" + getLayoutId() + ')';
    }

    public int hashCode() {
        return getLayoutId().hashCode();
    }
}
