package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class OnGloballyPositionedModifierImpl extends InspectorValueInfo implements OnGloballyPositionedModifier {

    @NotNull
    private final l<LayoutCoordinates, l0> callback;

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
    public OnGloballyPositionedModifierImpl(@NotNull l<? super LayoutCoordinates, l0> callback, @NotNull l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(callback, "callback");
        t.j(inspectorInfo, "inspectorInfo");
        this.callback = callback;
    }

    @Override // androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void F0(@NotNull LayoutCoordinates coordinates) {
        t.j(coordinates, "coordinates");
        this.callback.invoke(coordinates);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OnGloballyPositionedModifierImpl) {
            return t.e(this.callback, ((OnGloballyPositionedModifierImpl) obj).callback);
        }
        return false;
    }

    public int hashCode() {
        return this.callback.hashCode();
    }
}
