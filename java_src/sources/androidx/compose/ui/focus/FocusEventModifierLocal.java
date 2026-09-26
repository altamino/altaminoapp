package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.b;
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
public final class FocusEventModifierLocal implements ModifierLocalProvider<FocusEventModifierLocal>, ModifierLocalConsumer {

    @NotNull
    private final MutableVector<FocusEventModifierLocal> children;

    @NotNull
    private final MutableVector<FocusModifier> focusModifiers;

    @NotNull
    private final l<FocusState, l0> onFocusEvent;

    @Nullable
    private FocusEventModifierLocal parent;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Active.ordinal()] = 1;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 2;
            iArr[FocusStateImpl.Captured.ordinal()] = 3;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 4;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

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
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public FocusEventModifierLocal getValue() {
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FocusEventModifierLocal(@NotNull l<? super FocusState, l0> onFocusEvent) {
        t.j(onFocusEvent, "onFocusEvent");
        this.onFocusEvent = onFocusEvent;
        this.children = new MutableVector<>(new FocusEventModifierLocal[16], 0);
        this.focusModifiers = new MutableVector<>(new FocusModifier[16], 0);
    }

    private final void b(MutableVector<FocusModifier> mutableVector) {
        MutableVector<FocusModifier> mutableVector2 = this.focusModifiers;
        mutableVector2.c(mutableVector2.n(), mutableVector);
        FocusEventModifierLocal focusEventModifierLocal = this.parent;
        if (focusEventModifierLocal != null) {
            focusEventModifierLocal.b(mutableVector);
        }
    }

    private final void h(MutableVector<FocusModifier> mutableVector) {
        this.focusModifiers.t(mutableVector);
        FocusEventModifierLocal focusEventModifierLocal = this.parent;
        if (focusEventModifierLocal != null) {
            focusEventModifierLocal.h(mutableVector);
        }
    }

    public final void a(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "focusModifier");
        this.focusModifiers.b(focusModifier);
        FocusEventModifierLocal focusEventModifierLocal = this.parent;
        if (focusEventModifierLocal != null) {
            focusEventModifierLocal.a(focusModifier);
        }
    }

    public final void d() {
        if (this.focusModifiers.p()) {
            this.onFocusEvent.invoke(FocusStateImpl.Inactive);
        }
    }

    public final void f() {
        FocusStateImpl focusStateImplH;
        Boolean bool;
        int iN = this.focusModifiers.n();
        if (iN != 0) {
            int i10 = 0;
            if (iN != 1) {
                MutableVector<FocusModifier> mutableVector = this.focusModifiers;
                int iN2 = mutableVector.n();
                FocusModifier focusModifier = null;
                Boolean bool2 = null;
                if (iN2 > 0) {
                    FocusModifier[] focusModifierArrM = mutableVector.m();
                    FocusModifier focusModifier2 = null;
                    do {
                        FocusModifier focusModifier3 = focusModifierArrM[i10];
                        switch (WhenMappings.$EnumSwitchMapping$0[focusModifier3.h().ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                bool2 = Boolean.FALSE;
                                focusModifier2 = focusModifier3;
                                break;
                            case 5:
                                if (bool2 == null) {
                                    bool2 = Boolean.TRUE;
                                }
                                break;
                            case 6:
                                bool2 = Boolean.FALSE;
                                break;
                        }
                        i10++;
                    } while (i10 < iN2);
                    bool = bool2;
                    focusModifier = focusModifier2;
                } else {
                    bool = null;
                }
                if (focusModifier == null || (focusStateImplH = focusModifier.h()) == null) {
                    focusStateImplH = t.e(bool, Boolean.TRUE) ? FocusStateImpl.Deactivated : FocusStateImpl.Inactive;
                }
            } else {
                focusStateImplH = this.focusModifiers.m()[0].h();
            }
        } else {
            focusStateImplH = FocusStateImpl.Inactive;
        }
        this.onFocusEvent.invoke(focusStateImplH);
        FocusEventModifierLocal focusEventModifierLocal = this.parent;
        if (focusEventModifierLocal != null) {
            focusEventModifierLocal.f();
        }
    }

    public final void g(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "focusModifier");
        this.focusModifiers.s(focusModifier);
        FocusEventModifierLocal focusEventModifierLocal = this.parent;
        if (focusEventModifierLocal != null) {
            focusEventModifierLocal.g(focusModifier);
        }
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        FocusEventModifierLocal focusEventModifierLocal = (FocusEventModifierLocal) scope.a(FocusEventModifierKt.a());
        if (!t.e(focusEventModifierLocal, this.parent)) {
            FocusEventModifierLocal focusEventModifierLocal2 = this.parent;
            if (focusEventModifierLocal2 != null) {
                focusEventModifierLocal2.children.s(this);
                focusEventModifierLocal2.h(this.focusModifiers);
            }
            this.parent = focusEventModifierLocal;
            if (focusEventModifierLocal != null) {
                focusEventModifierLocal.children.b(this);
                focusEventModifierLocal.b(this.focusModifiers);
            }
        }
        this.parent = (FocusEventModifierLocal) scope.a(FocusEventModifierKt.a());
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<FocusEventModifierLocal> getKey() {
        return FocusEventModifierKt.a();
    }
}
