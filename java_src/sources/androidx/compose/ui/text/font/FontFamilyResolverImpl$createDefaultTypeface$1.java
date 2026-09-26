package androidx.compose.ui.text.font;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class FontFamilyResolverImpl$createDefaultTypeface$1 extends v implements l<TypefaceRequest, Object> {
    final /* synthetic */ FontFamilyResolverImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FontFamilyResolverImpl$createDefaultTypeface$1(FontFamilyResolverImpl fontFamilyResolverImpl) {
        super(1);
        this.this$0 = fontFamilyResolverImpl;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull TypefaceRequest it) {
        t.j(it, "it");
        return this.this$0.h(TypefaceRequest.b(it, null, null, 0, 0, null, 30, null)).getValue();
    }
}
