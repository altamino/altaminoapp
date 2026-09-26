package kotlinx.coroutines.tasks;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import e8.l;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.c;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: kotlinx.coroutines.tasks.b$b, reason: collision with other inner class name */
    static final class C0458b extends v implements l<Throwable, l0> {
        final /* synthetic */ CancellationTokenSource $cancellationTokenSource;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0458b(CancellationTokenSource cancellationTokenSource) {
            super(1);
            this.$cancellationTokenSource = cancellationTokenSource;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            this.$cancellationTokenSource.cancel();
        }
    }

    @Nullable
    public static final <T> Object a(@NotNull Task<T> task, @NotNull d<? super T> dVar) {
        return b(task, null, dVar);
    }

    static final class a<TResult> implements OnCompleteListener {
        final /* synthetic */ o<T> $cont;

        /* JADX WARN: Multi-variable type inference failed */
        a(o<? super T> oVar) {
            this.$cont = oVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public final void onComplete(@NotNull Task<T> task) {
            Exception exception = task.getException();
            if (exception == null) {
                if (task.isCanceled()) {
                    o.a.a(this.$cont, null, 1, null);
                    return;
                }
                d dVar = this.$cont;
                w7.v.a aVar = w7.v.Companion;
                dVar.resumeWith(w7.v.b(task.getResult()));
                return;
            }
            d dVar2 = this.$cont;
            w7.v.a aVar2 = w7.v.Companion;
            dVar2.resumeWith(w7.v.b(w.a(exception)));
        }
    }

    private static final <T> Object b(Task<T> task, CancellationTokenSource cancellationTokenSource, d<? super T> dVar) throws Exception {
        if (task.isComplete()) {
            Exception exception = task.getException();
            if (exception == null) {
                if (!task.isCanceled()) {
                    return task.getResult();
                }
                throw new CancellationException("Task " + task + " was cancelled normally.");
            }
            throw exception;
        }
        p pVar = new p(c.c(dVar), 1);
        pVar.x();
        task.addOnCompleteListener(kotlinx.coroutines.tasks.a.INSTANCE, new a(pVar));
        if (cancellationTokenSource != null) {
            pVar.S(new C0458b(cancellationTokenSource));
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            h.c(dVar);
        }
        return objU;
    }
}
