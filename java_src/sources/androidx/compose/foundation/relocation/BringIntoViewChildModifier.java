package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.b;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class BringIntoViewChildModifier implements ModifierLocalConsumer, OnPlacedModifier {

    @NotNull
    private final BringIntoViewParent defaultParent;

    @Nullable
    private LayoutCoordinates layoutCoordinates;

    @Nullable
    private BringIntoViewParent localParent;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @NotNull
    protected final BringIntoViewParent c() {
        BringIntoViewParent bringIntoViewParent = this.localParent;
        return bringIntoViewParent == null ? this.defaultParent : bringIntoViewParent;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.OnPlacedModifier
    public void e(@NotNull LayoutCoordinates coordinates) {
        t.j(coordinates, "coordinates");
        this.layoutCoordinates = coordinates;
    }

    public BringIntoViewChildModifier(@NotNull BringIntoViewParent defaultParent) {
        t.j(defaultParent, "defaultParent");
        this.defaultParent = defaultParent;
    }

    @Nullable
    protected final LayoutCoordinates b() {
        LayoutCoordinates layoutCoordinates = this.layoutCoordinates;
        if (layoutCoordinates == null || !layoutCoordinates.Q()) {
            return null;
        }
        return layoutCoordinates;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        this.localParent = (BringIntoViewParent) scope.a(BringIntoViewKt.a());
    }
}
