package androidx.compose.ui.graphics;

import android.graphics.Shader;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class BrushKt {
    @NotNull
    public static final ShaderBrush a(@NotNull final Shader shader) {
        kotlin.jvm.internal.t.j(shader, "shader");
        return new ShaderBrush() { // from class: androidx.compose.ui.graphics.BrushKt$ShaderBrush$1
            @Override // androidx.compose.ui.graphics.ShaderBrush
            @NotNull
            public Shader c(long j6) {
                return shader;
            }
        };
    }
}
