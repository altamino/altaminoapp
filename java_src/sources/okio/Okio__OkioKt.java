package okio;

import java.io.Closeable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class Okio__OkioKt {
    @NotNull
    public static final BufferedSource buffer(@NotNull Source source) {
        kotlin.jvm.internal.t.j(source, "<this>");
        return new RealBufferedSource(source);
    }

    @NotNull
    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    @NotNull
    public static final BufferedSink buffer(@NotNull Sink sink) {
        kotlin.jvm.internal.t.j(sink, "<this>");
        return new RealBufferedSink(sink);
    }

    public static final <T extends Closeable, R> R use(T t5, @NotNull e8.l<? super T, ? extends R> block) throws Throwable {
        R rInvoke;
        kotlin.jvm.internal.t.j(block, "block");
        Throwable th = null;
        try {
            rInvoke = block.invoke(t5);
        } catch (Throwable th2) {
            th = th2;
            rInvoke = null;
        }
        if (t5 != null) {
            try {
                t5.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    w7.f.a(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        kotlin.jvm.internal.t.g(rInvoke);
        return rInvoke;
    }
}
