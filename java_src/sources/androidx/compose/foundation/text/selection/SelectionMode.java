package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public enum SelectionMode {
    Vertical { // from class: androidx.compose.foundation.text.selection.SelectionMode.Vertical
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        public int b(long j6, @NotNull Rect bounds) {
            t.j(bounds, "bounds");
            if (bounds.b(j6)) {
                return 0;
            }
            if (Offset.n(j6) < bounds.m()) {
                return -1;
            }
            return (Offset.m(j6) >= bounds.j() || Offset.n(j6) >= bounds.e()) ? 1 : -1;
        }
    },
    Horizontal { // from class: androidx.compose.foundation.text.selection.SelectionMode.Horizontal
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        public int b(long j6, @NotNull Rect bounds) {
            t.j(bounds, "bounds");
            if (bounds.b(j6)) {
                return 0;
            }
            if (Offset.m(j6) < bounds.j()) {
                return -1;
            }
            return (Offset.n(j6) >= bounds.m() || Offset.m(j6) >= bounds.k()) ? 1 : -1;
        }
    };

    /* synthetic */ SelectionMode(k kVar) {
        this();
    }

    public abstract int b(long j6, @NotNull Rect rect);

    public final boolean c(@NotNull Rect bounds, long j6, long j10) {
        t.j(bounds, "bounds");
        if (bounds.b(j6) || bounds.b(j10)) {
            return true;
        }
        return (b(j6, bounds) > 0) ^ (b(j10, bounds) > 0);
    }
}
