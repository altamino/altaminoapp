package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.e;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.p;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
@ExperimentalAnimationApi
public final class AnimatedContentScope<S> implements Transition.Segment<S> {
    public static final int $stable = 8;

    @Nullable
    private State<IntSize> animatedSize;

    @NotNull
    private Alignment contentAlignment;

    @NotNull
    private LayoutDirection layoutDirection;

    @NotNull
    private final MutableState measuredSize$delegate;

    @NotNull
    private final Map<S, State<IntSize>> targetSizeMap;

    @NotNull
    private final Transition<S> transition;

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalAnimationApi
    final class SizeModifier extends LayoutModifierWithPassThroughIntrinsics {

        @NotNull
        private final Transition<S>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation;

        @NotNull
        private final State<SizeTransform> sizeTransform;
        final /* synthetic */ AnimatedContentScope<S> this$0;

        @NotNull
        public final State<SizeTransform> a() {
            return this.sizeTransform;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SizeModifier(@NotNull AnimatedContentScope animatedContentScope, @NotNull Transition<S>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation, State<? extends SizeTransform> sizeTransform) {
            t.j(sizeAnimation, "sizeAnimation");
            t.j(sizeTransform, "sizeTransform");
            this.this$0 = animatedContentScope;
            this.sizeAnimation = sizeAnimation;
            this.sizeTransform = sizeTransform;
        }

        @Override // androidx.compose.ui.layout.LayoutModifier
        @NotNull
        public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
            t.j(measure, "$this$measure");
            t.j(measurable, "measurable");
            Placeable placeableB0 = measurable.b0(j6);
            State<IntSize> stateA = this.sizeAnimation.a(new AnimatedContentScope$SizeModifier$measure$size$1(this.this$0, this), new AnimatedContentScope$SizeModifier$measure$size$2(this.this$0));
            this.this$0.o(stateA);
            return MeasureScope.CC.b(measure, IntSize.g(stateA.getValue().j()), IntSize.f(stateA.getValue().j()), null, new AnimatedContentScope$SizeModifier$measure$1(placeableB0, this.this$0.j().a(IntSizeKt.a(placeableB0.Q0(), placeableB0.B0()), stateA.getValue().j(), LayoutDirection.Ltr)), 4, null);
        }
    }

    @Immutable
    public static final class SlideDirection {
        private final int value;

        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int Left = a(0);
        private static final int Right = a(1);
        private static final int Up = a(2);
        private static final int Down = a(3);
        private static final int Start = a(4);
        private static final int End = a(5);

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        public static int a(int i10) {
            return i10;
        }

        public static boolean b(int i10, Object obj) {
            return (obj instanceof SlideDirection) && i10 == ((SlideDirection) obj).f();
        }

        public static final boolean c(int i10, int i11) {
            return i10 == i11;
        }

        public static int d(int i10) {
            return i10;
        }

        public boolean equals(Object obj) {
            return b(this.value, obj);
        }

        public final /* synthetic */ int f() {
            return this.value;
        }

        public int hashCode() {
            return d(this.value);
        }

        @NotNull
        public static String e(int i10) {
            if (c(i10, Left)) {
                return "Left";
            }
            if (c(i10, Right)) {
                return "Right";
            }
            if (c(i10, Up)) {
                return "Up";
            }
            if (c(i10, Down)) {
                return "Down";
            }
            if (c(i10, Start)) {
                return "Start";
            }
            return c(i10, End) ? "End" : "Invalid";
        }

        @NotNull
        public String toString() {
            return e(this.value);
        }
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public /* synthetic */ boolean a(Object obj, Object obj2) {
        return e.a(this, obj, obj2);
    }

    @NotNull
    public final Alignment j() {
        return this.contentAlignment;
    }

    @NotNull
    public final Map<S, State<IntSize>> m() {
        return this.targetSizeMap;
    }

    @NotNull
    public final Transition<S> n() {
        return this.transition;
    }

    public final void o(@Nullable State<IntSize> state) {
        this.animatedSize = state;
    }

    public final void p(@NotNull Alignment alignment) {
        t.j(alignment, "<set-?>");
        this.contentAlignment = alignment;
    }

