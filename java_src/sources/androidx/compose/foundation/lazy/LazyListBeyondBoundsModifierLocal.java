package androidx.compose.foundation.lazy;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.layout.BeyondBoundsLayoutKt;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.p;
import kotlin.collections.d0;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.s;

/* JADX INFO: loaded from: classes4.dex */
final class LazyListBeyondBoundsModifierLocal implements ModifierLocalProvider<BeyondBoundsLayout>, BeyondBoundsLayout {

    @NotNull
    private final LazyListBeyondBoundsInfo beyondBoundsInfo;

    @NotNull
    private final LayoutDirection layoutDirection;
    private final boolean reverseLayout;

    @NotNull
    private final LazyListState state;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

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

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public BeyondBoundsLayout getValue() {
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    public LazyListBeyondBoundsModifierLocal(@NotNull LazyListState state, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo, boolean z6, @NotNull LayoutDirection layoutDirection) {
        t.j(state, "state");
        t.j(beyondBoundsInfo, "beyondBoundsInfo");
        t.j(layoutDirection, "layoutDirection");
        this.state = state;
        this.beyondBoundsInfo = beyondBoundsInfo;
        this.reverseLayout = z6;
        this.layoutDirection = layoutDirection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean f(LazyListBeyondBoundsInfo.Interval interval, int i10) {
        BeyondBoundsLayout.LayoutDirection.Companion companion = BeyondBoundsLayout.LayoutDirection.Companion;
        if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.c())) {
            return h(interval);
        }
        if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.b())) {
            return g(interval, this);
        }
        if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.a())) {
            return this.reverseLayout ? g(interval, this) : h(interval);
        }
        if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.d())) {
            return this.reverseLayout ? h(interval) : g(interval, this);
        }
        if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.e())) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[this.layoutDirection.ordinal()];
            if (i11 == 1) {
                return this.reverseLayout ? g(interval, this) : h(interval);
            }
            if (i11 == 2) {
                return this.reverseLayout ? h(interval) : g(interval, this);
            }
            throw new s();
        }
        if (!BeyondBoundsLayout.LayoutDirection.i(i10, companion.f())) {
            LazyBeyondBoundsModifierKt.c();
            throw new i();
        }
        int i12 = WhenMappings.$EnumSwitchMapping$0[this.layoutDirection.ordinal()];
        if (i12 == 1) {
            return this.reverseLayout ? h(interval) : g(interval, this);
        }
        if (i12 == 2) {
            return this.reverseLayout ? g(interval, this) : h(interval);
        }
        throw new s();
    }

    @Override // androidx.compose.ui.layout.BeyondBoundsLayout
    @Nullable
    public <T> T a(final int i10, @NotNull l<? super BeyondBoundsLayout.BeyondBoundsScope, ? extends T> block) {
        t.j(block, "block");
        final p0 p0Var = new p0();
        p0Var.element = (T) this.beyondBoundsInfo.a(this.state.j(), ((LazyListItemInfo) d0.v0(this.state.m().b())).getIndex());
        T tInvoke = null;
        while (tInvoke == null && f((LazyListBeyondBoundsInfo.Interval) p0Var.element, i10)) {
            T t5 = (T) c((LazyListBeyondBoundsInfo.Interval) p0Var.element, i10);
            this.beyondBoundsInfo.e((LazyListBeyondBoundsInfo.Interval) p0Var.element);
            p0Var.element = t5;
            Remeasurement remeasurementQ = this.state.q();
            if (remeasurementQ != null) {
                remeasurementQ.a();
            }
            tInvoke = block.invoke(new BeyondBoundsLayout.BeyondBoundsScope() { // from class: androidx.compose.foundation.lazy.LazyListBeyondBoundsModifierLocal$layout$2
                @Override // androidx.compose.ui.layout.BeyondBoundsLayout.BeyondBoundsScope
                public boolean a() {
                    return this.this$0.f(p0Var.element, i10);
                }
            });
        }
        this.beyondBoundsInfo.e((LazyListBeyondBoundsInfo.Interval) p0Var.element);
        Remeasurement remeasurementQ2 = this.state.q();
        if (remeasurementQ2 != null) {
            remeasurementQ2.a();
        }
        return tInvoke;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0014  */
    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    private final LazyListBeyondBoundsInfo.Interval c(LazyListBeyondBoundsInfo.Interval interval, int i10) {
        int iB = interval.b();
        int iA = interval.a();
        BeyondBoundsLayout.LayoutDirection.Companion companion = BeyondBoundsLayout.LayoutDirection.Companion;
        if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.c())) {
            iB--;
        } else if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.b())) {
            iA++;
        } else if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.a())) {
            if (!this.reverseLayout) {
                iB--;
            } else {
                iA++;
            }
        } else if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.d())) {
            if (this.reverseLayout) {
                iB--;
            } else {
                iA++;
            }
        } else if (BeyondBoundsLayout.LayoutDirection.i(i10, companion.e())) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[this.layoutDirection.ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    if (this.reverseLayout) {
                        iB--;
                    } else {
                        iA++;
                    }
                }
            } else if (!this.reverseLayout) {
                iB--;
            } else {
                iA++;
            }
        } else {
            if (!BeyondBoundsLayout.LayoutDirection.i(i10, companion.f())) {
                LazyBeyondBoundsModifierKt.c();
                throw new i();
            }
            int i12 = WhenMappings.$EnumSwitchMapping$0[this.layoutDirection.ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    if (!this.reverseLayout) {
                        iB--;
                    } else {
                        iA++;
                    }
                }
            } else if (this.reverseLayout) {
                iB--;
            } else {
                iA++;
            }
        }
        return this.beyondBoundsInfo.a(iB, iA);
    }

    private static final boolean g(LazyListBeyondBoundsInfo.Interval interval, LazyListBeyondBoundsModifierLocal lazyListBeyondBoundsModifierLocal) {
        if (interval.a() < lazyListBeyondBoundsModifierLocal.state.m().a() - 1) {
            return true;
        }
        return false;
    }

    private static final boolean h(LazyListBeyondBoundsInfo.Interval interval) {
        if (interval.b() > 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<BeyondBoundsLayout> getKey() {
        return BeyondBoundsLayoutKt.a();
    }
}
