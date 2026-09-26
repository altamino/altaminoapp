package t7;

import java.io.Closeable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public interface g<T> extends Closeable {
    void S(@NotNull T t5);

    @NotNull
    T s0();

    void t();

    public static final class a {
        public static <T> void a(@NotNull g<T> gVar) {
            gVar.t();
        }
    }
}
