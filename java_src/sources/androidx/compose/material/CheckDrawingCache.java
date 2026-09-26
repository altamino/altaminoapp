package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.AndroidPathMeasure_androidKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathMeasure;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
final class CheckDrawingCache {

    @NotNull
    private final Path checkPath;

    @NotNull
    private final PathMeasure pathMeasure;

    @NotNull
    private final Path pathToDraw;

    public CheckDrawingCache() {
        this(null, null, null, 7, null);
    }

    @NotNull
    public final Path a() {
        return this.checkPath;
    }

    @NotNull
    public final PathMeasure b() {
        return this.pathMeasure;
    }

    @NotNull
    public final Path c() {
        return this.pathToDraw;
    }

    public CheckDrawingCache(@NotNull Path checkPath, @NotNull PathMeasure pathMeasure, @NotNull Path pathToDraw) {
        t.j(checkPath, "checkPath");
        t.j(pathMeasure, "pathMeasure");
        t.j(pathToDraw, "pathToDraw");
        this.checkPath = checkPath;
        this.pathMeasure = pathMeasure;
        this.pathToDraw = pathToDraw;
    }

    public /* synthetic */ CheckDrawingCache(Path path, PathMeasure pathMeasure, Path path2, int i10, k kVar) {
        this((i10 & 1) != 0 ? AndroidPath_androidKt.a() : path, (i10 & 2) != 0 ? AndroidPathMeasure_androidKt.a() : pathMeasure, (i10 & 4) != 0 ? AndroidPath_androidKt.a() : path2);
    }
}
