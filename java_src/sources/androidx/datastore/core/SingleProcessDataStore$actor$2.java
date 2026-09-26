package androidx.datastore.core;

import e8.p;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
final class SingleProcessDataStore$actor$2<T> extends v implements p<SingleProcessDataStore.Message<T>, Throwable, l0> {
    public static final SingleProcessDataStore$actor$2 INSTANCE = new SingleProcessDataStore$actor$2();

    SingleProcessDataStore$actor$2() {
        super(2);
    }

    public final void a(@NotNull SingleProcessDataStore.Message<T> msg, @Nullable Throwable th) {
        t.j(msg, "msg");
        if (msg instanceof SingleProcessDataStore.Message.Update) {
            x<T> xVarA = ((SingleProcessDataStore.Message.Update) msg).a();
            if (th == null) {
                th = new CancellationException("DataStore scope was cancelled before updateData could complete");
            }
            xVarA.a(th);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Object obj, Throwable th) {
        a((SingleProcessDataStore.Message) obj, th);
        return l0.INSTANCE;
    }
}
