package androidx.room;

import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes5.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.room.RoomDatabaseKt$withTransaction$transactionBlock$1", f = "RoomDatabaseExt.kt", l = {56}, m = "invokeSuspend")
final class RoomDatabaseKt$withTransaction$transactionBlock$1<R> extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super R>, Object> {
    final /* synthetic */ e8.l<kotlin.coroutines.d<? super R>, Object> $block;
    final /* synthetic */ RoomDatabase $this_withTransaction;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RoomDatabaseKt$withTransaction$transactionBlock$1(RoomDatabase roomDatabase, e8.l<? super kotlin.coroutines.d<? super R>, ? extends Object> lVar, kotlin.coroutines.d<? super RoomDatabaseKt$withTransaction$transactionBlock$1> dVar) {
        super(2, dVar);
        this.$this_withTransaction = roomDatabase;
        this.$block = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        RoomDatabaseKt$withTransaction$transactionBlock$1 roomDatabaseKt$withTransaction$transactionBlock$1 = new RoomDatabaseKt$withTransaction$transactionBlock$1(this.$this_withTransaction, this.$block, dVar);
        roomDatabaseKt$withTransaction$transactionBlock$1.L$0 = obj;
        return roomDatabaseKt$withTransaction$transactionBlock$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super R> dVar) {
        return ((RoomDatabaseKt$withTransaction$transactionBlock$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3 */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        Throwable th;
        TransactionElement transactionElement;
        TransactionElement transactionElementE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    transactionElement = (TransactionElement) this.L$0;
                    try {
                        w7.w.b(obj);
                    } catch (Throwable th2) {
                        th = th2;
                        this.$this_withTransaction.i();
                        throw th;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                kotlin.coroutines.g.b bVar = ((o0) this.L$0).getCoroutineContext().get(TransactionElement.Key);
                kotlin.jvm.internal.t.g(bVar);
                TransactionElement transactionElement2 = (TransactionElement) bVar;
                transactionElement2.c();
                try {
                    this.$this_withTransaction.e();
                    try {
                        e8.l<kotlin.coroutines.d<? super R>, Object> lVar = this.$block;
                        this.L$0 = transactionElement2;
                        this.label = 1;
                        Object objInvoke = lVar.invoke(this);
                        if (objInvoke == transactionElementE) {
                            return transactionElementE;
                        }
                        transactionElement = transactionElement2;
                        obj = objInvoke;
                    } catch (Throwable th3) {
                        th = th3;
                        this.$this_withTransaction.i();
                        throw th;
                    }
                } catch (Throwable th4) {
                    transactionElementE = transactionElement2;
                    th = th4;
                    transactionElementE.p();
                    throw th;
                }
            }
            this.$this_withTransaction.D();
            this.$this_withTransaction.i();
            transactionElement.p();
            return obj;
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
