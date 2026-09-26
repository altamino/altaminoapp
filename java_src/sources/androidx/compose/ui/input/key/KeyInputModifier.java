package androidx.compose.ui.input.key;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.focus.FocusModifier;
import androidx.compose.ui.focus.FocusModifierKt;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class KeyInputModifier implements ModifierLocalConsumer, ModifierLocalProvider<KeyInputModifier>, OnPlacedModifier {

    @Nullable
    private FocusModifier focusModifier;

    @Nullable
    private LayoutNode layoutNode;

    @Nullable
    private final l<KeyEvent, Boolean> onKeyEvent;

    @Nullable
    private final l<KeyEvent, Boolean> onPreviewKeyEvent;

    @Nullable
    private KeyInputModifier parent;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Nullable
    public final LayoutNode a() {
        return this.layoutNode;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Nullable
    public final KeyInputModifier b() {
        return this.parent;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public KeyInputModifier getValue() {
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    public final boolean d(@NotNull android.view.KeyEvent keyEvent) {
        FocusModifier focusModifierB;
        KeyInputModifier keyInputModifierD;
        t.j(keyEvent, "keyEvent");
        FocusModifier focusModifier = this.focusModifier;
        if (focusModifier == null || (focusModifierB = FocusTraversalKt.b(focusModifier)) == null || (keyInputModifierD = FocusTraversalKt.d(focusModifierB)) == null) {
            throw new IllegalStateException("KeyEvent can't be processed because this key input node is not active.".toString());
        }
        if (keyInputModifierD.g(keyEvent)) {
            return true;
        }
        return keyInputModifierD.f(keyEvent);
    }

    @Override // androidx.compose.ui.layout.OnPlacedModifier
    public void e(@NotNull LayoutCoordinates coordinates) {
        t.j(coordinates, "coordinates");
        this.layoutNode = ((LayoutNodeWrapper) coordinates).x1();
    }

    public final boolean f(@NotNull android.view.KeyEvent keyEvent) {
        t.j(keyEvent, "keyEvent");
        l<KeyEvent, Boolean> lVar = this.onKeyEvent;
        Boolean boolInvoke = lVar != null ? lVar.invoke(KeyEvent.a(keyEvent)) : null;
        if (t.e(boolInvoke, Boolean.TRUE)) {
            return boolInvoke.booleanValue();
        }
        KeyInputModifier keyInputModifier = this.parent;
        if (keyInputModifier != null) {
            return keyInputModifier.f(keyEvent);
        }
        return false;
    }

    public final boolean g(@NotNull android.view.KeyEvent keyEvent) {
        t.j(keyEvent, "keyEvent");
        KeyInputModifier keyInputModifier = this.parent;
        Boolean boolValueOf = keyInputModifier != null ? Boolean.valueOf(keyInputModifier.g(keyEvent)) : null;
        if (t.e(boolValueOf, Boolean.TRUE)) {
            return boolValueOf.booleanValue();
        }
        l<KeyEvent, Boolean> lVar = this.onPreviewKeyEvent;
        if (lVar != null) {
            return lVar.invoke(KeyEvent.a(keyEvent)).booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        MutableVector<KeyInputModifier> mutableVectorJ;
        MutableVector<KeyInputModifier> mutableVectorJ2;
        t.j(scope, "scope");
        FocusModifier focusModifier = this.focusModifier;
        if (focusModifier != null && (mutableVectorJ2 = focusModifier.j()) != null) {
            mutableVectorJ2.s(this);
        }
        FocusModifier focusModifier2 = (FocusModifier) scope.a(FocusModifierKt.c());
        this.focusModifier = focusModifier2;
        if (focusModifier2 != null && (mutableVectorJ = focusModifier2.j()) != null) {
            mutableVectorJ.b(this);
        }
        this.parent = (KeyInputModifier) scope.a(KeyInputModifierKt.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public KeyInputModifier(@Nullable l<? super KeyEvent, Boolean> lVar, @Nullable l<? super KeyEvent, Boolean> lVar2) {
        this.onKeyEvent = lVar;
        this.onPreviewKeyEvent = lVar2;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<KeyInputModifier> getKey() {
        return KeyInputModifierKt.a();
    }
}
