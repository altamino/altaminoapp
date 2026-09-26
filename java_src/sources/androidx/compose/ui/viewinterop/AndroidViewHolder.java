package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.NestedScrollInteropConnectionKt;
import androidx.compose.ui.platform.WindowRecomposer_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import e8.l;
import e8.p;
import j8.o;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidViewHolder extends ViewGroup implements NestedScrollingParent3 {

    @NotNull
    private Density density;

    @NotNull
    private final NestedScrollDispatcher dispatcher;
    private boolean hasUpdateBlock;
    private int lastHeightMeasureSpec;
    private int lastWidthMeasureSpec;

    @NotNull
    private final LayoutNode layoutNode;

    @Nullable
    private LifecycleOwner lifecycleOwner;

    @NotNull
    private final int[] location;

    @NotNull
    private Modifier modifier;

    @NotNull
    private final NestedScrollingParentHelper nestedScrollingParentHelper;

    @NotNull
    private final l<AndroidViewHolder, l0> onCommitAffectingUpdate;

    @Nullable
    private l<? super Density, l0> onDensityChanged;

    @Nullable
    private l<? super Modifier, l0> onModifierChanged;

    @Nullable
    private l<? super Boolean, l0> onRequestDisallowInterceptTouchEvent;

    @NotNull
    private final e8.a<l0> runUpdate;

    @Nullable
    private SavedStateRegistryOwner savedStateRegistryOwner;

    @NotNull
    private final SnapshotStateObserver snapshotObserver;

    @NotNull
    private e8.a<l0> update;

    @Nullable
    private View view;

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1, reason: invalid class name */
    @f(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1", f = "AndroidViewHolder.android.kt", l = {470, 475}, m = "invokeSuspend")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ boolean $consumed;
        final /* synthetic */ long $viewVelocity;
        int label;
        final /* synthetic */ AndroidViewHolder this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z6, AndroidViewHolder androidViewHolder, long j6, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$consumed = z6;
            this.this$0 = androidViewHolder;
            this.$viewVelocity = j6;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$consumed, this.this$0, this.$viewVelocity, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            } else {
                w.b(obj);
                if (!this.$consumed) {
                    NestedScrollDispatcher nestedScrollDispatcher = this.this$0.dispatcher;
                    long jA = Velocity.Companion.a();
                    long j6 = this.$viewVelocity;
                    this.label = 1;
                    if (nestedScrollDispatcher.a(jA, j6, this) == objE) {
                        return objE;
                    }
                } else {
                    NestedScrollDispatcher nestedScrollDispatcher2 = this.this$0.dispatcher;
                    long j10 = this.$viewVelocity;
                    long jA2 = Velocity.Companion.a();
                    this.label = 2;
                    if (nestedScrollDispatcher2.a(j10, jA2, this) == objE) {
                        return objE;
                    }
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1, reason: invalid class name and case insensitive filesystem */
    @f(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1", f = "AndroidViewHolder.android.kt", l = {488}, m = "invokeSuspend")
    static final class C05111 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ long $toBeConsumed;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05111(long j6, d<? super C05111> dVar) {
            super(2, dVar);
            this.$toBeConsumed = j6;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return AndroidViewHolder.this.new C05111(this.$toBeConsumed, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((C05111) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                NestedScrollDispatcher nestedScrollDispatcher = AndroidViewHolder.this.dispatcher;
                long j6 = this.$toBeConsumed;
                this.label = 1;
                if (nestedScrollDispatcher.c(j6, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean gatherTransparentRegion(@Nullable Region region) {
        if (region == null) {
            return true;
        }
        getLocationInWindow(this.location);
        int[] iArr = this.location;
        int i10 = iArr[0];
        region.op(i10, iArr[1], i10 + getWidth(), this.location[1] + getHeight(), Region.Op.DIFFERENCE);
        return true;
    }

    @NotNull
    public final Density getDensity() {
        return this.density;
    }

    @NotNull
    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    @Nullable
    public final LifecycleOwner getLifecycleOwner() {
        return this.lifecycleOwner;
    }

    @NotNull
    public final Modifier getModifier() {
        return this.modifier;
    }

    @Nullable
    public final l<Density, l0> getOnDensityChanged$ui_release() {
        return this.onDensityChanged;
    }

    @Nullable
    public final l<Modifier, l0> getOnModifierChanged$ui_release() {
        return this.onModifierChanged;
    }

    @Nullable
    public final l<Boolean, l0> getOnRequestDisallowInterceptTouchEvent$ui_release() {
        return this.onRequestDisallowInterceptTouchEvent;
    }

    @Nullable
    public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
        return this.savedStateRegistryOwner;
    }

    @NotNull
    public final e8.a<l0> getUpdate() {
        return this.update;
    }

    @Nullable
    public final View getView() {
        return this.view;
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NotNull View target, int i10, int i11, int i12, int i13, int i14, @NotNull int[] consumed) {
        t.j(target, "target");
        t.j(consumed, "consumed");
        if (isNestedScrollingEnabled()) {
            long jB = this.dispatcher.b(OffsetKt.a(AndroidViewHolder_androidKt.f(i10), AndroidViewHolder_androidKt.f(i11)), OffsetKt.a(AndroidViewHolder_androidKt.f(i12), AndroidViewHolder_androidKt.f(i13)), AndroidViewHolder_androidKt.h(i14));
            consumed[0] = NestedScrollInteropConnectionKt.f(Offset.m(jB));
            consumed[1] = NestedScrollInteropConnectionKt.f(Offset.n(jB));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NotNull View child, @NotNull View target, int i10, int i11) {
        t.j(child, "child");
        t.j(target, "target");
        return ((i10 & 2) == 0 && (i10 & 1) == 0) ? false : true;
    }

    public final void setOnDensityChanged$ui_release(@Nullable l<? super Density, l0> lVar) {
        this.onDensityChanged = lVar;
    }

    public final void setOnModifierChanged$ui_release(@Nullable l<? super Modifier, l0> lVar) {
        this.onModifierChanged = lVar;
    }

    public final void setOnRequestDisallowInterceptTouchEvent$ui_release(@Nullable l<? super Boolean, l0> lVar) {
        this.onRequestDisallowInterceptTouchEvent = lVar;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder(@NotNull Context context, @Nullable CompositionContext compositionContext, @NotNull NestedScrollDispatcher dispatcher) {
        super(context);
        t.j(context, "context");
        t.j(dispatcher, "dispatcher");
        this.dispatcher = dispatcher;
        if (compositionContext != null) {
            WindowRecomposer_androidKt.i(this, compositionContext);
        }
        setSaveFromParentEnabled(false);
        this.update = AndroidViewHolder$update$1.INSTANCE;
        Modifier.Companion companion = Modifier.Companion;
        this.modifier = companion;
        this.density = DensityKt.b(1.0f, 0.0f, 2, null);
        this.snapshotObserver = new SnapshotStateObserver(new AndroidViewHolder$snapshotObserver$1(this));
        this.onCommitAffectingUpdate = new AndroidViewHolder$onCommitAffectingUpdate$1(this);
        this.runUpdate = new AndroidViewHolder$runUpdate$1(this);
        this.location = new int[2];
        this.lastWidthMeasureSpec = Integer.MIN_VALUE;
        this.lastHeightMeasureSpec = Integer.MIN_VALUE;
        this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        final LayoutNode layoutNode = new LayoutNode(false, 1, null);
        Modifier modifierA = OnGloballyPositionedModifierKt.a(DrawModifierKt.a(PointerInteropFilter_androidKt.a(companion, this), new AndroidViewHolder$layoutNode$1$coreModifier$1(layoutNode, this)), new AndroidViewHolder$layoutNode$1$coreModifier$2(this, layoutNode));
        layoutNode.d(this.modifier.B(modifierA));
        this.onModifierChanged = new AndroidViewHolder$layoutNode$1$1(layoutNode, modifierA);
        layoutNode.g(this.density);
        this.onDensityChanged = new AndroidViewHolder$layoutNode$1$2(layoutNode);
        p0 p0Var = new p0();
        layoutNode.t1(new AndroidViewHolder$layoutNode$1$3(this, layoutNode, p0Var));
        layoutNode.u1(new AndroidViewHolder$layoutNode$1$4(this, p0Var));
        layoutNode.c(new MeasurePolicy() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5
            private final int f(int i10) {
                AndroidViewHolder androidViewHolder = this.$this_run;
                ViewGroup.LayoutParams layoutParams = androidViewHolder.getLayoutParams();
                t.g(layoutParams);
                androidViewHolder.measure(androidViewHolder.g(0, i10, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
                return this.$this_run.getMeasuredHeight();
            }

            private final int g(int i10) {
                AndroidViewHolder androidViewHolder = this.$this_run;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                AndroidViewHolder androidViewHolder2 = this.$this_run;
                ViewGroup.LayoutParams layoutParams = androidViewHolder2.getLayoutParams();
                t.g(layoutParams);
                androidViewHolder.measure(iMakeMeasureSpec, androidViewHolder2.g(0, i10, layoutParams.height));
                return this.$this_run.getMeasuredWidth();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                t.j(measure, "$this$measure");
                t.j(measurables, "measurables");
                if (Constraints.p(j6) != 0) {
                    this.$this_run.getChildAt(0).setMinimumWidth(Constraints.p(j6));
                }
                if (Constraints.o(j6) != 0) {
                    this.$this_run.getChildAt(0).setMinimumHeight(Constraints.o(j6));
                }
                AndroidViewHolder androidViewHolder = this.$this_run;
                int iP = Constraints.p(j6);
                int iN = Constraints.n(j6);
                ViewGroup.LayoutParams layoutParams = this.$this_run.getLayoutParams();
                t.g(layoutParams);
                int iG = androidViewHolder.g(iP, iN, layoutParams.width);
                AndroidViewHolder androidViewHolder2 = this.$this_run;
                int iO = Constraints.o(j6);
                int iM = Constraints.m(j6);
                ViewGroup.LayoutParams layoutParams2 = this.$this_run.getLayoutParams();
                t.g(layoutParams2);
                androidViewHolder.measure(iG, androidViewHolder2.g(iO, iM, layoutParams2.height));
                return MeasureScope.CC.b(measure, this.$this_run.getMeasuredWidth(), this.$this_run.getMeasuredHeight(), null, new AndroidViewHolder$layoutNode$1$5$measure$1(this.$this_run, layoutNode), 4, null);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return f(i10);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return g(i10);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return f(i10);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return g(i10);
            }
        });
        this.layoutNode = layoutNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int g(int i10, int i11, int i12) {
        if (i12 >= 0 || i10 == i11) {
            return View.MeasureSpec.makeMeasureSpec(o.n(i12, i10, i11), 1073741824);
        }
        if (i12 != -2 || i11 == Integer.MAX_VALUE) {
            return (i12 != -1 || i11 == Integer.MAX_VALUE) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
        }
        return View.MeasureSpec.makeMeasureSpec(i11, Integer.MIN_VALUE);
    }

    @Override // android.view.View
    @Nullable
    public ViewGroup.LayoutParams getLayoutParams() {
        ViewGroup.LayoutParams layoutParams;
        View view = this.view;
        return (view == null || (layoutParams = view.getLayoutParams()) == null) ? new ViewGroup.LayoutParams(-1, -1) : layoutParams;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.nestedScrollingParentHelper.a();
    }

    public final void h() {
        int i10;
        int i11 = this.lastWidthMeasureSpec;
        if (i11 == Integer.MIN_VALUE || (i10 = this.lastHeightMeasureSpec) == Integer.MIN_VALUE) {
            return;
        }
        measure(i11, i10);
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        View view = this.view;
        return view != null ? view.isNestedScrollingEnabled() : super.isNestedScrollingEnabled();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(@NotNull View child, @NotNull View target) {
        t.j(child, "child");
        t.j(target, "target");
        super.onDescendantInvalidated(child, target);
        this.layoutNode.H0();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        View view = this.view;
        if (view != null) {
            view.layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        View view = this.view;
        if (view != null) {
            view.measure(i10, i11);
        }
        View view2 = this.view;
        int measuredWidth = view2 != null ? view2.getMeasuredWidth() : 0;
        View view3 = this.view;
        setMeasuredDimension(measuredWidth, view3 != null ? view3.getMeasuredHeight() : 0);
        this.lastWidthMeasureSpec = i10;
        this.lastHeightMeasureSpec = i11;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(@NotNull View target, float f, float f6, boolean z6) {
        t.j(target, "target");
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        k.d(this.dispatcher.e(), null, null, new AnonymousClass1(z6, this, VelocityKt.a(AndroidViewHolder_androidKt.g(f), AndroidViewHolder_androidKt.g(f6)), null), 3, null);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(@NotNull View target, float f, float f6) {
        t.j(target, "target");
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        k.d(this.dispatcher.e(), null, null, new C05111(VelocityKt.a(AndroidViewHolder_androidKt.g(f), AndroidViewHolder_androidKt.g(f6)), null), 3, null);
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NotNull View target, int i10, int i11, @NotNull int[] consumed, int i12) {
        t.j(target, "target");
        t.j(consumed, "consumed");
        if (isNestedScrollingEnabled()) {
            long jD = this.dispatcher.d(OffsetKt.a(AndroidViewHolder_androidKt.f(i10), AndroidViewHolder_androidKt.f(i11)), AndroidViewHolder_androidKt.h(i12));
            consumed[0] = NestedScrollInteropConnectionKt.f(Offset.m(jD));
            consumed[1] = NestedScrollInteropConnectionKt.f(Offset.n(jD));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NotNull View child, @NotNull View target, int i10, int i11) {
        t.j(child, "child");
        t.j(target, "target");
        this.nestedScrollingParentHelper.c(child, target, i10, i11);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NotNull View target, int i10) {
        t.j(target, "target");
        this.nestedScrollingParentHelper.e(target, i10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        l<? super Boolean, l0> lVar = this.onRequestDisallowInterceptTouchEvent;
        if (lVar != null) {
            lVar.invoke(Boolean.valueOf(z6));
        }
        super.requestDisallowInterceptTouchEvent(z6);
    }

    public final void setDensity(@NotNull Density value) {
        t.j(value, "value");
        if (value != this.density) {
            this.density = value;
            l<? super Density, l0> lVar = this.onDensityChanged;
            if (lVar != null) {
                lVar.invoke(value);
            }
        }
    }

    public final void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner != this.lifecycleOwner) {
            this.lifecycleOwner = lifecycleOwner;
            ViewTreeLifecycleOwner.b(this, lifecycleOwner);
        }
    }

    public final void setModifier(@NotNull Modifier value) {
        t.j(value, "value");
        if (value != this.modifier) {
            this.modifier = value;
            l<? super Modifier, l0> lVar = this.onModifierChanged;
            if (lVar != null) {
                lVar.invoke(value);
            }
        }
    }

    public final void setSavedStateRegistryOwner(@Nullable SavedStateRegistryOwner savedStateRegistryOwner) {
        if (savedStateRegistryOwner != this.savedStateRegistryOwner) {
            this.savedStateRegistryOwner = savedStateRegistryOwner;
            ViewTreeSavedStateRegistryOwner.b(this, savedStateRegistryOwner);
        }
    }

    protected final void setUpdate(@NotNull e8.a<l0> value) {
        t.j(value, "value");
        this.update = value;
        this.hasUpdateBlock = true;
        this.runUpdate.invoke();
    }

    public final void setView$ui_release(@Nullable View view) {
        if (view != this.view) {
            this.view = view;
            removeAllViews();
            if (view != null) {
                addView(view);
                this.runUpdate.invoke();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    @Nullable
    public ViewParent invalidateChildInParent(@Nullable int[] iArr, @Nullable Rect rect) {
        super.invalidateChildInParent(iArr, rect);
        this.layoutNode.H0();
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.snapshotObserver.l();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.snapshotObserver.m();
        this.snapshotObserver.g();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NotNull View target, int i10, int i11, int i12, int i13, int i14) {
        t.j(target, "target");
        if (isNestedScrollingEnabled()) {
            this.dispatcher.b(OffsetKt.a(AndroidViewHolder_androidKt.f(i10), AndroidViewHolder_androidKt.f(i11)), OffsetKt.a(AndroidViewHolder_androidKt.f(i12), AndroidViewHolder_androidKt.f(i13)), AndroidViewHolder_androidKt.h(i14));
        }
    }
}
