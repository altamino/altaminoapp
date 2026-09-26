package h8;

import java.util.Random;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a extends d {
    @NotNull
    public abstract Random j();

    @Override // h8.d
    public int b(int i10) {
        return e.f(j().nextInt(), i10);
    }

    @Override // h8.d
    public double c() {
        return j().nextDouble();
    }

    @Override // h8.d
    public int d() {
        return j().nextInt();
    }

    @Override // h8.d
    public int e(int i10) {
        return j().nextInt(i10);
    }

    @Override // h8.d
    public long g() {
        return j().nextLong();
    }
}
