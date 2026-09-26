package androidx.compose.ui.text.font;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class FontListFontFamilyTypefaceAdapter$preload$2$1 extends v implements l<TypefaceRequest, l0> {
    public static final FontListFontFamilyTypefaceAdapter$preload$2$1 INSTANCE = new FontListFontFamilyTypefaceAdapter$preload$2$1();

    FontListFontFamilyTypefaceAdapter$preload$2$1() {
        super(1);
    }

    public final void a(@NotNull TypefaceRequest it) {
        t.j(it, "it");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TypefaceRequest typefaceRequest) {
        a(typefaceRequest);
        return l0.INSTANCE;
    }
}
