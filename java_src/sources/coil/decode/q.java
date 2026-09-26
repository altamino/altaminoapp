package coil.decode;

import android.content.Context;
import java.io.Closeable;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class q {
    @NotNull
    public static final p a(@NotNull BufferedSource bufferedSource, @NotNull Context context) {
        return new s(bufferedSource, coil.util.i.o(context), null);
    }

    @NotNull
    public static final p b(@NotNull BufferedSource bufferedSource, @NotNull Context context, @Nullable p.a aVar) {
        return new s(bufferedSource, coil.util.i.o(context), aVar);
    }

    @NotNull
    public static final p c(@NotNull Path path, @NotNull FileSystem fileSystem, @Nullable String str, @Nullable Closeable closeable) {
        return new o(path, fileSystem, str, closeable, null);
    }

    public static /* synthetic */ p d(Path path, FileSystem fileSystem, String str, Closeable closeable, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            fileSystem = FileSystem.SYSTEM;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            closeable = null;
        }
        return c(path, fileSystem, str, closeable);
    }
}
