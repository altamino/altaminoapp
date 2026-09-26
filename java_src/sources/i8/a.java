package i8;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class a extends h8.a {
    @Override // h8.d
    public int f(int i10, int i11) {
        return ThreadLocalRandom.current().nextInt(i10, i11);
    }

    @Override // h8.d
    public long h(long j6) {
        return ThreadLocalRandom.current().nextLong(j6);
    }

    @Override // h8.d
    public long i(long j6, long j10) {
        return ThreadLocalRandom.current().nextLong(j6, j10);
    }

    @Override // h8.a
    @NotNull
    public Random j() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        t.i(threadLocalRandomCurrent, "current(...)");
        return threadLocalRandomCurrent;
    }
}
