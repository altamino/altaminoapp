package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class PointerEventTimeoutCancellationException extends CancellationException {
    public static final int $stable = 0;

    public PointerEventTimeoutCancellationException(long j6) {
        super("Timed out waiting for " + j6 + " ms");
    }
}
