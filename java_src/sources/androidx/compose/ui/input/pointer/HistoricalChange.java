package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.geometry.Offset;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
@ExperimentalComposeUiApi
public final class HistoricalChange {
    private final long position;
    private final long uptimeMillis;

    public /* synthetic */ HistoricalChange(long j6, long j10, k kVar) {
        this(j6, j10);
    }

    public final long a() {
        return this.position;
    }

    public final long b() {
        return this.uptimeMillis;
    }

    private HistoricalChange(long j6, long j10) {
        this.uptimeMillis = j6;
        this.position = j10;
    }

    @NotNull
    public String toString() {
        return "HistoricalChange(uptimeMillis=" + this.uptimeMillis + ", position=" + ((Object) Offset.t(this.position)) + ')';
    }
}
