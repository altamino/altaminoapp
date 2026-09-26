package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class BoxChildData extends InspectorValueInfo implements ParentDataModifier {

    @NotNull
    private Alignment alignment;
    private boolean matchParentSize;

    public /* synthetic */ BoxChildData(Alignment alignment, boolean z6, e8.l lVar, int i10, kotlin.jvm.internal.k kVar) {
        this(alignment, (i10 & 2) != 0 ? false : z6, (i10 & 4) != 0 ? InspectableValueKt.a() : lVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @NotNull
    public final Alignment a() {
        return this.alignment;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    public final boolean b() {
        return this.matchParentSize;
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public BoxChildData Q(@NotNull Density density, @Nullable Object obj) {
        t.j(density, "<this>");
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        BoxChildData boxChildData = obj instanceof BoxChildData ? (BoxChildData) obj : null;
        if (boxChildData == null) {
            return false;
        }
        return t.e(this.alignment, boxChildData.alignment) && this.matchParentSize == boxChildData.matchParentSize;
    }

    public int hashCode() {
        return (this.alignment.hashCode() * 31) + androidx.compose.foundation.c.a(this.matchParentSize);
    }

    @NotNull
    public String toString() {
        return "BoxChildData(alignment=" + this.alignment + ", matchParentSize=" + this.matchParentSize + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BoxChildData(@NotNull Alignment alignment, boolean z6, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(alignment, "alignment");
        t.j(inspectorInfo, "inspectorInfo");
        this.alignment = alignment;
        this.matchParentSize = z6;
    }
}
