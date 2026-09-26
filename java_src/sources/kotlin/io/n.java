package kotlin.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes10.dex */
public class n extends m {
    @NotNull
    public static final File o(@NotNull File file, @NotNull File target, boolean z6, int i10) throws IOException {
        t.j(file, "<this>");
        t.j(target, "target");
        if (!file.exists()) {
            throw new p(file, null, "The source file doesn't exist.", 2, null);
        }
        if (target.exists()) {
            if (!z6) {
                throw new f(file, target, "The destination file already exists.");
            }
            if (!target.delete()) {
                throw new f(file, target, "Tried to overwrite the destination, but failed to delete it.");
            }
        }
        if (!file.isDirectory()) {
            File parentFile = target.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(target);
                try {
                    b.a(fileInputStream, fileOutputStream, i10);
                    c.a(fileOutputStream, null);
                    c.a(fileInputStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        c.a(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    c.a(fileInputStream, th3);
                    throw th4;
                }
            }
        } else if (!target.mkdirs()) {
            throw new g(file, target, "Failed to create target directory.");
        }
        return target;
    }

    public static /* synthetic */ File p(File file, File file2, boolean z6, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 8192;
        }
        return o(file, file2, z6, i10);
    }

    public static boolean q(@NotNull File file) {
        t.j(file, "<this>");
        while (true) {
            boolean z6 = true;
            for (File file2 : m.n(file)) {
                if (file2.delete() || !file2.exists()) {
                    if (z6) {
                    }
                }
                z6 = false;
            }
            return z6;
        }
    }

    @NotNull
    public static String r(@NotNull File file) {
        t.j(file, "<this>");
        String name = file.getName();
        t.i(name, "getName(...)");
        return u.O0(name, '.', "");
    }

    @NotNull
    public static String s(@NotNull File file) {
        t.j(file, "<this>");
        String name = file.getName();
        t.i(name, "getName(...)");
        return u.Z0(name, ".", null, 2, null);
    }

    @NotNull
    public static final File t(@NotNull File file, @NotNull File relative) {
        t.j(file, "<this>");
        t.j(relative, "relative");
        if (k.b(relative)) {
            return relative;
        }
        String string = file.toString();
        t.i(string, "toString(...)");
        if (string.length() != 0) {
            char c7 = File.separatorChar;
            if (!u.S(string, c7, false, 2, null)) {
                return new File(string + c7 + relative);
            }
        }
        return new File(string + relative);
    }

    @NotNull
    public static File u(@NotNull File file, @NotNull String relative) {
        t.j(file, "<this>");
        t.j(relative, "relative");
        return t(file, new File(relative));
    }
}
