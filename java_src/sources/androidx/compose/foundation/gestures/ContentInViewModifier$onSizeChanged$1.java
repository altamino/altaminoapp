package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Rect;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
@f(c = "androidx.compose.foundation.gestures.ContentInViewModifier$onSizeChanged$1", f = "Scrollable.kt", l = {578}, m = "invokeSuspend")
final class ContentInViewModifier$onSizeChanged$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ Rect $adjustedBounds;
    final /* synthetic */ Rect $focusedBounds;
    int label;
    final /* synthetic */ ContentInViewModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ContentInViewModifier$onSizeChanged$1(ContentInViewModifier contentInViewModifier, Rect rect, Rect rect2, d<? super ContentInViewModifier$onSizeChanged$1> dVar) {
        super(2, dVar);
        this.this$0 = contentInViewModifier;
        this.$focusedBounds = rect;
        this.$adjustedBounds = rect2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new ContentInViewModifier$onSizeChanged$1(this.this$0, this.$focusedBounds, this.$adjustedBounds, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((ContentInViewModifier$onSizeChanged$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            ContentInViewModifier contentInViewModifier = this.this$0;
            Rect rect = this.$focusedBounds;
            Rect rect2 = this.$adjustedBounds;
            this.label = 1;
            if (contentInViewModifier.i(rect, rect2, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
