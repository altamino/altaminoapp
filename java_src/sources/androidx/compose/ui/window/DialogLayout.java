package androidx.compose.ui.window;

import android.content.Context;
import android.view.View;
import android.view.Window;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.platform.AbstractComposeView;
import e8.p;
import g8.c;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class DialogLayout extends AbstractComposeView implements DialogWindowProvider {

    @NotNull
    private final MutableState content$delegate;
    private boolean shouldCreateCompositionOnAttachedToWindow;
    private boolean usePlatformDefaultWidth;

    @NotNull
    private final Window window;

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    @NotNull
    public Window k() {
        return this.window;
    }

    public final void m(boolean z6) {
        this.usePlatformDefaultWidth = z6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogLayout(@NotNull Context context, @NotNull Window window) {
        super(context, null, 0, 6, null);
        t.j(context, "context");
        t.j(window, "window");
        this.window = window;
        this.content$delegate = SnapshotStateKt__SnapshotStateKt.e(ComposableSingletons$AndroidDialog_androidKt.INSTANCE.a(), null, 2, null);
    }

    private final p<Composer, Integer, l0> getContent() {
        return (p) this.content$delegate.getValue();
    }

    private final void setContent(p<? super Composer, ? super Integer, l0> pVar) {
        this.content$delegate.setValue(pVar);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void h(int i10, int i11) {
        if (this.usePlatformDefaultWidth) {
            super.h(i10, i11);
        } else {
            super.h(View.MeasureSpec.makeMeasureSpec(getDisplayWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getDisplayHeight(), Integer.MIN_VALUE));
        }
    }

    public final void l(@NotNull CompositionContext parent, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(parent, "parent");
        t.j(content, "content");
        setParentCompositionContext(parent);
        setContent(content);
        this.shouldCreateCompositionOnAttachedToWindow = true;
        d();
    }

    private final int getDisplayHeight() {
        return c.c(getContext().getResources().getConfiguration().screenHeightDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final int getDisplayWidth() {
        return c.c(getContext().getResources().getConfiguration().screenWidthDp * getContext().getResources().getDisplayMetrics().density);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    @Composable
    public void a(@Nullable Composer composer, int i10) {
        Composer composerS = composer.s(1735448596);
        getContent().invoke(composerS, 0);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new DialogLayout$Content$4(this, i10));
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void g(boolean z6, int i10, int i11, int i12, int i13) {
        super.g(z6, i10, i11, i12, i13);
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        k().setLayout(childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
    }
}
