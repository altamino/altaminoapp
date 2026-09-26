package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
@f(c = "androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2", f = "Scrollable.kt", l = {412}, m = "invokeSuspend")
final class ScrollingLogic$doFlingAnimation$2 extends l implements p<ScrollScope, d<? super l0>, Object> {
    final /* synthetic */ long $available;
    final /* synthetic */ o0 $result;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollingLogic$doFlingAnimation$2(ScrollingLogic scrollingLogic, o0 o0Var, long j6, d<? super ScrollingLogic$doFlingAnimation$2> dVar) {
        super(2, dVar);
        this.this$0 = scrollingLogic;
        this.$result = o0Var;
        this.$available = j6;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this.this$0, this.$result, this.$available, dVar);
        scrollingLogic$doFlingAnimation$2.L$0 = obj;
        return scrollingLogic$doFlingAnimation$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable d<? super l0> dVar) {
        return ((ScrollingLogic$doFlingAnimation$2) create(scrollScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ScrollingLogic scrollingLogic;
        o0 o0Var;
        ScrollingLogic scrollingLogic2;
        long j6;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                j6 = this.J$0;
                o0Var = (o0) this.L$2;
                scrollingLogic = (ScrollingLogic) this.L$1;
                scrollingLogic2 = (ScrollingLogic) this.L$0;
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            final ScrollingLogic$doFlingAnimation$2$outerScopeScroll$1 scrollingLogic$doFlingAnimation$2$outerScopeScroll$1 = new ScrollingLogic$doFlingAnimation$2$outerScopeScroll$1(this.this$0, (ScrollScope) this.L$0);
            final ScrollingLogic scrollingLogic3 = this.this$0;
            ScrollScope scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$scope$1
                @Override // androidx.compose.foundation.gestures.ScrollScope
                public float a(float f) {
                    ScrollingLogic scrollingLogic4 = scrollingLogic3;
                    return scrollingLogic4.k(scrollingLogic$doFlingAnimation$2$outerScopeScroll$1.invoke(Offset.d(scrollingLogic4.l(f))).u());
                }
            };
            scrollingLogic = this.this$0;
            o0 o0Var2 = this.$result;
            long j10 = this.$available;
            FlingBehavior flingBehaviorC = scrollingLogic.c();
            long j11 = o0Var2.element;
            float fG = scrollingLogic.g(scrollingLogic.j(j10));
            this.L$0 = scrollingLogic;
            this.L$1 = scrollingLogic;
            this.L$2 = o0Var2;
            this.J$0 = j11;
            this.label = 1;
            obj = flingBehaviorC.a(scrollScope, fG, this);
            if (obj == objE) {
                return objE;
            }
            o0Var = o0Var2;
            scrollingLogic2 = scrollingLogic;
            j6 = j11;
        }
        o0Var.element = scrollingLogic.n(j6, scrollingLogic2.g(((Number) obj).floatValue()));
        return l0.INSTANCE;
    }
}
