package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface Paragraph {

    public static final class DefaultImpls {
    }

    float a();

    @NotNull
    Rect b(int i10);

    @NotNull
    ResolvedTextDirection c(int i10);

    @ExperimentalTextApi
    void d(@NotNull Canvas canvas, @NotNull Brush brush, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration);

    float e(int i10);

    long f(int i10);

    float g();

    float getHeight();

    float getWidth();

    int h(long j6);

    int i(int i10);

    int j(int i10, boolean z6);

    int k(float f);

    float l(int i10);

    float m(int i10);

    @NotNull
    Rect n(int i10);

    int o();

    float p(int i10);

    boolean q();

    @NotNull
    Path r(int i10, int i11);

    float s(int i10, boolean z6);

    float t();

    int u(int i10);

    @NotNull
    ResolvedTextDirection v(int i10);

    @NotNull
    List<Rect> w();

    void x(@NotNull Canvas canvas, long j6, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration);
}
