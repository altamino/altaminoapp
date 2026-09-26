package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.customview.poolingcontainer.PoolingContainerListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public interface ViewCompositionStrategy {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        public final ViewCompositionStrategy a() {
            return DisposeOnDetachedFromWindowOrReleasedFromPool.INSTANCE;
        }

        private Companion() {
        }
    }

    @StabilityInferred
    public static final class DisposeOnDetachedFromWindow implements ViewCompositionStrategy {
        public static final int $stable = 0;

        @NotNull
        public static final DisposeOnDetachedFromWindow INSTANCE = new DisposeOnDetachedFromWindow();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$OnAttachStateChangeListener, androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$listener$1] */
        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        @NotNull
        public e8.a<w7.l0> a(@NotNull final AbstractComposeView view) {
            kotlin.jvm.internal.t.j(view, "view");
            ?? r1 = new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$listener$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View v5) {
                    kotlin.jvm.internal.t.j(v5, "v");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View v5) {
                    kotlin.jvm.internal.t.j(v5, "v");
                    view.e();
                }
            };
            view.addOnAttachStateChangeListener(r1);
            return new ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$1(view, r1);
        }

        private DisposeOnDetachedFromWindow() {
        }
    }

    @StabilityInferred
    public static final class DisposeOnDetachedFromWindowOrReleasedFromPool implements ViewCompositionStrategy {
        public static final int $stable = 0;

        @NotNull
        public static final DisposeOnDetachedFromWindowOrReleasedFromPool INSTANCE = new DisposeOnDetachedFromWindowOrReleasedFromPool();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$OnAttachStateChangeListener, androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1] */
        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        @NotNull
        public e8.a<w7.l0> a(@NotNull final AbstractComposeView view) {
            kotlin.jvm.internal.t.j(view, "view");
            ?? r1 = new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View v5) {
                    kotlin.jvm.internal.t.j(v5, "v");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View v5) {
                    kotlin.jvm.internal.t.j(v5, "v");
                    if (PoolingContainer.f(view)) {
                        return;
                    }
                    view.e();
                }
            };
            view.addOnAttachStateChangeListener(r1);
            PoolingContainerListener poolingContainerListener = new PoolingContainerListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$poolingContainerListener$1
                @Override // androidx.customview.poolingcontainer.PoolingContainerListener
                public final void a() {
                    view.e();
                }
            };
            PoolingContainer.a(view, poolingContainerListener);
            return new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1(view, r1, poolingContainerListener);
        }

        private DisposeOnDetachedFromWindowOrReleasedFromPool() {
        }
    }

    @StabilityInferred
    public static final class DisposeOnLifecycleDestroyed implements ViewCompositionStrategy {
        public static final int $stable = 8;

        @NotNull
        private final Lifecycle lifecycle;

        public DisposeOnLifecycleDestroyed(@NotNull Lifecycle lifecycle) {
            kotlin.jvm.internal.t.j(lifecycle, "lifecycle");
            this.lifecycle = lifecycle;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public DisposeOnLifecycleDestroyed(@NotNull LifecycleOwner lifecycleOwner) {
            kotlin.jvm.internal.t.j(lifecycleOwner, "lifecycleOwner");
            Lifecycle lifecycle = lifecycleOwner.getLifecycle();
            kotlin.jvm.internal.t.i(lifecycle, "lifecycleOwner.lifecycle");
            this(lifecycle);
        }

        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        @NotNull
        public e8.a<w7.l0> a(@NotNull AbstractComposeView view) {
            kotlin.jvm.internal.t.j(view, "view");
            return ViewCompositionStrategy_androidKt.c(view, this.lifecycle);
        }
    }

    @StabilityInferred
    public static final class DisposeOnViewTreeLifecycleDestroyed implements ViewCompositionStrategy {
        public static final int $stable = 0;

        @NotNull
        public static final DisposeOnViewTreeLifecycleDestroyed INSTANCE = new DisposeOnViewTreeLifecycleDestroyed();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$OnAttachStateChangeListener, androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1] */
        /* JADX WARN: Type inference failed for: r2v0, types: [T, androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$1] */
        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        @NotNull
        public e8.a<w7.l0> a(@NotNull final AbstractComposeView view) {
            kotlin.jvm.internal.t.j(view, "view");
            if (!view.isAttachedToWindow()) {
                final kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
                ?? r1 = new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(@NotNull View v5) {
                        kotlin.jvm.internal.t.j(v5, "v");
                    }

                    /* JADX WARN: Type inference failed for: r4v7, types: [T, e8.a] */
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(@NotNull View v5) {
                        kotlin.jvm.internal.t.j(v5, "v");
                        LifecycleOwner lifecycleOwnerA = ViewTreeLifecycleOwner.a(view);
                        AbstractComposeView abstractComposeView = view;
                        if (lifecycleOwnerA == null) {
                            throw new IllegalStateException(("View tree for " + abstractComposeView + " has no ViewTreeLifecycleOwner").toString());
                        }
                        kotlin.jvm.internal.t.i(lifecycleOwnerA, "checkNotNull(ViewTreeLif…                        }");
                        kotlin.jvm.internal.p0<e8.a<w7.l0>> p0Var2 = p0Var;
                        AbstractComposeView abstractComposeView2 = view;
                        Lifecycle lifecycle = lifecycleOwnerA.getLifecycle();
                        kotlin.jvm.internal.t.i(lifecycle, "lco.lifecycle");
                        p0Var2.element = ViewCompositionStrategy_androidKt.c(abstractComposeView2, lifecycle);
                        view.removeOnAttachStateChangeListener(this);
                    }
                };
                view.addOnAttachStateChangeListener(r1);
                p0Var.element = new ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$1(view, r1);
                return new ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2(p0Var);
            }
            LifecycleOwner lifecycleOwnerA = ViewTreeLifecycleOwner.a(view);
            if (lifecycleOwnerA != null) {
                kotlin.jvm.internal.t.i(lifecycleOwnerA, "checkNotNull(ViewTreeLif…eOwner\"\n                }");
                Lifecycle lifecycle = lifecycleOwnerA.getLifecycle();
                kotlin.jvm.internal.t.i(lifecycle, "lco.lifecycle");
                return ViewCompositionStrategy_androidKt.c(view, lifecycle);
            }
            throw new IllegalStateException(("View tree for " + view + " has no ViewTreeLifecycleOwner").toString());
        }

        private DisposeOnViewTreeLifecycleDestroyed() {
        }
    }

    @NotNull
    e8.a<w7.l0> a(@NotNull AbstractComposeView abstractComposeView);
}
