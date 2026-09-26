package androidx.compose.ui.viewinterop;

import android.os.Looper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidViewHolder$snapshotObserver$1 extends v implements l<e8.a<? extends l0>, l0> {
    final /* synthetic */ AndroidViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidViewHolder$snapshotObserver$1(AndroidViewHolder androidViewHolder) {
        super(1);
        this.this$0 = androidViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(e8.a tmp0) {
        t.j(tmp0, "$tmp0");
        tmp0.invoke();
    }

    public final void b(@NotNull final e8.a<l0> command) {
        t.j(command, "command");
        if (this.this$0.getHandler().getLooper() == Looper.myLooper()) {
            command.invoke();
        } else {
            this.this$0.getHandler().post(new Runnable() { // from class: androidx.compose.ui.viewinterop.b
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidViewHolder$snapshotObserver$1.c(command);
                }
            });
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(e8.a<? extends l0> aVar) {
        b(aVar);
        return l0.INSTANCE;
    }
}
