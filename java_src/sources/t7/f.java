package t7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f<T> implements g<T> {
    @Override // t7.g
    public void S(@NotNull T instance) {
        t.j(instance, "instance");
    }

    @Override // t7.g
    public void t() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        g.a.a(this);
    }
}
