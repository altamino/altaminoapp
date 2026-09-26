package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes8.dex */
public final class FocusManagerImpl implements FocusManager {

    @NotNull
    private final FocusModifier focusModifier;
    public LayoutDirection layoutDirection;

    @NotNull
    private final Modifier modifier;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Active.ordinal()] = 1;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 2;
            iArr[FocusStateImpl.Captured.ordinal()] = 3;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 4;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FocusManagerImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @NotNull
    public final Modifier f() {
        return this.modifier;
    }

    public final void h(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "<set-?>");
        this.layoutDirection = layoutDirection;
    }

    public FocusManagerImpl(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "focusModifier");
        this.focusModifier = focusModifier;
        this.modifier = FocusModifierKt.b(Modifier.Companion, focusModifier);
    }

    private final boolean j(int i10) {
        if (this.focusModifier.h().c() && !this.focusModifier.h().a()) {
            FocusDirection.Companion companion = FocusDirection.Companion;
            if (FocusDirection.l(i10, companion.d()) || FocusDirection.l(i10, companion.f())) {
                b(false);
                if (this.focusModifier.h().a()) {
                    return a(i10);
                }
                return false;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public boolean a(int i10) {
        FocusModifier focusModifierB = FocusTraversalKt.b(this.focusModifier);
        if (focusModifierB == null) {
            return false;
        }
        FocusRequester focusRequesterA = FocusOrderModifierKt.a(focusModifierB, i10, e());
        if (t.e(focusRequesterA, FocusRequester.Companion.a())) {
            return FocusTraversalKt.f(this.focusModifier, i10, e(), new FocusManagerImpl$moveFocus$1(focusModifierB)) || j(i10);
        }
        focusRequesterA.c();
        return true;
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public void b(boolean z6) {
        FocusStateImpl focusStateImpl;
        FocusStateImpl focusStateImplH = this.focusModifier.h();
        if (FocusTransactionsKt.c(this.focusModifier, z6)) {
            FocusModifier focusModifier = this.focusModifier;
            switch (WhenMappings.$EnumSwitchMapping$0[focusStateImplH.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    focusStateImpl = FocusStateImpl.Active;
                    break;
                case 4:
                case 5:
                    focusStateImpl = FocusStateImpl.Deactivated;
                    break;
                case 6:
                    focusStateImpl = FocusStateImpl.Inactive;
                    break;
                default:
                    throw new s();
            }
            focusModifier.s(focusStateImpl);
        }
    }

    public final void c() {
        FocusManagerKt.d(this.focusModifier);
    }

    @Nullable
    public final FocusModifier d() {
        return FocusManagerKt.c(this.focusModifier);
    }

    @NotNull
    public final LayoutDirection e() {
        LayoutDirection layoutDirection = this.layoutDirection;
        if (layoutDirection != null) {
            return layoutDirection;
        }
        t.B("layoutDirection");
        return null;
    }

    public final void g() {
        FocusTransactionsKt.c(this.focusModifier, true);
    }

    public final void i() {
        if (this.focusModifier.h() == FocusStateImpl.Inactive) {
            this.focusModifier.s(FocusStateImpl.Active);
        }
    }

    public /* synthetic */ FocusManagerImpl(FocusModifier focusModifier, int i10, k kVar) {
        this((i10 & 1) != 0 ? new FocusModifier(FocusStateImpl.Inactive, null, 2, null) : focusModifier);
    }
}
