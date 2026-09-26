package k8;

import java.text.DecimalFormat;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class c {
    private static final boolean durationAssertionsEnabled = false;

    @NotNull
    private static final ThreadLocal<DecimalFormat>[] precisionFormats;

    static {
        ThreadLocal<DecimalFormat>[] threadLocalArr = new ThreadLocal[4];
        for (int i10 = 0; i10 < 4; i10++) {
            threadLocalArr[i10] = new ThreadLocal<>();
        }
        precisionFormats = threadLocalArr;
    }

    public static final boolean a() {
        return durationAssertionsEnabled;
    }
}
