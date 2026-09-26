package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class FocusedBoundsModifier implements ModifierLocalConsumer, OnGloballyPositionedModifier {

    @Nullable
    private LayoutCoordinates layoutCoordinates;

    @Nullable
    private l<? super LayoutCoordinates, l0> observer;

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

    private final void a() {
        l<? super LayoutCoordinates, l0> lVar;
        LayoutCoordinates layoutCoordinates = this.layoutCoordinates;
        if (layoutCoordinates != null) {
            t.g(layoutCoordinates);
            if (!layoutCoordinates.Q() || (lVar = this.observer) == null) {
                return;
            }
            lVar.invoke(this.layoutCoordinates);
        }
    }

    @Override // androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void F0(@NotNull LayoutCoordinates coordinates) {
        t.j(coordinates, "coordinates");
        this.layoutCoordinates = coordinates;
        if (coordinates.Q()) {
            a();
            return;
        }
        l<? super LayoutCoordinates, l0> lVar = this.observer;
        if (lVar != null) {
            lVar.invoke(null);
        }
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        l<? super LayoutCoordinates, l0> lVar;
        t.j(scope, "scope");
        l<? super LayoutCoordinates, l0> lVar2 = (l) scope.a(FocusedBoundsKt.a());
        if (lVar2 == null && (lVar = this.observer) != null) {
            lVar.invoke(null);
        }
        this.observer = lVar2;
    }
}
