package androidx.compose.ui.text.font;

import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.ui.text.font.AsyncFontListLoader$load$2$typeface$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {273}, m = "invokeSuspend")
final class AsyncFontListLoader$load$2$typeface$1 extends l implements e8.l<kotlin.coroutines.d<? super Object>, Object> {
    final /* synthetic */ Font $font;
    int label;
    final /* synthetic */ AsyncFontListLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AsyncFontListLoader$load$2$typeface$1(AsyncFontListLoader asyncFontListLoader, Font font, kotlin.coroutines.d<? super AsyncFontListLoader$load$2$typeface$1> dVar) {
        super(1, dVar);
        this.this$0 = asyncFontListLoader;
        this.$font = font;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@NotNull kotlin.coroutines.d<?> dVar) {
        return new AsyncFontListLoader$load$2$typeface$1(this.this$0, this.$font, dVar);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(kotlin.coroutines.d<? super Object> dVar) {
        return invoke2((kotlin.coroutines.d<Object>) dVar);
    }

    @Nullable
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(@Nullable kotlin.coroutines.d<Object> dVar) {
        return ((AsyncFontListLoader$load$2$typeface$1) create(dVar)).invokeSuspend(l0.INSTANCE);
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
            AsyncFontListLoader asyncFontListLoader = this.this$0;
            Font font = this.$font;
            this.label = 1;
            obj = asyncFontListLoader.e(font, this);
            if (obj == objE) {
                return objE;
            }
        }
        return obj;
    }
}
