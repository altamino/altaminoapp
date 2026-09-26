package androidx.core.view;

/* JADX INFO: loaded from: classes10.dex */
public final class ViewKt$postDelayed$runnable$1 implements Runnable {
    final /* synthetic */ e8.a<w7.l0> $action;

    public ViewKt$postDelayed$runnable$1(e8.a<w7.l0> aVar) {
        this.$action = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$action.invoke();
    }
}
