package androidx.compose.ui.modifier;

import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.platform.InspectorValueInfo;
import e8.l;
import e8.p;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class ModifierLocalProviderKt$modifierLocalProvider$1 extends InspectorValueInfo implements ModifierLocalProvider<Object> {

    @NotNull
    private final ProvidableModifierLocal<Object> key;

    @NotNull
    private final State value$delegate;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<Object> getKey() {
        return this.key;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    public Object getValue() {
        return this.value$delegate.getValue();
    }
}
