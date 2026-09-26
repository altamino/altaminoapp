package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.R;
import androidx.core.os.HandlerCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class WindowRecomposer_androidKt {

    @NotNull
    private static final Map<Context, kotlinx.coroutines.flow.l0<Float>> animationScale = new LinkedHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [kotlin.coroutines.g] */
    /* JADX WARN: Type inference failed for: r0v14, types: [T, androidx.compose.ui.platform.MotionDurationScaleImpl] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r10v3, types: [kotlin.coroutines.g] */
    @ExperimentalComposeUiApi
    @NotNull
    public static final Recomposer b(@NotNull final View view, @NotNull kotlin.coroutines.g coroutineContext, @Nullable Lifecycle lifecycle) {
        final PausableMonotonicFrameClock pausableMonotonicFrameClock;
        kotlin.coroutines.g gVar;
        ?? motionDurationScaleImpl;
        kotlin.jvm.internal.t.j(view, "<this>");
        kotlin.jvm.internal.t.j(coroutineContext, "coroutineContext");
        if (coroutineContext.get(kotlin.coroutines.e.Key) == null || coroutineContext.get(MonotonicFrameClock.Key) == null) {
            coroutineContext = AndroidUiDispatcher.Companion.a().plus(coroutineContext);
        }
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContext.get(MonotonicFrameClock.Key);
        if (monotonicFrameClock != null) {
            PausableMonotonicFrameClock pausableMonotonicFrameClock2 = new PausableMonotonicFrameClock(monotonicFrameClock);
            pausableMonotonicFrameClock2.c();
            pausableMonotonicFrameClock = pausableMonotonicFrameClock2;
        } else {
            pausableMonotonicFrameClock = null;
        }
        final kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
        MotionDurationScale motionDurationScale = (MotionDurationScale) coroutineContext.get(MotionDurationScale.Key);
        ?? r1 = motionDurationScale;
        if (motionDurationScale == null) {
            motionDurationScaleImpl = new MotionDurationScaleImpl();
            p0Var.element = motionDurationScaleImpl;
        }
        if (pausableMonotonicFrameClock != null) {
            r1 = motionDurationScaleImpl;
            gVar = pausableMonotonicFrameClock;
        } else {
            r1 = motionDurationScaleImpl;
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        kotlin.coroutines.g gVarPlus = coroutineContext.plus(gVar).plus(r1);
        final Recomposer recomposer = new Recomposer(gVarPlus);
        final kotlinx.coroutines.o0 o0VarA = kotlinx.coroutines.p0.a(gVarPlus);
        if (lifecycle == null) {
            LifecycleOwner lifecycleOwnerA = ViewTreeLifecycleOwner.a(view);
            lifecycle = lifecycleOwnerA != null ? lifecycleOwnerA.getLifecycle() : null;
        }
        if (lifecycle != null) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View v5) {
                    kotlin.jvm.internal.t.j(v5, "v");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View v5) {
                    kotlin.jvm.internal.t.j(v5, "v");
                    view.removeOnAttachStateChangeListener(this);
                    recomposer.Z();
                }
            });
            lifecycle.a(new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2

                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[Lifecycle.Event.values().length];
                        iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                        iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                        iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                        iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                        iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                        iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                        iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NotNull LifecycleOwner lifecycleOwner, @NotNull Lifecycle.Event event) {
                    kotlin.jvm.internal.t.j(lifecycleOwner, "lifecycleOwner");
                    kotlin.jvm.internal.t.j(event, "event");
                    int i10 = WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
                    if (i10 == 1) {
                        kotlinx.coroutines.k.d(o0VarA, null, kotlinx.coroutines.q0.UNDISPATCHED, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(p0Var, recomposer, lifecycleOwner, this, view, null), 1, null);
                        return;
                    }
                    if (i10 == 2) {
                        PausableMonotonicFrameClock pausableMonotonicFrameClock3 = pausableMonotonicFrameClock;
                        if (pausableMonotonicFrameClock3 != null) {
                            pausableMonotonicFrameClock3.e();
                            return;
                        }
                        return;
                    }
                    if (i10 != 3) {
                        if (i10 != 4) {
                            return;
                        }
                        recomposer.Z();
                    } else {
                        PausableMonotonicFrameClock pausableMonotonicFrameClock4 = pausableMonotonicFrameClock;
                        if (pausableMonotonicFrameClock4 != null) {
                            pausableMonotonicFrameClock4.c();
                        }
                    }
                }
            });
            return recomposer;
        }
        throw new IllegalStateException(("ViewTreeLifecycleOwner not found from " + view).toString());
    }

    public static /* synthetic */ Recomposer c(View view, kotlin.coroutines.g gVar, Lifecycle lifecycle, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            lifecycle = null;
        }
        return b(view, gVar, lifecycle);
    }

    @Nullable
    public static final CompositionContext d(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<this>");
        CompositionContext compositionContextF = f(view);
        if (compositionContextF != null) {
            return compositionContextF;
        }
        for (ViewParent parent = view.getParent(); compositionContextF == null && (parent instanceof View); parent = parent.getParent()) {
            compositionContextF = f((View) parent);
        }
        return compositionContextF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1] */
    public static final kotlinx.coroutines.flow.l0<Float> e(Context context) {
        kotlinx.coroutines.flow.l0<Float> l0Var;
        Map<Context, kotlinx.coroutines.flow.l0<Float>> map = animationScale;
        synchronized (map) {
            try {
                kotlinx.coroutines.flow.l0<Float> l0VarK = map.get(context);
                if (l0VarK == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                    final kotlinx.coroutines.channels.d dVarB = kotlinx.coroutines.channels.g.b(-1, null, null, 6, null);
                    final Handler handlerA = HandlerCompat.a(Looper.getMainLooper());
                    l0VarK = kotlinx.coroutines.flow.i.K(kotlinx.coroutines.flow.i.y(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(contentResolver, uriFor, new ContentObserver(handlerA) { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1
                        @Override // android.database.ContentObserver
                        public void onChange(boolean z6, @Nullable Uri uri) {
                            dVarB.p(w7.l0.INSTANCE);
                        }
                    }, dVarB, context, null)), kotlinx.coroutines.p0.b(), kotlinx.coroutines.flow.h0.a.b(kotlinx.coroutines.flow.h0.Companion, 0L, 0L, 3, null), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
                    map.put(context, l0VarK);
                }
                l0Var = l0VarK;
            } catch (Throwable th) {
                throw th;
            }
        }
        return l0Var;
    }

    @Nullable
    public static final CompositionContext f(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<this>");
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }

    @NotNull
    public static final Recomposer h(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<this>");
        if (!view.isAttachedToWindow()) {
            throw new IllegalStateException(("Cannot locate windowRecomposer; View " + view + " is not attached to a window").toString());
        }
        View viewG = g(view);
        CompositionContext compositionContextF = f(viewG);
        if (compositionContextF == null) {
            return WindowRecomposerPolicy.INSTANCE.a(viewG);
        }
        if (compositionContextF instanceof Recomposer) {
            return (Recomposer) compositionContextF;
        }
        throw new IllegalStateException("root viewTreeParentCompositionContext is not a Recomposer".toString());
    }

    public static final void i(@NotNull View view, @Nullable CompositionContext compositionContext) {
        kotlin.jvm.internal.t.j(view, "<this>");
        view.setTag(R.id.androidx_compose_ui_view_composition_context, compositionContext);
    }

    private static final View g(View view) {
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (view2.getId() == 16908290) {
                return view;
            }
            parent = view2.getParent();
            view = view2;
        }
        return view;
    }
}
