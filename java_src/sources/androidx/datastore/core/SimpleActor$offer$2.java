package androidx.datastore.core;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
@f(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {122, 122}, m = "invokeSuspend")
final class SimpleActor$offer$2 extends l implements p<o0, d<? super l0>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ SimpleActor<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SimpleActor$offer$2(SimpleActor<T> simpleActor, d<? super SimpleActor$offer$2> dVar) {
        super(2, dVar);
        this.this$0 = simpleActor;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new SimpleActor$offer$2(this.this$0, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((SimpleActor$offer$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x005b  */
    /* JADX WARN: Code duplicated, block: B:22:0x006b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006c -> B:24:0x006e). Please report as a decompilation issue!!! */
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
            if (r1 == 0) goto L26
            if (r1 == r3) goto L1b
            if (r1 != r2) goto L13
            w7.w.b(r8)
            r8 = r7
            goto L6e
        L13:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1b:
            java.lang.Object r1 = r7.L$0
            e8.p r1 = (e8.p) r1
            w7.w.b(r8)
            r4 = r1
            r1 = r0
            r0 = r7
            goto L60
        L26:
            w7.w.b(r8)
            androidx.datastore.core.SimpleActor<T> r8 = r7.this$0
            java.util.concurrent.atomic.AtomicInteger r8 = androidx.datastore.core.SimpleActor.c(r8)
            int r8 = r8.get()
            if (r8 <= 0) goto L37
            r8 = r3
            goto L38
        L37:
            r8 = 0
        L38:
            if (r8 == 0) goto L7d
            r8 = r7
        L3b:
            androidx.datastore.core.SimpleActor<T> r1 = r8.this$0
            kotlinx.coroutines.o0 r1 = androidx.datastore.core.SimpleActor.d(r1)
            kotlinx.coroutines.p0.g(r1)
            androidx.datastore.core.SimpleActor<T> r1 = r8.this$0
            e8.p r1 = androidx.datastore.core.SimpleActor.a(r1)
            androidx.datastore.core.SimpleActor<T> r4 = r8.this$0
            kotlinx.coroutines.channels.d r4 = androidx.datastore.core.SimpleActor.b(r4)
            r8.L$0 = r1
            r8.label = r3
            java.lang.Object r4 = r4.v(r8)
            if (r4 != r0) goto L5b
            return r0
        L5b:
            r6 = r0
            r0 = r8
            r8 = r4
            r4 = r1
            r1 = r6
        L60:
            r5 = 0
            r0.L$0 = r5
            r0.label = r2
            java.lang.Object r8 = r4.invoke(r8, r0)
            if (r8 != r1) goto L6c
            return r1
        L6c:
            r8 = r0
            r0 = r1
        L6e:
            androidx.datastore.core.SimpleActor<T> r1 = r8.this$0
            java.util.concurrent.atomic.AtomicInteger r1 = androidx.datastore.core.SimpleActor.c(r1)
            int r1 = r1.decrementAndGet()
            if (r1 != 0) goto L3b
            w7.l0 r8 = w7.l0.INSTANCE
            return r8
        L7d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "Check failed."
            java.lang.String r0 = r0.toString()
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor$offer$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
