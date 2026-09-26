package androidx.compose.ui.text.font;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface PlatformResolveInterceptor {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @Nullable
    FontFamily a(@Nullable FontFamily fontFamily);

    @NotNull
    FontWeight b(@NotNull FontWeight fontWeight);

    int c(int i10);

    int d(int i10);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final PlatformResolveInterceptor Default = new PlatformResolveInterceptor() { // from class: androidx.compose.ui.text.font.PlatformResolveInterceptor$Companion$Default$1
            @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
            public /* synthetic */ FontFamily a(FontFamily fontFamily) {
                return e.a(this, fontFamily);
            }

            @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
            public /* synthetic */ FontWeight b(FontWeight fontWeight) {
                return e.d(this, fontWeight);
            }

            @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
            public /* synthetic */ int c(int i10) {
                return e.b(this, i10);
            }

            @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
            public /* synthetic */ int d(int i10) {
                return e.c(this, i10);
            }
        };

        @NotNull
        public final PlatformResolveInterceptor a() {
            return Default;
        }

        private Companion() {
        }
    }
}
