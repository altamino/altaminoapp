package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import kotlin.coroutines.d;
import kotlin.jvm.internal.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
public final class ScrollExtensionsKt {
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Nullable
    public static final Object a(@NotNull ScrollableState scrollableState, float f, @NotNull AnimationSpec<Float> animationSpec, @NotNull d<? super Float> dVar) {
        ScrollExtensionsKt$animateScrollBy$1 scrollExtensionsKt$animateScrollBy$1;
        m0 m0Var;
        if (dVar instanceof ScrollExtensionsKt$animateScrollBy$1) {
            scrollExtensionsKt$animateScrollBy$1 = (ScrollExtensionsKt$animateScrollBy$1) dVar;
            int i10 = scrollExtensionsKt$animateScrollBy$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                scrollExtensionsKt$animateScrollBy$1.label = i10 - Integer.MIN_VALUE;
            } else {
                scrollExtensionsKt$animateScrollBy$1 = new ScrollExtensionsKt$animateScrollBy$1(dVar);
            }
        } else {
            scrollExtensionsKt$animateScrollBy$1 = new ScrollExtensionsKt$animateScrollBy$1(dVar);
        }
        ScrollExtensionsKt$animateScrollBy$1 scrollExtensionsKt$animateScrollBy$2 = scrollExtensionsKt$animateScrollBy$1;
        Object obj = scrollExtensionsKt$animateScrollBy$2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = scrollExtensionsKt$animateScrollBy$2.label;
        if (i11 == 0) {
            w.b(obj);
            m0 m0Var2 = new m0();
            ScrollExtensionsKt$animateScrollBy$2 scrollExtensionsKt$animateScrollBy$3 = new ScrollExtensionsKt$animateScrollBy$2(f, animationSpec, m0Var2, null);
            scrollExtensionsKt$animateScrollBy$2.L$0 = m0Var2;
            scrollExtensionsKt$animateScrollBy$2.label = 1;
            if (b.a(scrollableState, null, scrollExtensionsKt$animateScrollBy$3, scrollExtensionsKt$animateScrollBy$2, 1, null) == objE) {
                return objE;
            }
            m0Var = m0Var2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            m0Var = (m0) scrollExtensionsKt$animateScrollBy$2.L$0;
            w.b(obj);
        }
        return kotlin.coroutines.jvm.internal.b.c(m0Var.element);
    }

    public static /* synthetic */ Object b(ScrollableState scrollableState, float f, AnimationSpec animationSpec, d dVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            animationSpec = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        }
        return a(scrollableState, f, animationSpec, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Nullable
    public static final Object c(@NotNull ScrollableState scrollableState, float f, @NotNull d<? super Float> dVar) {
        ScrollExtensionsKt$scrollBy$1 scrollExtensionsKt$scrollBy$1;
        m0 m0Var;
        if (dVar instanceof ScrollExtensionsKt$scrollBy$1) {
            scrollExtensionsKt$scrollBy$1 = (ScrollExtensionsKt$scrollBy$1) dVar;
            int i10 = scrollExtensionsKt$scrollBy$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                scrollExtensionsKt$scrollBy$1.label = i10 - Integer.MIN_VALUE;
            } else {
                scrollExtensionsKt$scrollBy$1 = new ScrollExtensionsKt$scrollBy$1(dVar);
            }
        } else {
            scrollExtensionsKt$scrollBy$1 = new ScrollExtensionsKt$scrollBy$1(dVar);
        }
        ScrollExtensionsKt$scrollBy$1 scrollExtensionsKt$scrollBy$2 = scrollExtensionsKt$scrollBy$1;
        Object obj = scrollExtensionsKt$scrollBy$2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = scrollExtensionsKt$scrollBy$2.label;
        if (i11 == 0) {
            w.b(obj);
            m0 m0Var2 = new m0();
            ScrollExtensionsKt$scrollBy$2 scrollExtensionsKt$scrollBy$3 = new ScrollExtensionsKt$scrollBy$2(m0Var2, f, null);
            scrollExtensionsKt$scrollBy$2.L$0 = m0Var2;
            scrollExtensionsKt$scrollBy$2.label = 1;
            if (b.a(scrollableState, null, scrollExtensionsKt$scrollBy$3, scrollExtensionsKt$scrollBy$2, 1, null) == objE) {
                return objE;
            }
            m0Var = m0Var2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            m0Var = (m0) scrollExtensionsKt$scrollBy$2.L$0;
            w.b(obj);
        }
        return kotlin.coroutines.jvm.internal.b.c(m0Var.element);
    }
}
