package androidx.activity.compose;

import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.platform.ComposeView;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class ComponentActivityKt {

    @NotNull
    private static final ViewGroup.LayoutParams DefaultActivityContentLayoutParams = new ViewGroup.LayoutParams(-2, -2);

    public static final void a(@NotNull ComponentActivity componentActivity, @Nullable CompositionContext compositionContext, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(componentActivity, "<this>");
        t.j(content, "content");
        View childAt = ((ViewGroup) componentActivity.getWindow().getDecorView().findViewById(android.R.id.content)).getChildAt(0);
        ComposeView composeView = childAt instanceof ComposeView ? (ComposeView) childAt : null;
        if (composeView != null) {
            composeView.setParentCompositionContext(compositionContext);
            composeView.setContent(content);
            return;
        }
        ComposeView composeView2 = new ComposeView(componentActivity, null, 0, 6, null);
        composeView2.setParentCompositionContext(compositionContext);
        composeView2.setContent(content);
        c(componentActivity);
        componentActivity.setContentView(composeView2, DefaultActivityContentLayoutParams);
    }

    public static /* synthetic */ void b(ComponentActivity componentActivity, CompositionContext compositionContext, p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            compositionContext = null;
        }
        a(componentActivity, compositionContext, pVar);
    }

    private static final void c(ComponentActivity componentActivity) {
        View decorView = componentActivity.getWindow().getDecorView();
        t.i(decorView, "window.decorView");
        if (ViewTreeLifecycleOwner.a(decorView) == null) {
            ViewTreeLifecycleOwner.b(decorView, componentActivity);
        }
        if (ViewTreeViewModelStoreOwner.a(decorView) == null) {
            ViewTreeViewModelStoreOwner.b(decorView, componentActivity);
        }
        if (ViewTreeSavedStateRegistryOwner.a(decorView) == null) {
            ViewTreeSavedStateRegistryOwner.b(decorView, componentActivity);
        }
    }
}
