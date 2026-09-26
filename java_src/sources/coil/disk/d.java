package coil.disk;

import kotlin.jvm.internal.k;
import kotlinx.coroutines.k0;
import okio.ByteString;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class d implements coil.disk.a {

    @NotNull
    public static final a Companion = new a(null);
    private static final int ENTRY_DATA = 1;
    private static final int ENTRY_METADATA = 0;

    @NotNull
    private final coil.disk.b cache;

    @NotNull
    private final Path directory;

    @NotNull
    private final FileSystem fileSystem;
    private final long maxSize;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    private static final class b implements coil.disk.a.b {

        @NotNull
        private final coil.disk.b.C0099b editor;

        @Override // coil.disk.a.b
        public void abort() {
            this.editor.a();
        }

        @Override // coil.disk.a.b
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public c a() {
            coil.disk.b.d dVarC = this.editor.c();
            if (dVarC != null) {
                return new c(dVarC);
            }
            return null;
        }

        @Override // coil.disk.a.b
        @NotNull
        public Path getData() {
            return this.editor.f(1);
        }

        @Override // coil.disk.a.b
        @NotNull
        public Path getMetadata() {
            return this.editor.f(0);
        }

        public b(@NotNull coil.disk.b.C0099b c0099b) {
            this.editor = c0099b;
        }
    }

    private static final class c implements coil.disk.a.c {

        @NotNull
        private final coil.disk.b.d snapshot;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.snapshot.close();
        }

        @Override // coil.disk.a.c
        @Nullable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public b N() {
            coil.disk.b.C0099b c0099bD = this.snapshot.d();
            if (c0099bD != null) {
                return new b(c0099bD);
            }
            return null;
        }

        @Override // coil.disk.a.c
        @NotNull
        public Path getData() {
            return this.snapshot.e(1);
        }

        @Override // coil.disk.a.c
        @NotNull
        public Path getMetadata() {
            return this.snapshot.e(0);
        }

        public c(@NotNull coil.disk.b.d dVar) {
            this.snapshot = dVar;
        }
    }

    @Override // coil.disk.a
    @NotNull
    public FileSystem a() {
        return this.fileSystem;
    }

    @NotNull
    public Path c() {
        return this.directory;
    }

    public long d() {
        return this.maxSize;
    }

    private final String e(String str) {
        return ByteString.Companion.encodeUtf8(str).sha256().hex();
    }

    @Override // coil.disk.a
    @Nullable
    public coil.disk.a.b b(@NotNull String str) {
        coil.disk.b.C0099b c0099bL = this.cache.L(e(str));
        if (c0099bL != null) {
            return new b(c0099bL);
        }
        return null;
    }

    @Override // coil.disk.a
    @Nullable
    public coil.disk.a.c get(@NotNull String str) {
        coil.disk.b.d dVarO = this.cache.O(e(str));
        if (dVarO != null) {
            return new c(dVarO);
        }
        return null;
    }

    public d(long j6, @NotNull Path path, @NotNull FileSystem fileSystem, @NotNull k0 k0Var) {
        this.maxSize = j6;
        this.directory = path;
        this.fileSystem = fileSystem;
        this.cache = new coil.disk.b(a(), c(), k0Var, d(), 1, 2);
    }
}
