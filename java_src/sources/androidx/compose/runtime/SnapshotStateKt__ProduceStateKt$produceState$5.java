package androidx.compose.runtime;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
@f(c = "androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$5", f = "ProduceState.kt", l = {222}, m = "invokeSuspend")
final class SnapshotStateKt__ProduceStateKt$produceState$5 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ p<ProduceStateScope<T>, d<? super l0>, Object> $producer;
    final /* synthetic */ MutableState<T> $result;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SnapshotStateKt__ProduceStateKt$produceState$5(p<? super ProduceStateScope<T>, ? super d<? super l0>, ? extends Object> pVar, MutableState<T> mutableState, d<? super SnapshotStateKt__ProduceStateKt$produceState$5> dVar) {
        super(2, dVar);
        this.$producer = pVar;
        this.$result = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SnapshotStateKt__ProduceStateKt$produceState$5 snapshotStateKt__ProduceStateKt$produceState$5 = new SnapshotStateKt__ProduceStateKt$produceState$5(this.$producer, this.$result, dVar);
        snapshotStateKt__ProduceStateKt$produceState$5.L$0 = obj;
        return snapshotStateKt__ProduceStateKt$produceState$5;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((SnapshotStateKt__ProduceStateKt$produceState$5) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$5 for r5v1 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L17
            if (r1 != r2) goto Lf
            w7.w.b(r6)
            goto L34
        Lf:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L17:
            w7.w.b(r6)
            java.lang.Object r6 = r5.L$0
            kotlinx.coroutines.o0 r6 = (kotlinx.coroutines.o0) r6
            e8.p<androidx.compose.runtime.ProduceStateScope<T>, kotlin.coroutines.d<? super w7.l0>, java.lang.Object> r1 = r5.$producer
            androidx.compose.runtime.ProduceStateScopeImpl r3 = new androidx.compose.runtime.ProduceStateScopeImpl
            androidx.compose.runtime.MutableState<T> r4 = r5.$result
            kotlin.coroutines.g r6 = r6.getCoroutineContext()
            r3.<init>(r4, r6)
            r5.label = r2
            java.lang.Object r6 = r1.invoke(r3, r5)
            if (r6 != r0) goto L34
            return r0
        L34:
            w7.l0 r6 = w7.l0.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$5.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
