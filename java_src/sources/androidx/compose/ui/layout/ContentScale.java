package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Stable
public interface ContentScale {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    long a(long j6, long j10);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final ContentScale Crop = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Crop$1
            @Override // androidx.compose.ui.layout.ContentScale
            public long a(long j6, long j10) {
                float f = ContentScaleKt.f(j6, j10);
                return ScaleFactorKt.a(f, f);
            }
        };

        @NotNull
        private static final ContentScale Fit = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Fit$1
            @Override // androidx.compose.ui.layout.ContentScale
            public long a(long j6, long j10) {
                float fG = ContentScaleKt.g(j6, j10);
                return ScaleFactorKt.a(fG, fG);
            }
        };

        @NotNull
        private static final ContentScale FillHeight = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillHeight$1
            @Override // androidx.compose.ui.layout.ContentScale
            public long a(long j6, long j10) {
                float fE = ContentScaleKt.e(j6, j10);
                return ScaleFactorKt.a(fE, fE);
            }
        };

        @NotNull
        private static final ContentScale FillWidth = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillWidth$1
            @Override // androidx.compose.ui.layout.ContentScale
            public long a(long j6, long j10) {
                float fH = ContentScaleKt.h(j6, j10);
                return ScaleFactorKt.a(fH, fH);
            }
        };

        @NotNull
        private static final ContentScale Inside = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Inside$1
            @Override // androidx.compose.ui.layout.ContentScale
            public long a(long j6, long j10) {
                if (Size.i(j6) > Size.i(j10) || Size.g(j6) > Size.g(j10)) {
                    float fG = ContentScaleKt.g(j6, j10);
                    return ScaleFactorKt.a(fG, fG);
                }
                return ScaleFactorKt.a(1.0f, 1.0f);
            }
        };

        @NotNull
        private static final FixedScale None = new FixedScale(1.0f);

        @NotNull
        private static final ContentScale FillBounds = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillBounds$1
            @Override // androidx.compose.ui.layout.ContentScale
            public long a(long j6, long j10) {
                return ScaleFactorKt.a(ContentScaleKt.h(j6, j10), ContentScaleKt.e(j6, j10));
            }
        };

        @NotNull
        public final ContentScale a() {
            return Crop;
        }

        @NotNull
        public final ContentScale b() {
            return Fit;
        }

        @NotNull
        public final ContentScale c() {
            return Inside;
        }

        @NotNull
        public final FixedScale d() {
            return None;
        }

        private Companion() {
        }
    }
}
