package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Size;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public abstract class ShaderBrush extends Brush {
    private long createdSize;

    @Nullable
    private Shader internalShader;

    public ShaderBrush() {
        super(null);
        this.createdSize = Size.Companion.a();
    }

    @NotNull
    public abstract Shader c(long j6);

    @Override // androidx.compose.ui.graphics.Brush
    public final void a(long j6, @NotNull Paint p, float f) {
        kotlin.jvm.internal.t.j(p, "p");
        Shader shaderC = this.internalShader;
        if (shaderC == null || !Size.f(this.createdSize, j6)) {
            shaderC = c(j6);
            this.internalShader = shaderC;
            this.createdSize = j6;
        }
        long jA = p.a();
        Color.Companion companion = Color.Companion;
        if (!Color.n(jA, companion.a())) {
            p.j(companion.a());
        }
        if (!kotlin.jvm.internal.t.e(p.n(), shaderC)) {
            p.x(shaderC);
        }
        if (p.e() == f) {
            return;
        }
        p.b(f);
    }
}
