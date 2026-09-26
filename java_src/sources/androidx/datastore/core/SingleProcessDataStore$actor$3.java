package androidx.datastore.core;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.datastore.core.SingleProcessDataStore$actor$3", f = "SingleProcessDataStore.kt", l = {239, 242}, m = "invokeSuspend")
final class SingleProcessDataStore$actor$3<T> extends l implements p<SingleProcessDataStore.Message<T>, d<? super l0>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SingleProcessDataStore<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SingleProcessDataStore$actor$3(SingleProcessDataStore<T> singleProcessDataStore, d<? super SingleProcessDataStore$actor$3> dVar) {
        super(2, dVar);
        this.this$0 = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SingleProcessDataStore$actor$3 singleProcessDataStore$actor$3 = new SingleProcessDataStore$actor$3(this.this$0, dVar);
        singleProcessDataStore$actor$3.L$0 = obj;
        return singleProcessDataStore$actor$3;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SingleProcessDataStore.Message<T> message, @Nullable d<? super l0> dVar) {
        return ((SingleProcessDataStore$actor$3) create(message, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(obj);
        } else {
            w.b(obj);
            SingleProcessDataStore.Message message = (SingleProcessDataStore.Message) this.L$0;
            if (message instanceof SingleProcessDataStore.Message.Read) {
                this.label = 1;
                if (this.this$0.r((SingleProcessDataStore.Message.Read) message, this) == objE) {
                    return objE;
                }
            } else if (message instanceof SingleProcessDataStore.Message.Update) {
                this.label = 2;
                if (this.this$0.s((SingleProcessDataStore.Message.Update) message, this) == objE) {
                    return objE;
                }
            }
        }
        return l0.INSTANCE;
    }
}
