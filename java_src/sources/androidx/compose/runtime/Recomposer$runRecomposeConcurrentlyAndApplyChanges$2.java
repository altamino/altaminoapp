package androidx.compose.runtime;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2", f = "Recomposer.kt", l = {592, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID, 613}, m = "invokeSuspend")
final class Recomposer$runRecomposeConcurrentlyAndApplyChanges$2 extends l implements q<o0, MonotonicFrameClock, d<? super l0>, Object> {
    final /* synthetic */ g $recomposeCoroutineContext;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$runRecomposeConcurrentlyAndApplyChanges$2(g gVar, Recomposer recomposer, d<? super Recomposer$runRecomposeConcurrentlyAndApplyChanges$2> dVar) {
        super(3, dVar);
        this.$recomposeCoroutineContext = gVar;
        this.this$0 = recomposer;
    }

    @Override // e8.q
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull o0 o0Var, @NotNull MonotonicFrameClock monotonicFrameClock, @Nullable d<? super l0> dVar) {
        Recomposer$runRecomposeConcurrentlyAndApplyChanges$2 recomposer$runRecomposeConcurrentlyAndApplyChanges$2 = new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2(this.$recomposeCoroutineContext, this.this$0, dVar);
        recomposer$runRecomposeConcurrentlyAndApplyChanges$2.L$0 = o0Var;
        recomposer$runRecomposeConcurrentlyAndApplyChanges$2.L$1 = monotonicFrameClock;
        return recomposer$runRecomposeConcurrentlyAndApplyChanges$2.invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0099  */
    /* JADX WARN: Code duplicated, block: B:23:0x00a9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:29:0x00c2 A[Catch: all -> 0x00ed, TryCatch #0 {all -> 0x00ed, blocks: (B:27:0x00b5, B:29:0x00c2, B:31:0x00cd, B:33:0x00de, B:36:0x00f0, B:37:0x00f6, B:38:0x00fd, B:40:0x0108, B:41:0x0134, B:43:0x0144, B:45:0x014a, B:52:0x0165, B:53:0x0170), top: B:66:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00cd A[Catch: all -> 0x00ed, TryCatch #0 {all -> 0x00ed, blocks: (B:27:0x00b5, B:29:0x00c2, B:31:0x00cd, B:33:0x00de, B:36:0x00f0, B:37:0x00f6, B:38:0x00fd, B:40:0x0108, B:41:0x0134, B:43:0x0144, B:45:0x014a, B:52:0x0165, B:53:0x0170), top: B:66:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00de A[Catch: all -> 0x00ed, LOOP:1: B:32:0x00dc->B:33:0x00de, LOOP_END, TryCatch #0 {all -> 0x00ed, blocks: (B:27:0x00b5, B:29:0x00c2, B:31:0x00cd, B:33:0x00de, B:36:0x00f0, B:37:0x00f6, B:38:0x00fd, B:40:0x0108, B:41:0x0134, B:43:0x0144, B:45:0x014a, B:52:0x0165, B:53:0x0170), top: B:66:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0108 A[Catch: all -> 0x00ed, LOOP:2: B:39:0x0106->B:40:0x0108, LOOP_END, TryCatch #0 {all -> 0x00ed, blocks: (B:27:0x00b5, B:29:0x00c2, B:31:0x00cd, B:33:0x00de, B:36:0x00f0, B:37:0x00f6, B:38:0x00fd, B:40:0x0108, B:41:0x0134, B:43:0x0144, B:45:0x014a, B:52:0x0165, B:53:0x0170), top: B:66:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0144 A[Catch: all -> 0x00ed, TryCatch #0 {all -> 0x00ed, blocks: (B:27:0x00b5, B:29:0x00c2, B:31:0x00cd, B:33:0x00de, B:36:0x00f0, B:37:0x00f6, B:38:0x00fd, B:40:0x0108, B:41:0x0134, B:43:0x0144, B:45:0x014a, B:52:0x0165, B:53:0x0170), top: B:66:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x014a A[Catch: all -> 0x00ed, TRY_LEAVE, TryCatch #0 {all -> 0x00ed, blocks: (B:27:0x00b5, B:29:0x00c2, B:31:0x00cd, B:33:0x00de, B:36:0x00f0, B:37:0x00f6, B:38:0x00fd, B:40:0x0108, B:41:0x0134, B:43:0x0144, B:45:0x014a, B:52:0x0165, B:53:0x0170), top: B:66:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x014f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0153  */
    /* JADX WARN: Code duplicated, block: B:52:0x0165 A[Catch: all -> 0x00ed, TRY_ENTER, TryCatch #0 {all -> 0x00ed, blocks: (B:27:0x00b5, B:29:0x00c2, B:31:0x00cd, B:33:0x00de, B:36:0x00f0, B:37:0x00f6, B:38:0x00fd, B:40:0x0108, B:41:0x0134, B:43:0x0144, B:45:0x014a, B:52:0x0165, B:53:0x0170), top: B:66:0x00b5 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00aa -> B:25:0x00ac). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
