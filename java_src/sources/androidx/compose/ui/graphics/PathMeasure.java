package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface PathMeasure {

    public static final class DefaultImpls {
    }

    boolean a(float f, float f6, @NotNull Path path, boolean z6);

    void b(@Nullable Path path, boolean z6);

    float getLength();
}
