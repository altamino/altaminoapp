package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.b;
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

/* JADX INFO: loaded from: classes5.dex */
public final class FocusRequesterModifierLocal implements ModifierLocalConsumer, ModifierLocalProvider<FocusRequesterModifierLocal> {

    @NotNull
    private final MutableVector<FocusModifier> focusModifiers;

    @NotNull
    private final FocusRequester focusRequester;

    @Nullable
    private FocusRequesterModifierLocal parent;

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

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public FocusRequesterModifierLocal getValue() {
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    public FocusRequesterModifierLocal(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "focusRequester");
        this.focusRequester = focusRequester;
        this.focusModifiers = new MutableVector<>(new FocusModifier[16], 0);
        focusRequester.b().b(this);
    }

    public final void a(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "focusModifier");
        this.focusModifiers.b(focusModifier);
        FocusRequesterModifierLocal focusRequesterModifierLocal = this.parent;
        if (focusRequesterModifierLocal != null) {
            focusRequesterModifierLocal.a(focusModifier);
        }
    }

    public final void b(@NotNull MutableVector<FocusModifier> newModifiers) {
        t.j(newModifiers, "newModifiers");
        MutableVector<FocusModifier> mutableVector = this.focusModifiers;
        mutableVector.c(mutableVector.n(), newModifiers);
        FocusRequesterModifierLocal focusRequesterModifierLocal = this.parent;
        if (focusRequesterModifierLocal != null) {
            focusRequesterModifierLocal.b(newModifiers);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0085  */
    @Nullable
    public final FocusModifier c() {
        LayoutNodeWrapper layoutNodeWrapperL;
        LayoutNode layoutNodeX1;
        LayoutNode layoutNodeX2;
        MutableVector<FocusModifier> mutableVector = this.focusModifiers;
        int iN = mutableVector.n();
        FocusModifier focusModifier = null;
        if (iN > 0) {
            FocusModifier[] focusModifierArrM = mutableVector.m();
            int i10 = 0;
            do {
                FocusModifier focusModifier2 = focusModifierArrM[i10];
                if (focusModifier == null || (layoutNodeWrapperL = focusModifier.l()) == null || (layoutNodeX1 = layoutNodeWrapperL.x1()) == null) {
                    focusModifier = focusModifier2;
                } else {
                    LayoutNodeWrapper layoutNodeWrapperL2 = focusModifier2.l();
                    if (layoutNodeWrapperL2 != null && (layoutNodeX2 = layoutNodeWrapperL2.x1()) != null) {
                        while (layoutNodeX1.U() > layoutNodeX2.U()) {
                            layoutNodeX1 = layoutNodeX1.t0();
                            t.g(layoutNodeX1);
                        }
                        while (layoutNodeX2.U() > layoutNodeX1.U()) {
                            layoutNodeX2 = layoutNodeX2.t0();
                            t.g(layoutNodeX2);
                        }
                        while (!t.e(layoutNodeX1.t0(), layoutNodeX2.t0())) {
                            layoutNodeX1 = layoutNodeX1.t0();
                            t.g(layoutNodeX1);
                            layoutNodeX2 = layoutNodeX2.t0();
                            t.g(layoutNodeX2);
                        }
                        LayoutNode layoutNodeT0 = layoutNodeX1.t0();
                        t.g(layoutNodeT0);
                        MutableVector<LayoutNode> mutableVectorZ0 = layoutNodeT0.z0();
                        if (mutableVectorZ0.o(layoutNodeX1) >= mutableVectorZ0.o(layoutNodeX2)) {
                            focusModifier = focusModifier2;
                        }
                    }
                }
                i10++;
            } while (i10 < iN);
        }
        return focusModifier;
    }

    public final void f(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "focusModifier");
        this.focusModifiers.s(focusModifier);
        FocusRequesterModifierLocal focusRequesterModifierLocal = this.parent;
        if (focusRequesterModifierLocal != null) {
            focusRequesterModifierLocal.f(focusModifier);
        }
    }

    public final void g(@NotNull MutableVector<FocusModifier> removedModifiers) {
        t.j(removedModifiers, "removedModifiers");
        this.focusModifiers.t(removedModifiers);
        FocusRequesterModifierLocal focusRequesterModifierLocal = this.parent;
        if (focusRequesterModifierLocal != null) {
            focusRequesterModifierLocal.g(removedModifiers);
        }
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        FocusRequesterModifierLocal focusRequesterModifierLocal = (FocusRequesterModifierLocal) scope.a(FocusRequesterModifierKt.b());
        if (t.e(focusRequesterModifierLocal, this.parent)) {
            return;
        }
        FocusRequesterModifierLocal focusRequesterModifierLocal2 = this.parent;
        if (focusRequesterModifierLocal2 != null) {
            focusRequesterModifierLocal2.g(this.focusModifiers);
        }
        if (focusRequesterModifierLocal != null) {
            focusRequesterModifierLocal.b(this.focusModifiers);
        }
        this.parent = focusRequesterModifierLocal;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<FocusRequesterModifierLocal> getKey() {
        return FocusRequesterModifierKt.b();
    }
}
