package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AndroidComposeView$snapshotObserver$1 extends kotlin.jvm.internal.v implements e8.l<e8.a<? extends w7.l0>, w7.l0> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidComposeView$snapshotObserver$1(AndroidComposeView androidComposeView) {
        super(1);
        this.this$0 = androidComposeView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(e8.a tmp0) {
        kotlin.jvm.internal.t.j(tmp0, "$tmp0");
        tmp0.invoke();
    }

    public final void b(@NotNull final e8.a<w7.l0> command) {
        kotlin.jvm.internal.t.j(command, "command");
        Handler handler = this.this$0.getHandler();
        if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
            command.invoke();
            return;
        }
        Handler handler2 = this.this$0.getHandler();
        if (handler2 != null) {
            handler2.post(new Runnable() { // from class: androidx.compose.ui.platform.g
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidComposeView$snapshotObserver$1.c(command);
                }
            });
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(e8.a<? extends w7.l0> aVar) {
        b(aVar);
        return w7.l0.INSTANCE;
    }
}
