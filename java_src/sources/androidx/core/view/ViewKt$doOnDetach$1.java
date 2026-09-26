package androidx.core.view;

import android.view.View;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ViewKt$doOnDetach$1 implements View.OnAttachStateChangeListener {
    final /* synthetic */ e8.l<View, w7.l0> $action;
    final /* synthetic */ View $this_doOnDetach;

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "view");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewKt$doOnDetach$1(View view, e8.l<? super View, w7.l0> lVar) {
        this.$this_doOnDetach = view;
        this.$action = lVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "view");
        this.$this_doOnDetach.removeOnAttachStateChangeListener(this);
        this.$action.invoke(view);
    }
}
