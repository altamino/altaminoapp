package androidx.compose.ui.layout;

import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface MeasureResult {
    @NotNull
    Map<AlignmentLine, Integer> c();

    void d();

    int getHeight();

    int getWidth();
}
