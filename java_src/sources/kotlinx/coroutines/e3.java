package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class e3<U, T extends U> extends kotlinx.coroutines.internal.e0<T> implements Runnable {
    public final long time;

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.j2
    @NotNull
    public String A0() {
        return super.A0() + "(timeMillis=" + this.time + ')';
    }

    @Override // java.lang.Runnable
    public void run() {
        F(f3.a(this.time, y0.b(getContext()), this));
    }

    public e3(long j6, @NotNull kotlin.coroutines.d<? super U> dVar) {
        super(dVar.getContext(), dVar);
        this.time = j6;
    }
}
