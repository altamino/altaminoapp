package androidx.compose.ui.text.font;

import e8.p;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.f3;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {105}, m = "invokeSuspend")
final class FontListFontFamilyTypefaceAdapter$preload$3$2$1 extends l implements p<o0, kotlin.coroutines.d<? super Object>, Object> {
    final /* synthetic */ Font $font;
    final /* synthetic */ PlatformFontLoader $resourceLoader;
    int label;
    final /* synthetic */ FontListFontFamilyTypefaceAdapter this$0;

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1, reason: invalid class name */
    @f(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {107}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements e8.l<kotlin.coroutines.d<? super Object>, Object> {
        final /* synthetic */ Font $font;
        final /* synthetic */ PlatformFontLoader $resourceLoader;
        int label;

        /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {108}, m = "invokeSuspend")
        static final class C00741 extends l implements p<o0, kotlin.coroutines.d<? super Object>, Object> {
            final /* synthetic */ Font $font;
            final /* synthetic */ PlatformFontLoader $resourceLoader;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00741(PlatformFontLoader platformFontLoader, Font font, kotlin.coroutines.d<? super C00741> dVar) {
                super(2, dVar);
                this.$resourceLoader = platformFontLoader;
                this.$font = font;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new C00741(this.$resourceLoader, this.$font, dVar);
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, kotlin.coroutines.d<? super Object> dVar) {
                return invoke2(o0Var, (kotlin.coroutines.d<Object>) dVar);
            }

            @Nullable
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<Object> dVar) {
                return ((C00741) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                    PlatformFontLoader platformFontLoader = this.$resourceLoader;
                    Font font = this.$font;
                    this.label = 1;
                    obj = platformFontLoader.b(font, this);
                    if (obj == objE) {
                        return objE;
                    }
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Font font, PlatformFontLoader platformFontLoader, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(1, dVar);
            this.$font = font;
            this.$resourceLoader = platformFontLoader;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@NotNull kotlin.coroutines.d<?> dVar) {
            return new AnonymousClass1(this.$font, this.$resourceLoader, dVar);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Object invoke(kotlin.coroutines.d<? super Object> dVar) {
            return invoke2((kotlin.coroutines.d<Object>) dVar);
        }

        @Nullable
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(@Nullable kotlin.coroutines.d<Object> dVar) {
            return ((AnonymousClass1) create(dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    C00741 c00741 = new C00741(this.$resourceLoader, this.$font, null);
                    this.label = 1;
                    obj = f3.c(15000L, c00741, this);
                    if (obj == objE) {
                        return objE;
                    }
                }
                if (obj != null) {
                    return obj;
                }
                throw new IllegalStateException("Unable to load font " + this.$font);
            } catch (Exception e) {
                throw new IllegalStateException("Unable to load font " + this.$font, e);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FontListFontFamilyTypefaceAdapter$preload$3$2$1(FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, Font font, PlatformFontLoader platformFontLoader, kotlin.coroutines.d<? super FontListFontFamilyTypefaceAdapter$preload$3$2$1> dVar) {
        super(2, dVar);
        this.this$0 = fontListFontFamilyTypefaceAdapter;
        this.$font = font;
        this.$resourceLoader = platformFontLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new FontListFontFamilyTypefaceAdapter$preload$3$2$1(this.this$0, this.$font, this.$resourceLoader, dVar);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, kotlin.coroutines.d<? super Object> dVar) {
        return invoke2(o0Var, (kotlin.coroutines.d<Object>) dVar);
    }

    @Nullable
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<Object> dVar) {
        return ((FontListFontFamilyTypefaceAdapter$preload$3$2$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            AsyncTypefaceCache asyncTypefaceCache = this.this$0.asyncTypefaceCache;
            Font font = this.$font;
            PlatformFontLoader platformFontLoader = this.$resourceLoader;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(font, platformFontLoader, null);
            this.label = 1;
            obj = asyncTypefaceCache.g(font, platformFontLoader, true, anonymousClass1, this);
            if (obj == objE) {
                return objE;
            }
        }
        return obj;
    }
}
