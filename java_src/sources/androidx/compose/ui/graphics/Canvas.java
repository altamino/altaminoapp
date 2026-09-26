package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface Canvas {

    public static final class DefaultImpls {
    }

    void a(float f, float f6, float f7, float f10, int i10);

    void b(float f, float f6);

    void c(@NotNull Path path, int i10);

    void d(int i10, @NotNull List<Offset> list, @NotNull Paint paint);

    void e(@NotNull ImageBitmap imageBitmap, long j6, long j10, long j11, long j12, @NotNull Paint paint);

    void f(float f, float f6, float f7, float f10, float f11, float f12, boolean z6, @NotNull Paint paint);

    void g(@NotNull Rect rect, @NotNull Paint paint);

    void h();

    void i(@NotNull Rect rect, int i10);

    void j(@NotNull Rect rect, @NotNull Paint paint);

    void k(float f, float f6);

    void l(float f, float f6, float f7, float f10, @NotNull Paint paint);

    void m(@NotNull ImageBitmap imageBitmap, long j6, @NotNull Paint paint);

    void n();

    void o();

    void p(long j6, long j10, @NotNull Paint paint);

    void q(float f);

    void r();

    void s(@NotNull float[] fArr);

    void t(@NotNull Path path, @NotNull Paint paint);

    void u(long j6, float f, @NotNull Paint paint);

    void v(float f, float f6, float f7, float f10, float f11, float f12, @NotNull Paint paint);
}
