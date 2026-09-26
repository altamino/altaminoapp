package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.o0;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class TransformableKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0061 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x0062  */
    /* JADX WARN: Code duplicated, block: B:21:0x0073  */
    /* JADX WARN: Code duplicated, block: B:22:0x0075  */
    /* JADX WARN: Code duplicated, block: B:25:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008a  */
    /* JADX WARN: Code duplicated, block: B:28:0x008f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0095  */
    /* JADX WARN: Code duplicated, block: B:31:0x009a  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v6, types: [T, androidx.compose.ui.input.pointer.PointerId] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0062 -> B:19:0x0067). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object c(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, boolean r18, kotlin.coroutines.d<? super w7.l0> r19) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformableKt.c(androidx.compose.ui.input.pointer.AwaitPointerEventScope, boolean, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static final Object d(PointerInputScope pointerInputScope, State<Boolean> state, State<? extends TransformableState> state2, d<? super l0> dVar) {
        TransformableKt$detectZoom$1 transformableKt$detectZoom$1;
        k0 k0Var;
        State<? extends TransformableState> state3;
        float f;
        o0 o0Var;
        m0 m0Var;
        m0 m0Var2;
        k0 k0Var2;
        State<Boolean> state4;
        PointerInputScope pointerInputScope2;
        if (dVar instanceof TransformableKt$detectZoom$1) {
            transformableKt$detectZoom$1 = (TransformableKt$detectZoom$1) dVar;
            int i10 = transformableKt$detectZoom$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                transformableKt$detectZoom$1.label = i10 - Integer.MIN_VALUE;
            } else {
                transformableKt$detectZoom$1 = new TransformableKt$detectZoom$1(dVar);
            }
        } else {
            transformableKt$detectZoom$1 = new TransformableKt$detectZoom$1(dVar);
        }
        Object obj = transformableKt$detectZoom$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = transformableKt$detectZoom$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    float f6 = transformableKt$detectZoom$1.F$0;
                    k0 k0Var3 = (k0) transformableKt$detectZoom$1.L$7;
                    k0 k0Var4 = (k0) transformableKt$detectZoom$1.L$6;
                    o0 o0Var2 = (o0) transformableKt$detectZoom$1.L$5;
                    m0 m0Var3 = (m0) transformableKt$detectZoom$1.L$4;
                    m0 m0Var4 = (m0) transformableKt$detectZoom$1.L$3;
                    State<? extends TransformableState> state5 = (State) transformableKt$detectZoom$1.L$2;
                    State<Boolean> state6 = (State) transformableKt$detectZoom$1.L$1;
                    pointerInputScope2 = (PointerInputScope) transformableKt$detectZoom$1.L$0;
                    w.b(obj);
                    f = f6;
                    k0Var2 = k0Var3;
                    k0Var = k0Var4;
                    o0Var = o0Var2;
                    m0Var = m0Var3;
                    m0Var2 = m0Var4;
                    state3 = state5;
                    state4 = state6;
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.b(obj);
                }
                return l0.INSTANCE;
            }
            w.b(obj);
            m0 m0Var5 = new m0();
            m0 m0Var6 = new m0();
            m0Var6.element = 1.0f;
            o0 o0Var3 = new o0();
            o0Var3.element = Offset.Companion.c();
            k0Var = new k0();
            float fB = pointerInputScope.getViewConfiguration().b();
            k0 k0Var5 = new k0();
            TransformableKt$detectZoom$2 transformableKt$detectZoom$2 = new TransformableKt$detectZoom$2(null);
            transformableKt$detectZoom$1.L$0 = pointerInputScope;
            transformableKt$detectZoom$1.L$1 = state;
            state3 = state2;
            transformableKt$detectZoom$1.L$2 = state3;
            transformableKt$detectZoom$1.L$3 = m0Var5;
            transformableKt$detectZoom$1.L$4 = m0Var6;
            transformableKt$detectZoom$1.L$5 = o0Var3;
            transformableKt$detectZoom$1.L$6 = k0Var;
            transformableKt$detectZoom$1.L$7 = k0Var5;
            transformableKt$detectZoom$1.F$0 = fB;
            transformableKt$detectZoom$1.label = 1;
            if (pointerInputScope.J(transformableKt$detectZoom$2, transformableKt$detectZoom$1) == objE) {
                return objE;
            }
            f = fB;
            o0Var = o0Var3;
            m0Var = m0Var6;
            m0Var2 = m0Var5;
            k0Var2 = k0Var5;
            state4 = state;
            pointerInputScope2 = pointerInputScope;
            TransformableState value = state3.getValue();
            MutatePriority mutatePriority = MutatePriority.UserInput;
            TransformableKt$detectZoom$3 transformableKt$detectZoom$3 = new TransformableKt$detectZoom$3(pointerInputScope2, k0Var, m0Var, m0Var2, o0Var, f, k0Var2, state4, null);
            transformableKt$detectZoom$1.L$0 = null;
            transformableKt$detectZoom$1.L$1 = null;
            transformableKt$detectZoom$1.L$2 = null;
            transformableKt$detectZoom$1.L$3 = null;
            transformableKt$detectZoom$1.L$4 = null;
            transformableKt$detectZoom$1.L$5 = null;
            transformableKt$detectZoom$1.L$6 = null;
            transformableKt$detectZoom$1.L$7 = null;
            transformableKt$detectZoom$1.label = 2;
            if (value.a(mutatePriority, transformableKt$detectZoom$3, transformableKt$detectZoom$1) == objE) {
                return objE;
            }
        } catch (CancellationException unused) {
        }
        return l0.INSTANCE;
    }
}
