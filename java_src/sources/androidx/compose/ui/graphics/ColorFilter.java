package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class ColorFilter {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final android.graphics.ColorFilter nativeColorFilter;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ ColorFilter b(Companion companion, long j6, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = BlendMode.Companion.z();
            }
            return companion.a(j6, i10);
        }

        @Stable
        @NotNull
        public final ColorFilter a(long j6, int i10) {
            return AndroidColorFilter_androidKt.a(j6, i10);
        }
    }

    @NotNull
    public final android.graphics.ColorFilter a() {
        return this.nativeColorFilter;
    }

    public ColorFilter(@NotNull android.graphics.ColorFilter nativeColorFilter) {
        kotlin.jvm.internal.t.j(nativeColorFilter, "nativeColorFilter");
        this.nativeColorFilter = nativeColorFilter;
    }
}
