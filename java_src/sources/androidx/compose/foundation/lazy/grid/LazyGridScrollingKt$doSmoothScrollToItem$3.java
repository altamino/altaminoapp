package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.gestures.ScrollScope;
import e8.p;
import j8.o;
import kotlin.collections.d0;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.lazy.grid.LazyGridScrollingKt$doSmoothScrollToItem$3", f = "LazyGridScrolling.kt", l = {128, 223}, m = "invokeSuspend")
final class LazyGridScrollingKt$doSmoothScrollToItem$3 extends l implements p<ScrollScope, d<? super l0>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ int $scrollOffset;
    final /* synthetic */ int $slotsPerLine;
    final /* synthetic */ LazyGridState $this_doSmoothScrollToItem;
    float F$0;
    float F$1;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridScrollingKt$doSmoothScrollToItem$3$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.l<AnimationScope<Float, AnimationVector1D>, l0> {
        final /* synthetic */ ScrollScope $$this$scroll;
        final /* synthetic */ p0<AnimationState<Float, AnimationVector1D>> $anim;
        final /* synthetic */ float $boundDistancePx;
        final /* synthetic */ boolean $forward;
        final /* synthetic */ int $index;
        final /* synthetic */ k0 $loop;
        final /* synthetic */ n0 $loops;
        final /* synthetic */ m0 $prevValue;
        final /* synthetic */ int $scrollOffset;
        final /* synthetic */ float $target;
        final /* synthetic */ LazyGridState $this_doSmoothScrollToItem;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(float f, m0 m0Var, ScrollScope scrollScope, k0 k0Var, boolean z6, float f6, n0 n0Var, int i10, LazyGridState lazyGridState, int i11, p0<AnimationState<Float, AnimationVector1D>> p0Var) {
            super(1);
            this.$target = f;
            this.$prevValue = m0Var;
            this.$$this$scroll = scrollScope;
            this.$loop = k0Var;
            this.$forward = z6;
            this.$boundDistancePx = f6;
            this.$loops = n0Var;
            this.$index = i10;
            this.$this_doSmoothScrollToItem = lazyGridState;
            this.$scrollOffset = i11;
            this.$anim = p0Var;
        }

        public final void a(@NotNull AnimationScope<Float, AnimationVector1D> animateTo) {
            t.j(animateTo, "$this$animateTo");
            LazyGridItemInfo lazyGridItemInfoF = LazyGridScrollingKt.f(this.$this_doSmoothScrollToItem, this.$index);
            if (lazyGridItemInfoF == null) {
                float fI = (this.$target > 0.0f ? o.i(animateTo.e().floatValue(), this.$target) : o.d(animateTo.e().floatValue(), this.$target)) - this.$prevValue.element;
                float fA = this.$$this$scroll.a(fI);
                LazyGridItemInfo lazyGridItemInfoF2 = LazyGridScrollingKt.f(this.$this_doSmoothScrollToItem, this.$index);
                if (lazyGridItemInfoF2 == null && !LazyGridScrollingKt$doSmoothScrollToItem$3.h(this.$forward, this.$this_doSmoothScrollToItem, this.$index, this.$scrollOffset)) {
                    if (fI != fA) {
                        animateTo.a();
                        this.$loop.element = false;
                        return;
                    }
                    this.$prevValue.element += fI;
                    if (this.$forward) {
                        if (animateTo.e().floatValue() > this.$boundDistancePx) {
                            animateTo.a();
                        }
                    } else if (animateTo.e().floatValue() < (-this.$boundDistancePx)) {
                        animateTo.a();
                    }
                    if (this.$forward) {
                        if (this.$loops.element >= 2 && this.$index - ((LazyGridItemInfo) d0.v0(this.$this_doSmoothScrollToItem.m().b())).getIndex() > 200) {
                            this.$this_doSmoothScrollToItem.E(this.$index - 200, 0);
                        }
                    } else if (this.$loops.element >= 2) {
                        int index = ((LazyGridItemInfo) d0.j0(this.$this_doSmoothScrollToItem.m().b())).getIndex();
                        int i10 = this.$index;
                        if (index - i10 > 100) {
                            this.$this_doSmoothScrollToItem.E(i10 + 200, 0);
                        }
                    }
                }
                lazyGridItemInfoF = lazyGridItemInfoF2;
            }
            if (!LazyGridScrollingKt$doSmoothScrollToItem$3.h(this.$forward, this.$this_doSmoothScrollToItem, this.$index, this.$scrollOffset)) {
                if (lazyGridItemInfoF != null) {
                    throw new ItemFoundInScroll(lazyGridItemInfoF, this.$anim.element);
                }
            } else {
                this.$this_doSmoothScrollToItem.E(this.$index, this.$scrollOffset);
                this.$loop.element = false;
                animateTo.a();
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
            a(animationScope);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridScrollingKt$doSmoothScrollToItem$3$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements e8.l<AnimationScope<Float, AnimationVector1D>, l0> {
        final /* synthetic */ ScrollScope $$this$scroll;
        final /* synthetic */ m0 $prevValue;
        final /* synthetic */ float $target;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(float f, m0 m0Var, ScrollScope scrollScope) {
            super(1);
            this.$target = f;
            this.$prevValue = m0Var;
            this.$$this$scroll = scrollScope;
        }

        public final void a(@NotNull AnimationScope<Float, AnimationVector1D> animateTo) {
            t.j(animateTo, "$this$animateTo");
            float f = this.$target;
            float fD = 0.0f;
            if (f > 0.0f) {
                fD = o.i(animateTo.e().floatValue(), this.$target);
            } else if (f < 0.0f) {
                fD = o.d(animateTo.e().floatValue(), this.$target);
            }
            float f6 = fD - this.$prevValue.element;
            if (f6 != this.$$this$scroll.a(f6) || fD != animateTo.e().floatValue()) {
                animateTo.a();
            }
            this.$prevValue.element += f6;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
            a(animationScope);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridScrollingKt$doSmoothScrollToItem$3(LazyGridState lazyGridState, int i10, int i11, int i12, d<? super LazyGridScrollingKt$doSmoothScrollToItem$3> dVar) {
        super(2, dVar);
        this.$this_doSmoothScrollToItem = lazyGridState;
        this.$index = i10;
        this.$slotsPerLine = i11;
        this.$scrollOffset = i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(boolean z6, LazyGridState lazyGridState, int i10, int i11) {
        if (z6) {
            if (lazyGridState.j() <= i10 && (lazyGridState.j() != i10 || lazyGridState.k() <= i11)) {
                return false;
            }
        } else if (lazyGridState.j() >= i10 && (lazyGridState.j() != i10 || lazyGridState.k() >= i11)) {
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        LazyGridScrollingKt$doSmoothScrollToItem$3 lazyGridScrollingKt$doSmoothScrollToItem$3 = new LazyGridScrollingKt$doSmoothScrollToItem$3(this.$this_doSmoothScrollToItem, this.$index, this.$slotsPerLine, this.$scrollOffset, dVar);
        lazyGridScrollingKt$doSmoothScrollToItem$3.L$0 = obj;
        return lazyGridScrollingKt$doSmoothScrollToItem$3;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable d<? super l0> dVar) {
        return ((LazyGridScrollingKt$doSmoothScrollToItem$3) create(scrollScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00b1 A[Catch: ItemFoundInScroll -> 0x01d9, TryCatch #1 {ItemFoundInScroll -> 0x01d9, blocks: (B:23:0x00ad, B:25:0x00b1, B:27:0x00bd, B:31:0x00d8, B:35:0x00ea, B:41:0x010d, B:45:0x014d, B:49:0x0156), top: B:84:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:38:0x0107 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0109  */
    /* JADX WARN: Code duplicated, block: B:43:0x0148  */
    /* JADX WARN: Code duplicated, block: B:44:0x014b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0151  */
    /* JADX WARN: Code duplicated, block: B:48:0x0154  */
    /* JADX WARN: Code duplicated, block: B:56:0x01b2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:57:0x01b3  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [T, androidx.compose.animation.core.AnimationState] */
    /* JADX WARN: Type inference failed for: r4v15, types: [T, androidx.compose.animation.core.AnimationState] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x01b3 -> B:82:0x01be). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r37) {
        /*
            Method dump skipped, instruction units count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridScrollingKt$doSmoothScrollToItem$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
