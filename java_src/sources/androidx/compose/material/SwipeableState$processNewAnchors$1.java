package androidx.compose.material;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.material.SwipeableState", f = "Swipeable.kt", l = {159, 183, 186}, m = "processNewAnchors$material_release")
final class SwipeableState$processNewAnchors$1 extends d {
    float F$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SwipeableState<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwipeableState$processNewAnchors$1(SwipeableState<T> swipeableState, kotlin.coroutines.d<? super SwipeableState$processNewAnchors$1> dVar) {
        super(dVar);
        this.this$0 = swipeableState;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to androidx.compose.material.SwipeableState$processNewAnchors$1 for r1v1 'this'  kotlin.coroutines.d
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r2) {
        /*
            r1 = this;
            r1.result = r2
            int r2 = r1.label
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 | r0
            r1.label = r2
            androidx.compose.material.SwipeableState<T> r2 = r1.this$0
            r0 = 0
            java.lang.Object r2 = r2.B(r0, r0, r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SwipeableState$processNewAnchors$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
