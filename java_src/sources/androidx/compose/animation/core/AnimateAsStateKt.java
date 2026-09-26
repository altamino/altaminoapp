package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class AnimateAsStateKt {

    @NotNull
    private static final SpringSpec<Float> defaultAnimation = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);

    @NotNull
    private static final SpringSpec<Dp> dpDefaultSpring = AnimationSpecKt.i(0.0f, 0.0f, Dp.c(VisibilityThresholdsKt.a(Dp.Companion)), 3, null);

    @NotNull
    private static final SpringSpec<Size> sizeDefaultSpring = AnimationSpecKt.i(0.0f, 0.0f, Size.c(VisibilityThresholdsKt.d(Size.Companion)), 3, null);

    @NotNull
    private static final SpringSpec<Offset> offsetDefaultSpring = AnimationSpecKt.i(0.0f, 0.0f, Offset.d(VisibilityThresholdsKt.c(Offset.Companion)), 3, null);

    @NotNull
    private static final SpringSpec<Rect> rectDefaultSpring = AnimationSpecKt.i(0.0f, 0.0f, VisibilityThresholdsKt.g(Rect.Companion), 3, null);

    @NotNull
    private static final SpringSpec<Integer> intDefaultSpring = AnimationSpecKt.i(0.0f, 0.0f, Integer.valueOf(VisibilityThresholdsKt.b(s.INSTANCE)), 3, null);

    @NotNull
    private static final SpringSpec<IntOffset> intOffsetDefaultSpring = AnimationSpecKt.i(0.0f, 0.0f, IntOffset.b(VisibilityThresholdsKt.e(IntOffset.Companion)), 3, null);

    @NotNull
    private static final SpringSpec<IntSize> intSizeDefaultSpring = AnimationSpecKt.i(0.0f, 0.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 3, null);

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r12v1 ??, still in use, count: 1, list:
          (r12v1 ?? I:java.lang.Object) from 0x005d: INVOKE (r23v0 ?? I:androidx.compose.runtime.Composer), (r12v1 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.z(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:96)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    @androidx.compose.runtime.Composable
    @org.jetbrains.annotations.NotNull
    public static final <T, V extends androidx.compose.animation.core.AnimationVector> androidx.compose.runtime.State<T> e(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r12v1 ??, still in use, count: 1, list:
          (r12v1 ?? I:java.lang.Object) from 0x005d: INVOKE (r23v0 ?? I:androidx.compose.runtime.Composer), (r12v1 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.z(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:96)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r18v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    @Composable
    @NotNull
    public static final State<Dp> c(float f, @Nullable AnimationSpec<Dp> animationSpec, @Nullable l<? super Dp, l0> lVar, @Nullable Composer composer, int i10, int i11) {
        composer.G(704104481);
        if ((i11 & 2) != 0) {
            animationSpec = dpDefaultSpring;
        }
        AnimationSpec<Dp> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        State<Dp> stateE = e(Dp.c(f), VectorConvertersKt.e(Dp.Companion), animationSpec2, null, lVar, composer, (i10 & 14) | ((i10 << 3) & 896) | ((i10 << 6) & 57344), 8);
        composer.Q();
        return stateE;
    }

    @Composable
    @NotNull
    public static final State<Float> d(float f, @Nullable AnimationSpec<Float> animationSpec, float f6, @Nullable l<? super Float, l0> lVar, @Nullable Composer composer, int i10, int i11) {
        l<? super Float, l0> lVar2;
        composer.G(1091643291);
        if ((i11 & 2) != 0) {
            animationSpec = defaultAnimation;
        }
        if ((i11 & 4) != 0) {
            f6 = 0.01f;
        }
        if ((i11 & 8) != 0) {
            lVar2 = null;
        } else {
            lVar2 = lVar;
        }
        composer.G(841393485);
        if (animationSpec == defaultAnimation) {
            Float fValueOf = Float.valueOf(f6);
            composer.G(1157296644);
            boolean zK = composer.k(fValueOf);
            Object objH = composer.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = AnimationSpecKt.i(0.0f, 0.0f, Float.valueOf(f6), 3, null);
                composer.z(objH);
            }
            composer.Q();
            animationSpec = (AnimationSpec) objH;
        }
        composer.Q();
        int i12 = i10 << 3;
        State<Float> stateE = e(Float.valueOf(f), VectorConvertersKt.i(m.INSTANCE), animationSpec, Float.valueOf(f6), lVar2, composer, (i10 & 14) | (i12 & 7168) | (i12 & 57344), 0);
        composer.Q();
        return stateE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> l<T, l0> f(State<? extends l<? super T, l0>> state) {
        return state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> AnimationSpec<T> g(State<? extends AnimationSpec<T>> state) {
        return state.getValue();
    }
}
