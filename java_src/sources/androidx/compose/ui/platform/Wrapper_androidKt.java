package androidx.compose.ui.platform;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionKt;
import androidx.compose.ui.R;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.UiApplier;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.WeakHashMap;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class Wrapper_androidKt {

    @NotNull
    private static final ViewGroup.LayoutParams DefaultLayoutParams = new ViewGroup.LayoutParams(-2, -2);

    @NotNull
    private static final String TAG = "Wrapper";

    @MainThread
    @NotNull
    public static final Composition a(@NotNull LayoutNode container, @NotNull CompositionContext parent) {
        kotlin.jvm.internal.t.j(container, "container");
        kotlin.jvm.internal.t.j(parent, "parent");
        return CompositionKt.a(new UiApplier(container), parent);
    }

    private static final boolean d(AndroidComposeView androidComposeView) {
        return Build.VERSION.SDK_INT >= 29 && (WrapperVerificationHelperMethods.INSTANCE.a(androidComposeView).isEmpty() ^ true);
    }

    @ComposableInferredTarget
    @NotNull
    public static final Composition e(@NotNull AbstractComposeView abstractComposeView, @NotNull CompositionContext parent, @NotNull e8.p<? super Composer, ? super Integer, w7.l0> content) {
        kotlin.jvm.internal.t.j(abstractComposeView, "<this>");
        kotlin.jvm.internal.t.j(parent, "parent");
        kotlin.jvm.internal.t.j(content, "content");
        GlobalSnapshotManager.INSTANCE.a();
        AndroidComposeView androidComposeView = null;
        if (abstractComposeView.getChildCount() > 0) {
            View childAt = abstractComposeView.getChildAt(0);
            if (childAt instanceof AndroidComposeView) {
                androidComposeView = (AndroidComposeView) childAt;
            }
        } else {
            abstractComposeView.removeAllViews();
        }
        if (androidComposeView == null) {
            Context context = abstractComposeView.getContext();
            kotlin.jvm.internal.t.i(context, "context");
            androidComposeView = new AndroidComposeView(context);
            abstractComposeView.addView(androidComposeView.getView(), DefaultLayoutParams);
        }
        return b(androidComposeView, parent, content);
    }

    @ComposableInferredTarget
    private static final Composition b(AndroidComposeView androidComposeView, CompositionContext compositionContext, e8.p<? super Composer, ? super Integer, w7.l0> pVar) {
        WrappedComposition wrappedComposition;
        if (d(androidComposeView)) {
            androidComposeView.setTag(R.id.inspection_slot_table_set, Collections.newSetFromMap(new WeakHashMap()));
            c();
        }
        Composition compositionA = CompositionKt.a(new UiApplier(androidComposeView.getRoot()), compositionContext);
        View view = androidComposeView.getView();
        int i10 = R.id.wrapped_composition_tag;
        Object tag = view.getTag(i10);
        if (tag instanceof WrappedComposition) {
            wrappedComposition = (WrappedComposition) tag;
        } else {
            wrappedComposition = null;
        }
        if (wrappedComposition == null) {
            wrappedComposition = new WrappedComposition(androidComposeView, compositionA);
            androidComposeView.getView().setTag(i10, wrappedComposition);
        }
        wrappedComposition.v(pVar);
        return wrappedComposition;
    }

    private static final void c() {
        if (!InspectableValueKt.c()) {
            try {
                Field declaredField = InspectableValueKt.class.getDeclaredField("isDebugInspectorInfoEnabled");
                declaredField.setAccessible(true);
                declaredField.setBoolean(null, true);
            } catch (Exception unused) {
                Log.w(TAG, "Could not access isDebugInspectorInfoEnabled. Please set explicitly.");
            }
        }
    }
}
