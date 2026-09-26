package androidx.compose.ui.text.font;

import android.content.Context;
import e8.p;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes11.dex */
@f(c = "androidx.compose.ui.text.font.AndroidFontLoader_androidKt$loadAsync$2", f = "AndroidFontLoader.android.kt", l = {}, m = "invokeSuspend")
final class AndroidFontLoader_androidKt$loadAsync$2 extends l implements p<o0, kotlin.coroutines.d<? super android.graphics.Typeface>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ ResourceFont $this_loadAsync;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidFontLoader_androidKt$loadAsync$2(ResourceFont resourceFont, Context context, kotlin.coroutines.d<? super AndroidFontLoader_androidKt$loadAsync$2> dVar) {
        super(2, dVar);
        this.$this_loadAsync = resourceFont;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new AndroidFontLoader_androidKt$loadAsync$2(this.$this_loadAsync, this.$context, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super android.graphics.Typeface> dVar) {
        return ((AndroidFontLoader_androidKt$loadAsync$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            return AndroidFontLoader_androidKt.c(this.$this_loadAsync, this.$context);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
