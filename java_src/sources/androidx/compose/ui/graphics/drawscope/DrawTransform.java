package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Path;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@DrawScopeMarker
public interface DrawTransform {

    public static final class DefaultImpls {
    }

    void a(float f, float f6, float f7, float f10, int i10);

    void b(float f, float f6);

    void c(@NotNull Path path, int i10);

    void d(float f, float f6, long j6);

    void e(float f, long j6);

    void f(float f, float f6, float f7, float f10);

    void g(@NotNull float[] fArr);
}
