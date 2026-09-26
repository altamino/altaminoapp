package androidx.room;

import java.util.Arrays;
import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class MultiInstanceInvalidationClient$callback$1 extends IMultiInstanceInvalidationCallback.Stub {
    final /* synthetic */ MultiInstanceInvalidationClient this$0;

    MultiInstanceInvalidationClient$callback$1(MultiInstanceInvalidationClient multiInstanceInvalidationClient) {
        this.this$0 = multiInstanceInvalidationClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(MultiInstanceInvalidationClient this$0, String[] tables) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(tables, "$tables");
        this$0.e().l((String[]) Arrays.copyOf(tables, tables.length));
    }

    @Override // androidx.room.IMultiInstanceInvalidationCallback
    public void l(@NotNull final String[] tables) {
        kotlin.jvm.internal.t.j(tables, "tables");
        Executor executorD = this.this$0.d();
        final MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.this$0;
        executorD.execute(new Runnable() { // from class: androidx.room.f
            @Override // java.lang.Runnable
            public final void run() {
                MultiInstanceInvalidationClient$callback$1.z1(multiInstanceInvalidationClient, tables);
            }
        });
    }
}
