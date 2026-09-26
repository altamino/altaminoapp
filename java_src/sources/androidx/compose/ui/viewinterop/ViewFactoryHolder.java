package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.view.View;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.platform.k1;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class ViewFactoryHolder<T extends View> extends AndroidViewHolder implements ViewRootForInspector {

    @Nullable
    private l<? super Context, ? extends T> factory;

    @Nullable
    private T typedView;

    @NotNull
    private l<? super T, l0> updateBlock;

    public /* synthetic */ ViewFactoryHolder(Context context, CompositionContext compositionContext, NestedScrollDispatcher nestedScrollDispatcher, int i10, k kVar) {
        this(context, (i10 & 2) != 0 ? null : compositionContext, (i10 & 4) != 0 ? new NestedScrollDispatcher() : nestedScrollDispatcher);
    }

    @Nullable
    public final l<Context, T> getFactory() {
        return this.factory;
    }

    @Nullable
    public /* bridge */ /* synthetic */ AbstractComposeView getSubCompositionView() {
        return k1.a(this);
    }

    @Nullable
    public final T getTypedView$ui_release() {
        return this.typedView;
    }

    @NotNull
    public final l<T, l0> getUpdateBlock() {
        return this.updateBlock;
    }

    @NotNull
    public View getViewRoot() {
        return this;
    }

    public final void setTypedView$ui_release(@Nullable T t5) {
        this.typedView = t5;
    }

    public final void setFactory(@Nullable l<? super Context, ? extends T> lVar) {
        this.factory = lVar;
        if (lVar != null) {
            Context context = getContext();
            t.i(context, "context");
            T tInvoke = lVar.invoke(context);
            this.typedView = tInvoke;
            setView$ui_release(tInvoke);
        }
    }

    public final void setUpdateBlock(@NotNull l<? super T, l0> value) {
        t.j(value, "value");
        this.updateBlock = value;
        setUpdate(new ViewFactoryHolder$updateBlock$1(this));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewFactoryHolder(@NotNull Context context, @Nullable CompositionContext compositionContext, @NotNull NestedScrollDispatcher dispatcher) {
        super(context, compositionContext, dispatcher);
        t.j(context, "context");
        t.j(dispatcher, "dispatcher");
        this.updateBlock = AndroidView_androidKt.b();
    }
}
