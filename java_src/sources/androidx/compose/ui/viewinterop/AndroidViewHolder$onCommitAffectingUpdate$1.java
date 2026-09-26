package androidx.compose.ui.viewinterop;

import android.os.Handler;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidViewHolder$onCommitAffectingUpdate$1 extends v implements l<AndroidViewHolder, l0> {
    final /* synthetic */ AndroidViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidViewHolder$onCommitAffectingUpdate$1(AndroidViewHolder androidViewHolder) {
        super(1);
        this.this$0 = androidViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(e8.a tmp0) {
        t.j(tmp0, "$tmp0");
        tmp0.invoke();
    }

    public final void b(@NotNull AndroidViewHolder it) {
        t.j(it, "it");
        Handler handler = this.this$0.getHandler();
        final e8.a aVar = this.this$0.runUpdate;
        handler.post(new Runnable() { // from class: androidx.compose.ui.viewinterop.a
            @Override // java.lang.Runnable
            public final void run() {
                AndroidViewHolder$onCommitAffectingUpdate$1.c(aVar);
            }
        });
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(AndroidViewHolder androidViewHolder) {
        b(androidViewHolder);
        return l0.INSTANCE;
    }
}
