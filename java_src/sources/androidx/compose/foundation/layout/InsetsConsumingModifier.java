package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
@Stable
abstract class InsetsConsumingModifier extends InspectorValueInfo implements ModifierLocalConsumer, ModifierLocalProvider<WindowInsets> {

    @NotNull
    private final MutableState consumedInsets$delegate;

    public /* synthetic */ InsetsConsumingModifier(e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(lVar);
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
    public abstract WindowInsets a(@NotNull WindowInsets windowInsets);

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    private InsetsConsumingModifier(e8.l<? super InspectorInfo, l0> lVar) {
        super(lVar);
        this.consumedInsets$delegate = SnapshotStateKt__SnapshotStateKt.e(WindowInsetsKt.a(0, 0, 0, 0), null, 2, null);
    }

    private final WindowInsets b() {
        return (WindowInsets) this.consumedInsets$delegate.getValue();
    }

    private final void d(WindowInsets windowInsets) {
        this.consumedInsets$delegate.setValue(windowInsets);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        d(a((WindowInsets) scope.a(WindowInsetsPaddingKt.a())));
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public WindowInsets getValue() {
        return b();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<WindowInsets> getKey() {
        return WindowInsetsPaddingKt.a();
    }
}
