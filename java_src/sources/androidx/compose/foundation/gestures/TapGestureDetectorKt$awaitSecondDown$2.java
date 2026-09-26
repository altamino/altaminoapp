package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2", f = "TapGestureDetector.kt", l = {191}, m = "invokeSuspend")
final class TapGestureDetectorKt$awaitSecondDown$2 extends k implements p<AwaitPointerEventScope, d<? super PointerInputChange>, Object> {
    final /* synthetic */ PointerInputChange $firstUp;
    long J$0;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TapGestureDetectorKt$awaitSecondDown$2(PointerInputChange pointerInputChange, d<? super TapGestureDetectorKt$awaitSecondDown$2> dVar) {
        super(2, dVar);
        this.$firstUp = pointerInputChange;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TapGestureDetectorKt$awaitSecondDown$2 tapGestureDetectorKt$awaitSecondDown$2 = new TapGestureDetectorKt$awaitSecondDown$2(this.$firstUp, dVar);
        tapGestureDetectorKt$awaitSecondDown$2.L$0 = obj;
        return tapGestureDetectorKt$awaitSecondDown$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super PointerInputChange> dVar) {
        return ((TapGestureDetectorKt$awaitSecondDown$2) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0047 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x0048  */
    /* JADX WARN: Code duplicated, block: B:15:0x0058 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x0059  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0048 -> B:13:0x004e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
            int r1 = r9.label
            r2 = 1
            if (r1 == 0) goto L21
            if (r1 != r2) goto L19
            long r3 = r9.J$0
            java.lang.Object r1 = r9.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            w7.w.b(r10)
            r4 = r3
            r3 = r1
            r1 = r0
            r0 = r9
            goto L4e
        L19:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L21:
            w7.w.b(r10)
            java.lang.Object r10 = r9.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r10 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r10
            androidx.compose.ui.input.pointer.PointerInputChange r1 = r9.$firstUp
            long r3 = r1.l()
            androidx.compose.ui.platform.ViewConfiguration r1 = r10.getViewConfiguration()
            long r5 = r1.a()
            long r3 = r3 + r5
            r1 = r10
            r10 = r9
        L39:
            r10.L$0 = r1
            r10.J$0 = r3
            r10.label = r2
            r5 = 0
            r6 = 0
            java.lang.Object r5 = androidx.compose.foundation.gestures.TapGestureDetectorKt.e(r1, r5, r10, r2, r6)
            if (r5 != r0) goto L48
            return r0
        L48:
            r8 = r0
            r0 = r10
            r10 = r5
            r4 = r3
            r3 = r1
            r1 = r8
        L4e:
            androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
            long r6 = r10.l()
            int r6 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r6 < 0) goto L59
            return r10
        L59:
            r10 = r0
            r0 = r1
            r1 = r3
            r3 = r4
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
