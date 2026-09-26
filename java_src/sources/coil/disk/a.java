package coil.disk;

import android.os.StatFs;
import j8.o;
import java.io.Closeable;
import java.io.File;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.k0;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface a {

    /* JADX INFO: renamed from: coil.disk.a$a, reason: collision with other inner class name */
    public static final class C0098a {

        @Nullable
        private Path directory;
        private long maxSizeBytes;

        @NotNull
        private FileSystem fileSystem = FileSystem.SYSTEM;
        private double maxSizePercent = 0.02d;
        private long minimumMaxSizeBytes = 10485760;
        private long maximumMaxSizeBytes = 262144000;

        @NotNull
        private k0 cleanupDispatcher = e1.b();

        @NotNull
        public final C0098a c(@NotNull Path path) {
            this.directory = path;
            return this;
        }

        @NotNull
        public final a a() {
            long jP;
            Path path = this.directory;
            if (path == null) {
                throw new IllegalStateException("directory == null".toString());
            }
            if (this.maxSizePercent > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                try {
                    StatFs statFs = new StatFs(path.toFile().getAbsolutePath());
                    jP = o.p((long) (this.maxSizePercent * statFs.getBlockCountLong() * statFs.getBlockSizeLong()), this.minimumMaxSizeBytes, this.maximumMaxSizeBytes);
                } catch (Exception unused) {
                    jP = this.minimumMaxSizeBytes;
                }
            } else {
                jP = this.maxSizeBytes;
            }
            return new d(jP, path, this.fileSystem, this.cleanupDispatcher);
        }

        @NotNull
        public final C0098a b(@NotNull File file) {
            return c(Path.Companion.get$default(Path.Companion, file, false, 1, (Object) null));
        }
    }

    public interface b {
        @Nullable
        c a();

        void abort();

        @NotNull
        Path getData();

        @NotNull
        Path getMetadata();
    }

    public interface c extends Closeable {
        @Nullable
        b N();

        @NotNull
        Path getData();

        @NotNull
        Path getMetadata();
    }

    @NotNull
    FileSystem a();

    @Nullable
    b b(@NotNull String str);

    @Nullable
    c get(@NotNull String str);
}
