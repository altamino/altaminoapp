package okhttp3.internal.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.jvm.internal.t;
import okio.Okio;
import okio.Okio__JvmOkioKt;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface FileSystem {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    public static final FileSystem SYSTEM = new Companion.SystemFileSystem();

    @NotNull
    Sink appendingSink(@NotNull File file) throws FileNotFoundException;

    void delete(@NotNull File file) throws IOException;

    void deleteContents(@NotNull File file) throws IOException;

    boolean exists(@NotNull File file);

    void rename(@NotNull File file, @NotNull File file2) throws IOException;

    @NotNull
    Sink sink(@NotNull File file) throws FileNotFoundException;

    long size(@NotNull File file);

    @NotNull
    Source source(@NotNull File file) throws FileNotFoundException;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private static final class SystemFileSystem implements FileSystem {
            @NotNull
            public String toString() {
                return "FileSystem.SYSTEM";
            }

            @Override // okhttp3.internal.io.FileSystem
            @NotNull
            public Sink appendingSink(@NotNull File file) throws FileNotFoundException {
                t.j(file, "file");
                try {
                    return Okio.appendingSink(file);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return Okio.appendingSink(file);
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public void delete(@NotNull File file) throws IOException {
                t.j(file, "file");
                if (!file.delete() && file.exists()) {
                    throw new IOException(t.s("failed to delete ", file));
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public void deleteContents(@NotNull File directory) throws IOException {
                t.j(directory, "directory");
                File[] fileArrListFiles = directory.listFiles();
                if (fileArrListFiles == null) {
                    throw new IOException(t.s("not a readable directory: ", directory));
                }
                int length = fileArrListFiles.length;
                int i10 = 0;
                while (i10 < length) {
                    File file = fileArrListFiles[i10];
                    i10++;
                    if (file.isDirectory()) {
                        t.i(file, "file");
                        deleteContents(file);
                    }
                    if (!file.delete()) {
                        throw new IOException(t.s("failed to delete ", file));
                    }
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public boolean exists(@NotNull File file) {
                t.j(file, "file");
                return file.exists();
            }

            @Override // okhttp3.internal.io.FileSystem
            public void rename(@NotNull File from, @NotNull File to) throws IOException {
                t.j(from, "from");
                t.j(to, "to");
                delete(to);
                if (from.renameTo(to)) {
                    return;
                }
                throw new IOException("failed to rename " + from + " to " + to);
            }

            @Override // okhttp3.internal.io.FileSystem
            @NotNull
            public Sink sink(@NotNull File file) throws FileNotFoundException {
                t.j(file, "file");
                try {
                    return Okio__JvmOkioKt.sink$default(file, false, 1, null);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return Okio__JvmOkioKt.sink$default(file, false, 1, null);
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public long size(@NotNull File file) {
                t.j(file, "file");
                return file.length();
            }

            @Override // okhttp3.internal.io.FileSystem
            @NotNull
            public Source source(@NotNull File file) throws FileNotFoundException {
                t.j(file, "file");
                return Okio.source(file);
            }
        }

        private Companion() {
        }
    }
}
