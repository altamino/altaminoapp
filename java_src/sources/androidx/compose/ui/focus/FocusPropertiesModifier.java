package androidx.compose.ui.focus;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.b;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
@Stable
public final class FocusPropertiesModifier extends InspectorValueInfo implements ModifierLocalConsumer, ModifierLocalProvider<FocusPropertiesModifier> {

    @NotNull
    private final l<FocusProperties, l0> focusPropertiesScope;

    @NotNull
    private final ProvidableModifierLocal<FocusPropertiesModifier> key;

    @NotNull
    private final MutableState parent$delegate;

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
    public final l<FocusProperties, l0> b() {
        return this.focusPropertiesScope;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public FocusPropertiesModifier getValue() {
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<FocusPropertiesModifier> getKey() {
        return this.key;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FocusPropertiesModifier(@NotNull l<? super FocusProperties, l0> focusPropertiesScope, @NotNull l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(focusPropertiesScope, "focusPropertiesScope");
        t.j(inspectorInfo, "inspectorInfo");
        this.focusPropertiesScope = focusPropertiesScope;
        this.parent$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.key = FocusPropertiesKt.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final FocusPropertiesModifier c() {
        return (FocusPropertiesModifier) this.parent$delegate.getValue();
    }

    private final void f(FocusPropertiesModifier focusPropertiesModifier) {
        this.parent$delegate.setValue(focusPropertiesModifier);
    }

    public final void a(@NotNull FocusProperties focusProperties) {
        t.j(focusProperties, "focusProperties");
        this.focusPropertiesScope.invoke(focusProperties);
        FocusPropertiesModifier focusPropertiesModifierC = c();
        if (focusPropertiesModifierC != null) {
            focusPropertiesModifierC.a(focusProperties);
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof FocusPropertiesModifier) && t.e(this.focusPropertiesScope, ((FocusPropertiesModifier) obj).focusPropertiesScope);
    }

    public int hashCode() {
        return this.focusPropertiesScope.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        f((FocusPropertiesModifier) scope.a(FocusPropertiesKt.c()));
    }
}
