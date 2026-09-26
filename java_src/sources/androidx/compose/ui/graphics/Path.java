package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public interface Path {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class DefaultImpls {
    }

    void a(float f, float f6);

    void b(float f, float f6, float f7, float f10, float f11, float f12);

    void c(float f, float f6, float f7, float f10);

    void close();

    void cubicTo(float f, float f6, float f7, float f10, float f11, float f12);

    void d(long j6);

    void e(@NotNull RoundRect roundRect);

    void f(@NotNull Path path, long j6);

    boolean g();

    @NotNull
    Rect getBounds();

    void h(float f, float f6, float f7, float f10);

    void i(int i10);

    boolean isEmpty();

    void j(@NotNull Rect rect);

    boolean k(@NotNull Path path, @NotNull Path path2, int i10);

    void l(float f, float f6);

    void lineTo(float f, float f6);

    void moveTo(float f, float f6);

    void reset();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
