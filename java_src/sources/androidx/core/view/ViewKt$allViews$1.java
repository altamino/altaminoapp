package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {414, TypedValues.CycleType.TYPE_PATH_ROTATE}, m = "invokeSuspend")
final class ViewKt$allViews$1 extends kotlin.coroutines.jvm.internal.k implements e8.p<kotlin.sequences.i<? super View>, kotlin.coroutines.d<? super w7.l0>, Object> {
    final /* synthetic */ View $this_allViews;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ViewKt$allViews$1(View view, kotlin.coroutines.d<? super ViewKt$allViews$1> dVar) {
        super(2, dVar);
        this.$this_allViews = view;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, dVar);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlin.sequences.i<? super View> iVar, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
        return ((ViewKt$allViews$1) create(iVar, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.sequences.i iVar;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                iVar = (kotlin.sequences.i) this.L$0;
                w7.w.b(obj);
            }
            return w7.l0.INSTANCE;
        }
        w7.w.b(obj);
        iVar = (kotlin.sequences.i) this.L$0;
        View view = this.$this_allViews;
        this.L$0 = iVar;
        this.label = 1;
        if (iVar.a(view, this) == objE) {
            return objE;
        }
        View view2 = this.$this_allViews;
        if (view2 instanceof ViewGroup) {
            kotlin.sequences.g<View> gVarB = ViewGroupKt.b((ViewGroup) view2);
            this.L$0 = null;
            this.label = 2;
            if (iVar.c(gVarB, this) == objE) {
                return objE;
            }
        }
        return w7.l0.INSTANCE;
    }
}
