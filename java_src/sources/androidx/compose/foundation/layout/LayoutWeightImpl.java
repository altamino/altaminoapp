package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class LayoutWeightImpl extends InspectorValueInfo implements ParentDataModifier {
    private final boolean fill;
    private final float weight;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        LayoutWeightImpl layoutWeightImpl = obj instanceof LayoutWeightImpl ? (LayoutWeightImpl) obj : null;
        if (layoutWeightImpl == null) {
            return false;
        }
        return this.weight == layoutWeightImpl.weight && this.fill == layoutWeightImpl.fill;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutWeightImpl(float f, boolean z6, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(inspectorInfo, "inspectorInfo");
        this.weight = f;
        this.fill = z6;
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RowColumnParentData Q(@NotNull Density density, @Nullable Object obj) {
        t.j(density, "<this>");
        RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
        if (rowColumnParentData == null) {
            rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
        }
        rowColumnParentData.f(this.weight);
        rowColumnParentData.e(this.fill);
        return rowColumnParentData;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.weight) * 31) + androidx.compose.foundation.c.a(this.fill);
    }

    @NotNull
    public String toString() {
        return "LayoutWeightImpl(weight=" + this.weight + ", fill=" + this.fill + ')';
    }
}
