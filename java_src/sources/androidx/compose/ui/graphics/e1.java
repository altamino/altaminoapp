package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class e1 {
    static {
        Path.Companion companion = Path.Companion;
    }

    public static /* synthetic */ void a(Path path, Path path2, long j6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addPath-Uv8p0NA");
        }
        if ((i10 & 2) != 0) {
            j6 = Offset.Companion.c();
        }
        path.f(path2, j6);
    }
}
