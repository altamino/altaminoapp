package androidx.compose.ui.graphics;

import android.graphics.Shader;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface Paint {
    long a();

    void b(float f);

    float e();

    void f(int i10);

    void g(int i10);

    int h();

    void i(int i10);

    void j(long j6);

    int k();

    float l();

    @NotNull
    android.graphics.Paint m();

    @Nullable
    Shader n();

    void o(float f);

    void p(int i10);

    void q(float f);

    float r();

    void s(int i10);

    @Nullable
    ColorFilter t();

    void u(@Nullable PathEffect pathEffect);

    @Nullable
    PathEffect v();

    int w();

    void x(@Nullable Shader shader);

    void y(@Nullable ColorFilter colorFilter);

    int z();
}
