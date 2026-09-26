package androidx.compose.ui.text.font;

import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.ui.text.font.FontFamilyResolverImpl", f = "FontFamilyResolver.kt", l = {47}, m = "preload")
final class FontFamilyResolverImpl$preload$1 extends kotlin.coroutines.jvm.internal.d {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FontFamilyResolverImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FontFamilyResolverImpl$preload$1(FontFamilyResolverImpl fontFamilyResolverImpl, kotlin.coroutines.d<? super FontFamilyResolverImpl$preload$1> dVar) {
        super(dVar);
        this.this$0 = fontFamilyResolverImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.g(null, this);
    }
}
