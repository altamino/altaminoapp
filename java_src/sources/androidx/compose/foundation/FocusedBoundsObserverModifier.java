package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class FocusedBoundsObserverModifier implements ModifierLocalConsumer, ModifierLocalProvider<l<? super LayoutCoordinates, ? extends l0>>, l<LayoutCoordinates, l0> {

    @NotNull
    private final l<LayoutCoordinates, l0> handler;

    @Nullable
    private LayoutCoordinates lastBounds;

    @Nullable
    private l<? super LayoutCoordinates, l0> parent;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public l<LayoutCoordinates, l0> getValue() {
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FocusedBoundsObserverModifier(@NotNull l<? super LayoutCoordinates, l0> handler) {
        t.j(handler, "handler");
        this.handler = handler;
    }

    public void b(@Nullable LayoutCoordinates layoutCoordinates) {
        this.lastBounds = layoutCoordinates;
        this.handler.invoke(layoutCoordinates);
        l<? super LayoutCoordinates, l0> lVar = this.parent;
        if (lVar != null) {
            lVar.invoke(layoutCoordinates);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        b(layoutCoordinates);
        return l0.INSTANCE;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        l<? super LayoutCoordinates, l0> lVar = (l) scope.a(FocusedBoundsKt.a());
        if (t.e(lVar, this.parent)) {
            return;
        }
        this.parent = lVar;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<l<? super LayoutCoordinates, ? extends l0>> getKey() {
        return FocusedBoundsKt.a();
    }
}
