package t0;

import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
class a {
    public File b(String str) {
        return new File(str);
    }

    a() {
    }

    public boolean a(File file) {
        return file.exists();
    }

    public long c(File file) {
        return file.length();
    }
}
