package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class OnSizeChangedModifier extends InspectorValueInfo implements OnRemeasuredModifier {

    @NotNull
    private final l<IntSize, l0> onSizeChanged;
    private long previousSize;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OnSizeChangedModifier(@NotNull l<? super IntSize, l0> onSizeChanged, @NotNull l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(onSizeChanged, "onSizeChanged");
        t.j(inspectorInfo, "inspectorInfo");
        this.onSizeChanged = onSizeChanged;
        this.previousSize = IntSizeKt.a(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // androidx.compose.ui.layout.OnRemeasuredModifier
    public void b0(long j6) {
        if (IntSize.e(this.previousSize, j6)) {
            return;
        }
        this.onSizeChanged.invoke(IntSize.b(j6));
        this.previousSize = j6;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OnSizeChangedModifier) {
            return t.e(this.onSizeChanged, ((OnSizeChangedModifier) obj).onSizeChanged);
        }
        return false;
    }

    public int hashCode() {
        return this.onSizeChanged.hashCode();
    }
}
