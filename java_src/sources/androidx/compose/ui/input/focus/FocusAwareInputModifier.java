package androidx.compose.ui.input.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.input.focus.FocusAwareEvent;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class FocusAwareInputModifier<T extends FocusAwareEvent> implements ModifierLocalConsumer, ModifierLocalProvider<FocusAwareInputModifier<T>> {

    @Nullable
    private FocusAwareInputModifier<T> focusAwareEventParent;

    @NotNull
    private final ProvidableModifierLocal<FocusAwareInputModifier<T>> key;

    @Nullable
    private final l<FocusAwareEvent, Boolean> onEvent;

    @Nullable
    private final l<FocusAwareEvent, Boolean> onPreEvent;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FocusAwareInputModifier<T> getValue() {
        return this;
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
    public ProvidableModifierLocal<FocusAwareInputModifier<T>> getKey() {
        return this.key;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FocusAwareInputModifier(@Nullable l<? super FocusAwareEvent, Boolean> lVar, @Nullable l<? super FocusAwareEvent, Boolean> lVar2, @NotNull ProvidableModifierLocal<FocusAwareInputModifier<T>> key) {
        t.j(key, "key");
        this.onEvent = lVar;
        this.onPreEvent = lVar2;
        this.key = key;
    }

    private final boolean b(T t5) {
        l<FocusAwareEvent, Boolean> lVar = this.onEvent;
        if (lVar != null && lVar.invoke(t5).booleanValue()) {
            return true;
        }
        FocusAwareInputModifier<T> focusAwareInputModifier = this.focusAwareEventParent;
        if (focusAwareInputModifier != null) {
            return focusAwareInputModifier.b(t5);
        }
        return false;
    }

    private final boolean d(T t5) {
        FocusAwareInputModifier<T> focusAwareInputModifier = this.focusAwareEventParent;
        if (focusAwareInputModifier != null && focusAwareInputModifier.d(t5)) {
            return true;
        }
        l<FocusAwareEvent, Boolean> lVar = this.onPreEvent;
        if (lVar != null) {
            return lVar.invoke(t5).booleanValue();
        }
        return false;
    }

    public final boolean c(@NotNull T event) {
        t.j(event, "event");
        return d(event) || b(event);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        this.focusAwareEventParent = (FocusAwareInputModifier) scope.a(getKey());
    }
}
