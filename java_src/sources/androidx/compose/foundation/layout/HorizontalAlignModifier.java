package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class HorizontalAlignModifier extends InspectorValueInfo implements ParentDataModifier {

    @NotNull
    private final Alignment.Horizontal horizontal;

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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalAlignModifier(@NotNull Alignment.Horizontal horizontal, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(horizontal, "horizontal");
        t.j(inspectorInfo, "inspectorInfo");
        this.horizontal = horizontal;
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
        rowColumnParentData.d(CrossAxisAlignment.Companion.b(this.horizontal));
        return rowColumnParentData;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        HorizontalAlignModifier horizontalAlignModifier = obj instanceof HorizontalAlignModifier ? (HorizontalAlignModifier) obj : null;
        if (horizontalAlignModifier == null) {
            return false;
        }
        return t.e(this.horizontal, horizontalAlignModifier.horizontal);
    }

    public int hashCode() {
        return this.horizontal.hashCode();
    }

    @NotNull
    public String toString() {
        return "HorizontalAlignModifier(horizontal=" + this.horizontal + ')';
    }
}
