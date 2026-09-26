package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.PinnableParent;
import androidx.compose.foundation.lazy.layout.PinnableParentKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import e8.l;
import e8.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class LazyListPinningModifier implements ModifierLocalProvider<PinnableParent>, ModifierLocalConsumer, PinnableParent {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1 EmptyPinnedItemsHandle = new PinnableParent.PinnedItemsHandle() { // from class: androidx.compose.foundation.lazy.LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1
        @Override // androidx.compose.foundation.lazy.layout.PinnableParent.PinnedItemsHandle
        public void a() {
        }
    };

    @NotNull
    private final LazyListBeyondBoundsInfo beyondBoundsInfo;

    @Nullable
    private PinnableParent pinnableGrandParent;

    @NotNull
    private final LazyListState state;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
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

    @Nullable
    public final PinnableParent c() {
        return this.pinnableGrandParent;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public PinnableParent getValue() {
        return this;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    public LazyListPinningModifier(@NotNull LazyListState state, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo) {
        t.j(state, "state");
        t.j(beyondBoundsInfo, "beyondBoundsInfo");
        this.state = state;
        this.beyondBoundsInfo = beyondBoundsInfo;
    }

    @Override // androidx.compose.foundation.lazy.layout.PinnableParent
    @NotNull
    public PinnableParent.PinnedItemsHandle a() {
        PinnableParent.PinnedItemsHandle pinnedItemsHandleA;
        final LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo = this.beyondBoundsInfo;
        if (lazyListBeyondBoundsInfo.d()) {
            return new PinnableParent.PinnedItemsHandle(lazyListBeyondBoundsInfo) { // from class: androidx.compose.foundation.lazy.LazyListPinningModifier$pinItems$1$1
                final /* synthetic */ LazyListBeyondBoundsInfo $this_with;

                @NotNull
                private final LazyListBeyondBoundsInfo.Interval interval;

                @Nullable
                private final PinnableParent.PinnedItemsHandle parentPinnedItemsHandle;

                {
                    this.$this_with = lazyListBeyondBoundsInfo;
                    PinnableParent pinnableParentC = this.this$0.c();
                    this.parentPinnedItemsHandle = pinnableParentC != null ? pinnableParentC.a() : null;
                    this.interval = lazyListBeyondBoundsInfo.a(lazyListBeyondBoundsInfo.c(), lazyListBeyondBoundsInfo.b());
                }

                @Override // androidx.compose.foundation.lazy.layout.PinnableParent.PinnedItemsHandle
                public void a() {
                    this.$this_with.e(this.interval);
                    PinnableParent.PinnedItemsHandle pinnedItemsHandle = this.parentPinnedItemsHandle;
                    if (pinnedItemsHandle != null) {
                        pinnedItemsHandle.a();
                    }
                    Remeasurement remeasurementQ = this.this$0.state.q();
                    if (remeasurementQ != null) {
                        remeasurementQ.a();
                    }
                }
            };
        }
        PinnableParent pinnableParent = this.pinnableGrandParent;
        return (pinnableParent == null || (pinnedItemsHandleA = pinnableParent.a()) == null) ? EmptyPinnedItemsHandle : pinnedItemsHandleA;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        this.pinnableGrandParent = (PinnableParent) scope.a(PinnableParentKt.a());
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<PinnableParent> getKey() {
        return PinnableParentKt.a();
    }
}
