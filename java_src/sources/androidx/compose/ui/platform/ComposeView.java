package androidx.compose.ui.platform;

import android.content.Context;
import android.util.AttributeSet;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class ComposeView extends AbstractComposeView {
    public static final int $stable = 8;

    @NotNull
    private final MutableState<e8.p<Composer, Integer, w7.l0>> content;
    private boolean shouldCreateCompositionOnAttachedToWindow;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ComposeView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        kotlin.jvm.internal.t.j(context, "context");
    }

    protected static /* synthetic */ void getShouldCreateCompositionOnAttachedToWindow$annotations() {
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ComposeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        kotlin.jvm.internal.t.j(context, "context");
    }

    @Override // android.view.ViewGroup, android.view.View
    @NotNull
    public CharSequence getAccessibilityClassName() {
        String name = ComposeView.class.getName();
        kotlin.jvm.internal.t.i(name, "javaClass.name");
        return name;
    }

    @ComposableInferredTarget
    public final void setContent(@NotNull e8.p<? super Composer, ? super Integer, w7.l0> content) {
        kotlin.jvm.internal.t.j(content, "content");
        this.shouldCreateCompositionOnAttachedToWindow = true;
        this.content.setValue(content);
        if (isAttachedToWindow()) {
            d();
        }
    }

    public /* synthetic */ ComposeView(Context context, AttributeSet attributeSet, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    @Composable
    public void a(@Nullable Composer composer, int i10) {
        Composer composerS = composer.s(420213850);
        e8.p<Composer, Integer, w7.l0> value = this.content.getValue();
        if (value != null) {
            value.invoke(composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new ComposeView$Content$1(this, i10));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        kotlin.jvm.internal.t.j(context, "context");
        this.content = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
    }
}