    public final void q(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "<set-?>");
        this.layoutDirection = layoutDirection;
    }

    public static final class ChildData implements ParentDataModifier {
        private boolean isTarget;

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Modifier B(Modifier modifier) {
            return a.a(this, modifier);
        }

        @Override // androidx.compose.ui.layout.ParentDataModifier
        @NotNull
        public Object Q(@NotNull Density density, @Nullable Object obj) {
            t.j(density, "<this>");
            return this;
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object V(Object obj, p pVar) {
            return b.c(this, obj, pVar);
        }

        public final boolean a() {
            return this.isTarget;
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object a0(Object obj, p pVar) {
            return b.b(this, obj, pVar);
        }

        public final void b(boolean z6) {
            this.isTarget = z6;
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ boolean d0(l lVar) {
            return b.a(this, lVar);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChildData) && this.isTarget == ((ChildData) obj).isTarget;
        }

        public int hashCode() {
            boolean z6 = this.isTarget;
            if (z6) {
                return 1;
            }
            return z6 ? 1 : 0;
        }

        @NotNull
        public String toString() {
            return "ChildData(isTarget=" + this.isTarget + ')';
        }

        public ChildData(boolean z6) {
            this.isTarget = z6;
        }
    }

    public AnimatedContentScope(@NotNull Transition<S> transition, @NotNull Alignment contentAlignment, @NotNull LayoutDirection layoutDirection) {
        t.j(transition, "transition");
        t.j(contentAlignment, "contentAlignment");
        t.j(layoutDirection, "layoutDirection");
        this.transition = transition;
        this.contentAlignment = contentAlignment;
        this.layoutDirection = layoutDirection;
        this.measuredSize$delegate = SnapshotStateKt__SnapshotStateKt.e(IntSize.b(IntSize.Companion.a()), null, 2, null);
        this.targetSizeMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long f(long j6, long j10) {
        return this.contentAlignment.a(j6, j10, LayoutDirection.Ltr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long k() {
        State<IntSize> state = this.animatedSize;
        return state != null ? state.getValue().j() : l();
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public S b() {
        return this.transition.k().b();
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public S c() {
        return this.transition.k().c();
    }

    @Composable
    @NotNull
    public final Modifier g(@NotNull ContentTransform contentTransform, @Nullable Composer composer, int i10) {
        Modifier modifier;
        t.j(contentTransform, "contentTransform");
        composer.G(-1349251863);
        composer.G(1157296644);
        boolean zK = composer.k(this);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        State stateN = SnapshotStateKt.n(contentTransform.b(), composer, 0);
        if (t.e(this.transition.g(), this.transition.m())) {
            i(mutableState, false);
        } else if (stateN.getValue() != null) {
            i(mutableState, true);
        }
        if (h(mutableState)) {
            Transition.DeferredAnimation deferredAnimationB = androidx.compose.animation.core.TransitionKt.b(this.transition, VectorConvertersKt.h(IntSize.Companion), null, composer, 64, 2);
            composer.G(1157296644);
            boolean zK2 = composer.k(deferredAnimationB);
            Object objH2 = composer.H();
            if (zK2 || objH2 == Composer.Companion.a()) {
                SizeTransform sizeTransform = (SizeTransform) stateN.getValue();
                objH2 = ((sizeTransform == null || sizeTransform.b()) ? ClipKt.b(Modifier.Companion) : Modifier.Companion).B(new SizeModifier(this, deferredAnimationB, stateN));
                composer.z(objH2);
            }
            composer.Q();
            modifier = (Modifier) objH2;
        } else {
            this.animatedSize = null;
            modifier = Modifier.Companion;
        }
        composer.Q();
        return modifier;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long l() {
        return ((IntSize) this.measuredSize$delegate.getValue()).j();
    }

    public final void r(long j6) {
        this.measuredSize$delegate.setValue(IntSize.b(j6));
    }

    private static final boolean h(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void i(MutableState<Boolean> mutableState, boolean z6) {
        mutableState.setValue(Boolean.valueOf(z6));
    }
}
