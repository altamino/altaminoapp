package kotlinx.coroutines.scheduling;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends g {

    @NotNull
    public static final e INSTANCE = new e();

    private e() {
    }

    @Override // kotlinx.coroutines.scheduling.g
    public long a() {
        return System.nanoTime();
    }
}
