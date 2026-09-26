package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidPathMeasure implements PathMeasure {

    @NotNull
    private final android.graphics.PathMeasure internalPathMeasure;

    public AndroidPathMeasure(@NotNull android.graphics.PathMeasure internalPathMeasure) {
        kotlin.jvm.internal.t.j(internalPathMeasure, "internalPathMeasure");
        this.internalPathMeasure = internalPathMeasure;
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public boolean a(float f, float f6, @NotNull Path destination, boolean z6) {
        kotlin.jvm.internal.t.j(destination, "destination");
        android.graphics.PathMeasure pathMeasure = this.internalPathMeasure;
        if (destination instanceof AndroidPath) {
            return pathMeasure.getSegment(f, f6, ((AndroidPath) destination).n(), z6);
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public void b(@Nullable Path path, boolean z6) {
        android.graphics.Path pathN;
        android.graphics.PathMeasure pathMeasure = this.internalPathMeasure;
        if (path == null) {
            pathN = null;
        } else {
            if (!(path instanceof AndroidPath)) {
                throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
            }
            pathN = ((AndroidPath) path).n();
        }
        pathMeasure.setPath(pathN, z6);
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public float getLength() {
        return this.internalPathMeasure.getLength();
    }
}
