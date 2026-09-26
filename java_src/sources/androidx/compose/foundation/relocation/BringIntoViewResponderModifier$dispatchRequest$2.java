package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.narvii.poweruser.history.ModerationHistory;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.relocation.BringIntoViewResponderModifier$dispatchRequest$2", f = "BringIntoViewResponder.kt", l = {272}, m = "invokeSuspend")
final class BringIntoViewResponderModifier$dispatchRequest$2 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ LayoutCoordinates $layoutCoordinates;
    final /* synthetic */ Rect $localRect;
    final /* synthetic */ Rect $parentRect;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BringIntoViewResponderModifier this$0;

    /* JADX INFO: renamed from: androidx.compose.foundation.relocation.BringIntoViewResponderModifier$dispatchRequest$2$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.relocation.BringIntoViewResponderModifier$dispatchRequest$2$1", f = "BringIntoViewResponder.kt", l = {ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ Rect $localRect;
        int label;
        final /* synthetic */ BringIntoViewResponderModifier this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BringIntoViewResponderModifier bringIntoViewResponderModifier, Rect rect, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.this$0 = bringIntoViewResponderModifier;
            this.$localRect = rect;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.this$0, this.$localRect, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                BringIntoViewResponder bringIntoViewResponderK = this.this$0.k();
                Rect rect = this.$localRect;
                this.label = 1;
                if (bringIntoViewResponderK.a(rect, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BringIntoViewResponderModifier$dispatchRequest$2(BringIntoViewResponderModifier bringIntoViewResponderModifier, Rect rect, LayoutCoordinates layoutCoordinates, Rect rect2, d<? super BringIntoViewResponderModifier$dispatchRequest$2> dVar) {
        super(2, dVar);
        this.this$0 = bringIntoViewResponderModifier;
        this.$parentRect = rect;
        this.$layoutCoordinates = layoutCoordinates;
        this.$localRect = rect2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        BringIntoViewResponderModifier$dispatchRequest$2 bringIntoViewResponderModifier$dispatchRequest$2 = new BringIntoViewResponderModifier$dispatchRequest$2(this.this$0, this.$parentRect, this.$layoutCoordinates, this.$localRect, dVar);
        bringIntoViewResponderModifier$dispatchRequest$2.L$0 = obj;
        return bringIntoViewResponderModifier$dispatchRequest$2;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((BringIntoViewResponderModifier$dispatchRequest$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            k.d((o0) this.L$0, null, null, new AnonymousClass1(this.this$0, this.$localRect, null), 3, null);
            BringIntoViewParent bringIntoViewParentC = this.this$0.c();
            Rect rect = this.$parentRect;
            LayoutCoordinates layoutCoordinates = this.$layoutCoordinates;
            this.label = 1;
            if (bringIntoViewParentC.a(rect, layoutCoordinates, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
