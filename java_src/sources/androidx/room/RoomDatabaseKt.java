package androidx.room;

import java.util.concurrent.RejectedExecutionException;
import kotlinx.coroutines.a3;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class RoomDatabaseKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.coroutines.g b(RoomDatabase roomDatabase, kotlin.coroutines.e eVar) {
        TransactionElement transactionElement = new TransactionElement(eVar);
        return eVar.plus(transactionElement).plus(a3.a(roomDatabase.r(), Integer.valueOf(System.identityHashCode(transactionElement))));
    }

    private static final <R> Object c(final RoomDatabase roomDatabase, final kotlin.coroutines.g gVar, final e8.p<? super o0, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar, kotlin.coroutines.d<? super R> dVar) throws Throwable {
        final kotlinx.coroutines.p pVar2 = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar2.x();
        try {
            roomDatabase.s().execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt$startTransactionCoroutine$2$1

                /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt$startTransactionCoroutine$2$1$1, reason: invalid class name */
                @kotlin.coroutines.jvm.internal.f(c = "androidx.room.RoomDatabaseKt$startTransactionCoroutine$2$1$1", f = "RoomDatabaseExt.kt", l = {97}, m = "invokeSuspend")
                static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
                    final /* synthetic */ kotlinx.coroutines.o<R> $continuation;
                    final /* synthetic */ RoomDatabase $this_startTransactionCoroutine;
                    final /* synthetic */ e8.p<o0, kotlin.coroutines.d<? super R>, Object> $transactionBlock;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(RoomDatabase roomDatabase, kotlinx.coroutines.o<? super R> oVar, e8.p<? super o0, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
                        super(2, dVar);
                        this.$this_startTransactionCoroutine = roomDatabase;
                        this.$continuation = oVar;
                        this.$transactionBlock = pVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    @NotNull
                    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_startTransactionCoroutine, this.$continuation, this.$transactionBlock, dVar);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // e8.p
                    @Nullable
                    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                        return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        kotlin.coroutines.d dVar;
                        Object objE = kotlin.coroutines.intrinsics.d.e();
                        int i10 = this.label;
                        if (i10 != 0) {
                            if (i10 == 1) {
                                dVar = (kotlin.coroutines.d) this.L$0;
                                w7.w.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            w7.w.b(obj);
                            kotlin.coroutines.g.b bVar = ((o0) this.L$0).getCoroutineContext().get(kotlin.coroutines.e.Key);
                            kotlin.jvm.internal.t.g(bVar);
                            kotlin.coroutines.g gVarB = RoomDatabaseKt.b(this.$this_startTransactionCoroutine, (kotlin.coroutines.e) bVar);
                            kotlin.coroutines.d dVar2 = this.$continuation;
                            e8.p<o0, kotlin.coroutines.d<? super R>, Object> pVar = this.$transactionBlock;
                            this.L$0 = dVar2;
                            this.label = 1;
                            obj = kotlinx.coroutines.i.g(gVarB, pVar, this);
                            if (obj == objE) {
                                return objE;
                            }
                            dVar = dVar2;
                        }
                        dVar.resumeWith(w7.v.b(obj));
                        return l0.INSTANCE;
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        kotlinx.coroutines.i.e(gVar.minusKey(kotlin.coroutines.e.Key), new AnonymousClass1(roomDatabase, pVar2, pVar, null));
                    } catch (Throwable th) {
                        pVar2.e(th);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            pVar2.e(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e));
        }
        Object objU = pVar2.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    @Nullable
    public static final <R> Object d(@NotNull RoomDatabase roomDatabase, @NotNull e8.l<? super kotlin.coroutines.d<? super R>, ? extends Object> lVar, @NotNull kotlin.coroutines.d<? super R> dVar) {
        RoomDatabaseKt$withTransaction$transactionBlock$1 roomDatabaseKt$withTransaction$transactionBlock$1 = new RoomDatabaseKt$withTransaction$transactionBlock$1(roomDatabase, lVar, null);
        TransactionElement transactionElement = (TransactionElement) dVar.getContext().get(TransactionElement.Key);
        kotlin.coroutines.e eVarE = transactionElement != null ? transactionElement.e() : null;
        return eVarE != null ? kotlinx.coroutines.i.g(eVarE, roomDatabaseKt$withTransaction$transactionBlock$1, dVar) : c(roomDatabase, dVar.getContext(), roomDatabaseKt$withTransaction$transactionBlock$1, dVar);
    }
}
