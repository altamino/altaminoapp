package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@DrawScopeMarker
public interface DrawScope extends Density {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    void C(@NotNull ImageBitmap imageBitmap, long j6, float f, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    void D(@NotNull Brush brush, long j6, long j10, float f, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    void D0(@NotNull Brush brush, long j6, long j10, long j11, float f, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    void E(long j6, long j10, long j11, float f, int i10, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i11);

    void G(@NotNull Path path, long j6, float f, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    void I0(@NotNull List<Offset> list, int i10, long j6, float f, int i11, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i12);

    void K0(@NotNull Brush brush, long j6, long j10, float f, int i10, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i11);

    void L(long j6, float f, long j10, float f6, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    void N(long j6, float f, float f6, boolean z6, long j10, long j11, float f7, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    void P0(@NotNull ImageBitmap imageBitmap, long j6, long j10, long j11, long j12, float f, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10, int i11);

    @NotNull
    DrawContext T();

    long W();

    long c();

    @NotNull
    LayoutDirection getLayoutDirection();

    void o0(long j6, long j10, long j11, long j12, @NotNull DrawStyle drawStyle, float f, @Nullable ColorFilter colorFilter, int i10);

    void w(@NotNull Path path, @NotNull Brush brush, float f, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    void x0(long j6, long j10, long j11, float f, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int DefaultBlendMode = BlendMode.Companion.B();
        private static final int DefaultFilterQuality = FilterQuality.Companion.a();

        public final int a() {
            return DefaultBlendMode;
        }

        public final int b() {
            return DefaultFilterQuality;
        }

        private Companion() {
        }
    }

    public static final class DefaultImpls {
    }
}
