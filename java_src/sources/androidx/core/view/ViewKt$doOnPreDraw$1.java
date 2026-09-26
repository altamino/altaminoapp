package androidx.core.view;

import android.view.View;

/* JADX INFO: loaded from: classes9.dex */
public final class ViewKt$doOnPreDraw$1 implements Runnable {
    final /* synthetic */ e8.l<View, w7.l0> $action;
    final /* synthetic */ View $this_doOnPreDraw;

    /* JADX WARN: Multi-variable type inference failed */
    public ViewKt$doOnPreDraw$1(e8.l<? super View, w7.l0> lVar, View view) {
        this.$action = lVar;
        this.$this_doOnPreDraw = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$action.invoke(this.$this_doOnPreDraw);
    }
}
