package androidx.compose.ui.text.font;

import e8.p;
import io.agora.rtc.Constants;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$resolve$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {Constants.ERR_PUBLISH_STREAM_CDN_ERROR}, m = "invokeSuspend")
final class FontListFontFamilyTypefaceAdapter$resolve$1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ AsyncFontListLoader $asyncLoader;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FontListFontFamilyTypefaceAdapter$resolve$1(AsyncFontListLoader asyncFontListLoader, kotlin.coroutines.d<? super FontListFontFamilyTypefaceAdapter$resolve$1> dVar) {
        super(2, dVar);
        this.$asyncLoader = asyncFontListLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new FontListFontFamilyTypefaceAdapter$resolve$1(this.$asyncLoader, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((FontListFontFamilyTypefaceAdapter$resolve$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            AsyncFontListLoader asyncFontListLoader = this.$asyncLoader;
            this.label = 1;
            if (asyncFontListLoader.d(this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
