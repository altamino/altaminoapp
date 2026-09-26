package androidx.compose.ui.text.font;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class FontFamilyResolverImpl$preload$2 extends v implements l<TypefaceRequest, TypefaceResult> {
    final /* synthetic */ FontFamilyResolverImpl this$0;

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<TypefaceResult.Immutable, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        public final void a(@NotNull TypefaceResult.Immutable it) {
            t.j(it, "it");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(TypefaceResult.Immutable immutable) {
            a(immutable);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$2$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<TypefaceResult.Immutable, l0> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(1);
        }

        public final void a(@NotNull TypefaceResult.Immutable it) {
            t.j(it, "it");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(TypefaceResult.Immutable immutable) {
            a(immutable);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FontFamilyResolverImpl$preload$2(FontFamilyResolverImpl fontFamilyResolverImpl) {
        super(1);
        this.this$0 = fontFamilyResolverImpl;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TypefaceResult invoke(@NotNull TypefaceRequest typeRequest) {
        t.j(typeRequest, "typeRequest");
        TypefaceResult typefaceResultC = this.this$0.fontListFontFamilyTypefaceAdapter.c(typeRequest, this.this$0.f(), AnonymousClass1.INSTANCE, this.this$0.createDefaultTypeface);
        if (typefaceResultC == null && (typefaceResultC = this.this$0.platformFamilyTypefaceAdapter.a(typeRequest, this.this$0.f(), AnonymousClass2.INSTANCE, this.this$0.createDefaultTypeface)) == null) {
            throw new IllegalStateException("Could not load font");
        }
        return typefaceResultC;
    }
}
