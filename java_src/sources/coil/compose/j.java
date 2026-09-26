package coil.compose;

import android.content.Context;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSizeKt;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class j {
    private static final long ZeroConstraints = Constraints.Companion.c(0, 0);

    public static final long c() {
        return ZeroConstraints;
    }

    @Stable
    @NotNull
    public static final coil.size.h f(@NotNull ContentScale contentScale) {
        ContentScale.Companion companion = ContentScale.Companion;
        return (t.e(contentScale, companion.b()) || t.e(contentScale, companion.c())) ? coil.size.h.FIT : coil.size.h.FILL;
    }

    public static final float a(long j6, float f) {
        return o.m(f, Constraints.o(j6), Constraints.m(j6));
    }

    public static final float b(long j6, float f) {
        return o.m(f, Constraints.p(j6), Constraints.n(j6));
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final coil.request.h d(@Nullable Object obj, @Nullable Composer composer, int i10) {
        if (ComposerKt.O()) {
            ComposerKt.Z(1151830858, i10, -1, "coil.compose.requestOf (Utils.kt:21)");
        }
        if (obj instanceof coil.request.h) {
            return (coil.request.h) obj;
        }
        return new coil.request.h.a((Context) composer.x(AndroidCompositionLocals_androidKt.g())).b(obj).a();
    }

    public static final long e(long j6) {
        return IntSizeKt.a(g8.c.c(Size.i(j6)), g8.c.c(Size.g(j6)));
    }
}
