package androidx.room;

import com.narvii.util.ws.WsMessage;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1", f = "CoroutinesRoom.kt", l = {110}, m = "invokeSuspend")
final class CoroutinesRoom$Companion$createFlow$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.flow.h<Object>, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ Callable<Object> $callable;
    final /* synthetic */ RoomDatabase $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ String[] $tableNames;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.room.CoroutinesRoom$Companion$createFlow$1$1, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1", f = "CoroutinesRoom.kt", l = {WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST}, m = "invokeSuspend")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ kotlinx.coroutines.flow.h<Object> $$this$flow;
        final /* synthetic */ Callable<Object> $callable;
        final /* synthetic */ RoomDatabase $db;
        final /* synthetic */ boolean $inTransaction;
        final /* synthetic */ String[] $tableNames;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1, reason: invalid class name and collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1", f = "CoroutinesRoom.kt", l = {127, 129}, m = "invokeSuspend")
        static final class C00831 extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ Callable<Object> $callable;
            final /* synthetic */ RoomDatabase $db;
            final /* synthetic */ CoroutinesRoom$Companion$createFlow$1$1$observer$1 $observer;
            final /* synthetic */ kotlinx.coroutines.channels.d<l0> $observerChannel;
            final /* synthetic */ kotlinx.coroutines.channels.d<Object> $resultChannel;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00831(RoomDatabase roomDatabase, CoroutinesRoom$Companion$createFlow$1$1$observer$1 coroutinesRoom$Companion$createFlow$1$1$observer$1, kotlinx.coroutines.channels.d<l0> dVar, Callable<Object> callable, kotlinx.coroutines.channels.d<Object> dVar2, kotlin.coroutines.d<? super C00831> dVar3) {
                super(2, dVar3);
                this.$db = roomDatabase;
                this.$observer = coroutinesRoom$Companion$createFlow$1$1$observer$1;
                this.$observerChannel = dVar;
                this.$callable = callable;
                this.$resultChannel = dVar2;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new C00831(this.$db, this.$observer, this.$observerChannel, this.$callable, this.$resultChannel, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                return ((C00831) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:21:0x004b A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:22:0x004c  */
            /* JADX WARN: Code duplicated, block: B:25:0x0057 A[Catch: all -> 0x006f, TRY_LEAVE, TryCatch #1 {all -> 0x006f, blocks: (B:19:0x0041, B:23:0x004f, B:25:0x0057), top: B:36:0x0041 }] */
            /* JADX WARN: Code duplicated, block: B:27:0x006c A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:28:0x006d  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x006d -> B:36:0x0041). Please report as a decompilation issue!!! */
            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                */
            @Override // kotlin.coroutines.jvm.internal.a
            @org.jetbrains.annotations.Nullable
            public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
                /*
                    r7 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                    int r1 = r7.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L2c
                    if (r1 == r3) goto L22
                    if (r1 != r2) goto L1a
                    java.lang.Object r1 = r7.L$0
                    kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
                    w7.w.b(r8)     // Catch: java.lang.Throwable -> L17
                    r8 = r1
                    goto L40
                L17:
                    r8 = move-exception
                    r1 = r7
                    goto L7f
                L1a:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r8.<init>(r0)
                    throw r8
                L22:
                    java.lang.Object r1 = r7.L$0
                    kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
                    w7.w.b(r8)     // Catch: java.lang.Throwable -> L17
                    r4 = r1
                    r1 = r7
                    goto L4f
                L2c:
                    w7.w.b(r8)
                    androidx.room.RoomDatabase r8 = r7.$db
                    androidx.room.InvalidationTracker r8 = r8.m()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r1 = r7.$observer
                    r8.c(r1)
                    kotlinx.coroutines.channels.d<w7.l0> r8 = r7.$observerChannel     // Catch: java.lang.Throwable -> L17
                    kotlinx.coroutines.channels.f r8 = r8.iterator()     // Catch: java.lang.Throwable -> L17
                L40:
                    r1 = r7
                L41:
                    r1.L$0 = r8     // Catch: java.lang.Throwable -> L6f
                    r1.label = r3     // Catch: java.lang.Throwable -> L6f
                    java.lang.Object r4 = r8.b(r1)     // Catch: java.lang.Throwable -> L6f
                    if (r4 != r0) goto L4c
                    return r0
                L4c:
                    r6 = r4
                    r4 = r8
                    r8 = r6
                L4f:
                    java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L6f
                    boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L6f
                    if (r8 == 0) goto L71
                    r4.next()     // Catch: java.lang.Throwable -> L6f
                    java.util.concurrent.Callable<java.lang.Object> r8 = r1.$callable     // Catch: java.lang.Throwable -> L6f
                    java.lang.Object r8 = r8.call()     // Catch: java.lang.Throwable -> L6f
                    kotlinx.coroutines.channels.d<java.lang.Object> r5 = r1.$resultChannel     // Catch: java.lang.Throwable -> L6f
                    r1.L$0 = r4     // Catch: java.lang.Throwable -> L6f
                    r1.label = r2     // Catch: java.lang.Throwable -> L6f
                    java.lang.Object r8 = r5.w(r8, r1)     // Catch: java.lang.Throwable -> L6f
                    if (r8 != r0) goto L6d
                    return r0
                L6d:
                    r8 = r4
                    goto L41
                L6f:
                    r8 = move-exception
                    goto L7f
                L71:
                    androidx.room.RoomDatabase r8 = r1.$db
                    androidx.room.InvalidationTracker r8 = r8.m()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r0 = r1.$observer
                    r8.o(r0)
                    w7.l0 r8 = w7.l0.INSTANCE
                    return r8
                L7f:
                    androidx.room.RoomDatabase r0 = r1.$db
                    androidx.room.InvalidationTracker r0 = r0.m()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r1 = r1.$observer
                    r0.o(r1)
                    throw r8
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.CoroutinesRoom$Companion$createFlow$1.AnonymousClass1.C00831.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z6, RoomDatabase roomDatabase, kotlinx.coroutines.flow.h<Object> hVar, String[] strArr, Callable<Object> callable, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$inTransaction = z6;
            this.$db = roomDatabase;
            this.$$this$flow = hVar;
            this.$tableNames = strArr;
            this.$callable = callable;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$inTransaction, this.$db, this.$$this$flow, this.$tableNames, this.$callable, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1] */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.e eVarA;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                o0 o0Var = (o0) this.L$0;
                final kotlinx.coroutines.channels.d dVarB = kotlinx.coroutines.channels.g.b(-1, null, null, 6, null);
                final String[] strArr = this.$tableNames;
                ?? r10 = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1
                    @Override // androidx.room.InvalidationTracker.Observer
                    public void c(@NotNull Set<String> tables) {
                        kotlin.jvm.internal.t.j(tables, "tables");
                        dVarB.p(l0.INSTANCE);
                    }
                };
                dVarB.p(l0.INSTANCE);
                TransactionElement transactionElement = (TransactionElement) o0Var.getCoroutineContext().get(TransactionElement.Key);
                if (transactionElement == null || (eVarA = transactionElement.e()) == null) {
                    if (this.$inTransaction) {
                        eVarA = CoroutinesRoomKt.b(this.$db);
                    } else {
                        eVarA = CoroutinesRoomKt.a(this.$db);
                    }
                }
                kotlinx.coroutines.channels.d dVarB2 = kotlinx.coroutines.channels.g.b(0, null, null, 7, null);
                kotlinx.coroutines.k.d(o0Var, eVarA, null, new C00831(this.$db, r10, dVarB, this.$callable, dVarB2, null), 2, null);
                kotlinx.coroutines.flow.h<Object> hVar = this.$$this$flow;
                this.label = 1;
                if (kotlinx.coroutines.flow.i.q(hVar, dVarB2, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoroutinesRoom$Companion$createFlow$1(boolean z6, RoomDatabase roomDatabase, String[] strArr, Callable<Object> callable, kotlin.coroutines.d<? super CoroutinesRoom$Companion$createFlow$1> dVar) {
        super(2, dVar);
        this.$inTransaction = z6;
        this.$db = roomDatabase;
        this.$tableNames = strArr;
        this.$callable = callable;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        CoroutinesRoom$Companion$createFlow$1 coroutinesRoom$Companion$createFlow$1 = new CoroutinesRoom$Companion$createFlow$1(this.$inTransaction, this.$db, this.$tableNames, this.$callable, dVar);
        coroutinesRoom$Companion$createFlow$1.L$0 = obj;
        return coroutinesRoom$Companion$createFlow$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.flow.h<Object> hVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((CoroutinesRoom$Companion$createFlow$1) create(hVar, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w7.w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w7.w.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$inTransaction, this.$db, (kotlinx.coroutines.flow.h) this.L$0, this.$tableNames, this.$callable, null);
            this.label = 1;
            if (p0.f(anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
