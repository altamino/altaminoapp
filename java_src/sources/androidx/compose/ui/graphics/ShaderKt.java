package androidx.compose.ui.graphics;

import android.graphics.Shader;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class ShaderKt {
    @NotNull
    public static final Shader a(long j6, long j10, @NotNull List<Color> colors, @Nullable List<Float> list, int i10) {
        kotlin.jvm.internal.t.j(colors, "colors");
        return AndroidShader_androidKt.a(j6, j10, colors, list, i10);
    }

    @NotNull
    public static final Shader b(long j6, float f, @NotNull List<Color> colors, @Nullable List<Float> list, int i10) {
        kotlin.jvm.internal.t.j(colors, "colors");
        return AndroidShader_androidKt.b(j6, f, colors, list, i10);
    }

    @NotNull
    public static final Shader c(long j6, @NotNull List<Color> colors, @Nullable List<Float> list) {
        kotlin.jvm.internal.t.j(colors, "colors");
        return AndroidShader_androidKt.c(j6, colors, list);
    }
}
