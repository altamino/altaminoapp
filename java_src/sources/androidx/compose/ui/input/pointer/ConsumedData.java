package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class ConsumedData {
    public static final int $stable = 8;
    private boolean downChange;
    private boolean positionChange;

    /* JADX WARN: Illegal instructions before constructor call */
    public ConsumedData() {
        boolean z6 = false;
        this(z6, z6, 3, null);
    }

    public final boolean a() {
        return this.downChange;
    }

    public final boolean b() {
        return this.positionChange;
    }

    public final void c(boolean z6) {
        this.downChange = z6;
    }

    public final void d(boolean z6) {
        this.positionChange = z6;
    }

    public ConsumedData(boolean z6, boolean z10) {
        this.positionChange = z6;
        this.downChange = z10;
    }

    public /* synthetic */ ConsumedData(boolean z6, boolean z10, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? false : z10);
    }
}
