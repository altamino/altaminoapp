package androidx.compose.foundation;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
@Stable
public final class ScrollState implements ScrollableState {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Saver<ScrollState, ?> Saver = SaverKt.a(ScrollState$Companion$Saver$1.INSTANCE, ScrollState$Companion$Saver$2.INSTANCE);
    private float accumulator;

    @NotNull
    private final MutableState value$delegate;

    @NotNull
    private final MutableInteractionSource internalInteractionSource = InteractionSourceKt.a();

    @NotNull
    private MutableState<Integer> _maxValueState = SnapshotStateKt.g(Integer.MAX_VALUE, SnapshotStateKt.p());

    @NotNull
    private final ScrollableState scrollableState = ScrollableStateKt.a(new ScrollState$scrollableState$1(this));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Saver<ScrollState, ?> a() {
            return ScrollState.Saver;
        }
    }

    @NotNull
    public final MutableInteractionSource i() {
        return this.internalInteractionSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(int i10) {
        this.value$delegate.setValue(Integer.valueOf(i10));
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float a(float f) {
        return this.scrollableState.a(f);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    @Nullable
    public Object b(@NotNull MutatePriority mutatePriority, @NotNull p<? super ScrollScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar) {
        Object objB = this.scrollableState.b(mutatePriority, pVar, dVar);
        return objB == kotlin.coroutines.intrinsics.d.e() ? objB : l0.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean c() {
        return this.scrollableState.c();
    }

    public final int j() {
        return this._maxValueState.getValue().intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int k() {
        return ((Number) this.value$delegate.getValue()).intValue();
    }

    public final void l(int i10) {
        this._maxValueState.setValue(Integer.valueOf(i10));
        if (k() > i10) {
            m(i10);
        }
    }

    public ScrollState(int i10) {
        this.value$delegate = SnapshotStateKt.g(Integer.valueOf(i10), SnapshotStateKt.p());
    }

    @Nullable
    public final Object h(int i10, @NotNull AnimationSpec<Float> animationSpec, @NotNull d<? super l0> dVar) {
        Object objA = ScrollExtensionsKt.a(this, i10 - k(), animationSpec, dVar);
        if (objA == kotlin.coroutines.intrinsics.d.e()) {
            return objA;
        }
        return l0.INSTANCE;
    }
}
