package androidx.compose.ui.text.font;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class FontFamilyResolverImpl$resolve$result$1 extends v implements l<l<? super TypefaceResult, ? extends l0>, TypefaceResult> {
    final /* synthetic */ TypefaceRequest $typefaceRequest;
    final /* synthetic */ FontFamilyResolverImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FontFamilyResolverImpl$resolve$result$1(FontFamilyResolverImpl fontFamilyResolverImpl, TypefaceRequest typefaceRequest) {
        super(1);
        this.this$0 = fontFamilyResolverImpl;
        this.$typefaceRequest = typefaceRequest;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TypefaceResult invoke(@NotNull l<? super TypefaceResult, l0> onAsyncCompletion) {
        t.j(onAsyncCompletion, "onAsyncCompletion");
        TypefaceResult typefaceResultC = this.this$0.fontListFontFamilyTypefaceAdapter.c(this.$typefaceRequest, this.this$0.f(), onAsyncCompletion, this.this$0.createDefaultTypeface);
        if (typefaceResultC == null && (typefaceResultC = this.this$0.platformFamilyTypefaceAdapter.a(this.$typefaceRequest, this.this$0.f(), onAsyncCompletion, this.this$0.createDefaultTypeface)) == null) {
            throw new IllegalStateException("Could not load font");
        }
        return typefaceResultC;
    }
}
