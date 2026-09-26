package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.gestures.ScrollScope;
import com.narvii.poweruser.history.ModerationHistory;
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

/* JADX INFO: loaded from: classes7.dex */
@f(c = "androidx.compose.foundation.lazy.LazyListScrollingKt$doSmoothScrollToItem$3", f = "LazyListScrolling.kt", l = {114, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER}, m = "invokeSuspend")
final class LazyListScrollingKt$doSmoothScrollToItem$3 extends l implements p<ScrollScope, d<? super l0>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ int $scrollOffset;
    final /* synthetic */ LazyListState $this_doSmoothScrollToItem;
    float F$0;
    float F$1;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyListScrollingKt$doSmoothScrollToItem$3$2, reason: invalid class name */
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
        final /* synthetic */ LazyListState $this_doSmoothScrollToItem;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(float f, m0 m0Var, ScrollScope scrollScope, k0 k0Var, boolean z6, float f6, n0 n0Var, int i10, LazyListState lazyListState, int i11, p0<AnimationState<Float, AnimationVector1D>> p0Var) {
            super(1);
            this.$target = f;
            this.$prevValue = m0Var;
            this.$$this$scroll = scrollScope;
            this.$loop = k0Var;
            this.$forward = z6;
            this.$boundDistancePx = f6;
            this.$loops = n0Var;
            this.$index = i10;
            this.$this_doSmoothScrollToItem = lazyListState;
            this.$scrollOffset = i11;
            this.$anim = p0Var;
        }

        public final void a(@NotNull AnimationScope<Float, AnimationVector1D> animateTo) {
            t.j(animateTo, "$this$animateTo");
            LazyListItemInfo lazyListItemInfoD = LazyListScrollingKt.d(this.$this_doSmoothScrollToItem, this.$index);
            if (lazyListItemInfoD == null) {
                float fI = (this.$target > 0.0f ? o.i(animateTo.e().floatValue(), this.$target) : o.d(animateTo.e().floatValue(), this.$target)) - this.$prevValue.element;
                float fA = this.$$this$scroll.a(fI);
                LazyListItemInfo lazyListItemInfoD2 = LazyListScrollingKt.d(this.$this_doSmoothScrollToItem, this.$index);
                if (lazyListItemInfoD2 == null && !LazyListScrollingKt$doSmoothScrollToItem$3.h(this.$forward, this.$this_doSmoothScrollToItem, this.$index, this.$scrollOffset)) {
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
                        if (this.$loops.element >= 2 && this.$index - ((LazyListItemInfo) d0.v0(this.$this_doSmoothScrollToItem.m().b())).getIndex() > 100) {
                            this.$this_doSmoothScrollToItem.B(this.$index - 100, 0);
                        }
                    } else if (this.$loops.element >= 2) {
                        int index = ((LazyListItemInfo) d0.j0(this.$this_doSmoothScrollToItem.m().b())).getIndex();
                        int i10 = this.$index;
                        if (index - i10 > 100) {
                            this.$this_doSmoothScrollToItem.B(i10 + 100, 0);
                        }
                    }
                }
                lazyListItemInfoD = lazyListItemInfoD2;
            }
            if (!LazyListScrollingKt$doSmoothScrollToItem$3.h(this.$forward, this.$this_doSmoothScrollToItem, this.$index, this.$scrollOffset)) {
                if (lazyListItemInfoD != null) {
                    throw new ItemFoundInScroll(lazyListItemInfoD, this.$anim.element);
                }
            } else {
                this.$this_doSmoothScrollToItem.B(this.$index, this.$scrollOffset);
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

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyListScrollingKt$doSmoothScrollToItem$3$4, reason: invalid class name */
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
    LazyListScrollingKt$doSmoothScrollToItem$3(LazyListState lazyListState, int i10, int i11, d<? super LazyListScrollingKt$doSmoothScrollToItem$3> dVar) {
        super(2, dVar);
        this.$this_doSmoothScrollToItem = lazyListState;
        this.$index = i10;
        this.$scrollOffset = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(boolean z6, LazyListState lazyListState, int i10, int i11) {
        if (z6) {
            if (lazyListState.j() <= i10 && (lazyListState.j() != i10 || lazyListState.k() <= i11)) {
                return false;
            }
        } else if (lazyListState.j() >= i10 && (lazyListState.j() != i10 || lazyListState.k() >= i11)) {
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        LazyListScrollingKt$doSmoothScrollToItem$3 lazyListScrollingKt$doSmoothScrollToItem$3 = new LazyListScrollingKt$doSmoothScrollToItem$3(this.$this_doSmoothScrollToItem, this.$index, this.$scrollOffset, dVar);
        lazyListScrollingKt$doSmoothScrollToItem$3.L$0 = obj;
        return lazyListScrollingKt$doSmoothScrollToItem$3;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable d<? super l0> dVar) {
        return ((LazyListScrollingKt$doSmoothScrollToItem$3) create(scrollScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00b1 A[Catch: ItemFoundInScroll -> 0x01d5, TryCatch #2 {ItemFoundInScroll -> 0x01d5, blocks: (B:23:0x00ad, B:25:0x00b1, B:27:0x00bd, B:34:0x00e4, B:40:0x0112, B:44:0x0154, B:48:0x015d), top: B:81:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00d0 A[Catch: ItemFoundInScroll -> 0x00df, TRY_ENTER, TRY_LEAVE, TryCatch #4 {ItemFoundInScroll -> 0x00df, blocks: (B:56:0x01c1, B:30:0x00d0), top: B:85:0x01c1 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x010c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x010e  */
    /* JADX WARN: Code duplicated, block: B:42:0x014f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0152  */
    /* JADX WARN: Code duplicated, block: B:46:0x0158  */
    /* JADX WARN: Code duplicated, block: B:47:0x015b  */
    /* JADX WARN: Code duplicated, block: B:54:0x01b6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x01b7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [T, androidx.compose.animation.core.AnimationState] */
    /* JADX WARN: Type inference failed for: r5v15, types: [T, androidx.compose.animation.core.AnimationState] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x01b7 -> B:85:0x01c1). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r36) {
        /*
            Method dump skipped, instruction units count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListScrollingKt$doSmoothScrollToItem$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
