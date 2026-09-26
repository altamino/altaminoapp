package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.l;
import e8.q;
import kotlin.coroutines.d;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class TapGestureDetectorKt {

    @NotNull
    private static final q<PressGestureScope, Offset, d<? super l0>, Object> NoPressGesture = new TapGestureDetectorKt$NoPressGesture$1(null);

    public static /* synthetic */ Object e(AwaitPointerEventScope awaitPointerEventScope, boolean z6, d dVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        return d(awaitPointerEventScope, z6, dVar);
    }

    @Nullable
    public static final Object d(@NotNull AwaitPointerEventScope awaitPointerEventScope, boolean z6, @NotNull d<? super PointerInputChange> dVar) {
        return f(awaitPointerEventScope, PointerEventPass.Main, z6, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x005e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0066  */
    /* JADX WARN: Code duplicated, block: B:23:0x006b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0072 A[LOOP:0: B:19:0x005c->B:26:0x0072, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0041 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:18:0x0050). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:20:0x005e
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object f(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, @org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.PointerEventPass r10, boolean r11, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r12) {
        /*
            boolean r0 = r12 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            boolean r9 = r0.Z$0
            java.lang.Object r10 = r0.L$1
            androidx.compose.ui.input.pointer.PointerEventPass r10 = (androidx.compose.ui.input.pointer.PointerEventPass) r10
            java.lang.Object r11 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r11 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r11
            w7.w.b(r12)
            r8 = r11
            r11 = r9
            r9 = r8
            goto L50
        L36:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3e:
            w7.w.b(r12)
        L41:
            r0.L$0 = r9
            r0.L$1 = r10
            r0.Z$0 = r11
            r0.label = r3
            java.lang.Object r12 = r9.u0(r10, r0)
            if (r12 != r1) goto L50
            return r1
        L50:
            androidx.compose.ui.input.pointer.PointerEvent r12 = (androidx.compose.ui.input.pointer.PointerEvent) r12
            java.util.List r2 = r12.c()
            int r4 = r2.size()
            r5 = 0
            r6 = r5
        L5c:
            if (r6 >= r4) goto L75
            java.lang.Object r7 = r2.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            if (r11 == 0) goto L6b
            boolean r7 = androidx.compose.ui.input.pointer.PointerEventKt.a(r7)
            goto L6f
        L6b:
            boolean r7 = androidx.compose.ui.input.pointer.PointerEventKt.b(r7)
        L6f:
            if (r7 != 0) goto L72
            goto L41
        L72:
            int r6 = r6 + 1
            goto L5c
        L75:
            java.util.List r9 = r12.c()
            java.lang.Object r9 = r9.get(r5)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.f(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerEventPass, boolean, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0043 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0052 A[LOOP:0: B:19:0x0050->B:20:0x0052, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:23:0x0068  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075 A[LOOP:1: B:22:0x0066->B:26:0x0075, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x0038 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0041 -> B:18:0x0044). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:23:0x0068
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object h(androidx.compose.ui.input.pointer.AwaitPointerEventScope r8, kotlin.coroutines.d<? super w7.l0> r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r8 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r8 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r8
            w7.w.b(r9)
            goto L44
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            w7.w.b(r9)
        L38:
            r0.L$0 = r8
            r0.label = r3
            r9 = 0
            java.lang.Object r9 = androidx.compose.ui.input.pointer.b.a(r8, r9, r0, r3, r9)
            if (r9 != r1) goto L44
            return r1
        L44:
            androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
            java.util.List r2 = r9.c()
            int r4 = r2.size()
            r5 = 0
            r6 = r5
        L50:
            if (r6 >= r4) goto L5e
            java.lang.Object r7 = r2.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            r7.a()
            int r6 = r6 + 1
            goto L50
        L5e:
            java.util.List r9 = r9.c()
            int r2 = r9.size()
        L66:
            if (r5 >= r2) goto L78
            java.lang.Object r4 = r9.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
            boolean r4 = r4.g()
            if (r4 == 0) goto L75
            goto L38
        L75:
            int r5 = r5 + 1
            goto L66
        L78:
            w7.l0 r8 = w7.l0.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.h(androidx.compose.ui.input.pointer.AwaitPointerEventScope, kotlin.coroutines.d):java.lang.Object");
    }

    @Nullable
    public static final Object i(@NotNull PointerInputScope pointerInputScope, @NotNull q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, @Nullable l<? super Offset, l0> lVar, @NotNull d<? super l0> dVar) {
        Object objD = ForEachGestureKt.d(pointerInputScope, new TapGestureDetectorKt$detectTapAndPress$2(new PressGestureScopeImpl(pointerInputScope), qVar, lVar, null), dVar);
        return objD == kotlin.coroutines.intrinsics.d.e() ? objD : l0.INSTANCE;
    }

    @Nullable
    public static final Object j(@NotNull PointerInputScope pointerInputScope, @Nullable l<? super Offset, l0> lVar, @Nullable l<? super Offset, l0> lVar2, @NotNull q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, @Nullable l<? super Offset, l0> lVar3, @NotNull d<? super l0> dVar) {
        Object objF = p0.f(new TapGestureDetectorKt$detectTapGestures$2(pointerInputScope, qVar, lVar2, lVar, lVar3, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    public static /* synthetic */ Object k(PointerInputScope pointerInputScope, l lVar, l lVar2, q qVar, l lVar3, d dVar, int i10, Object obj) {
        l lVar4 = (i10 & 1) != 0 ? null : lVar;
        l lVar5 = (i10 & 2) != 0 ? null : lVar2;
        if ((i10 & 4) != 0) {
            qVar = NoPressGesture;
        }
        return j(pointerInputScope, lVar4, lVar5, qVar, (i10 & 8) != 0 ? null : lVar3, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:26:0x0077  */
    /* JADX WARN: Code duplicated, block: B:28:0x0083  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00c0 A[LOOP:1: B:21:0x005e->B:42:0x00c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:48:0x006c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0095 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00a0 -> B:36:0x00a3). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object l(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r13, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r14) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.l(androidx.compose.ui.input.pointer.AwaitPointerEventScope, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object g(AwaitPointerEventScope awaitPointerEventScope, PointerInputChange pointerInputChange, d<? super PointerInputChange> dVar) {
        return awaitPointerEventScope.F(awaitPointerEventScope.getViewConfiguration().c(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange, null), dVar);
    }
}
