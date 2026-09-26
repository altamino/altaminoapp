package e4;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.crashlytics.internal.g;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class f {
    private static final String CRASHLYTICS_PATH_V1 = ".com.google.firebase.crashlytics.files.v1";
    private static final String CRASHLYTICS_PATH_V2 = ".com.google.firebase.crashlytics.files.v2";
    private static final String NATIVE_REPORTS_PATH = "native-reports";
    private static final String NATIVE_SESSION_SUBDIR = "native";
    private static final String PRIORITY_REPORTS_PATH = "priority-reports";
    private static final String REPORTS_PATH = "reports";
    private static final String SESSIONS_PATH = "open-sessions";
    private final File crashlyticsDir;
    private final File filesDir;
    private final File nativeReportsDir;
    private final File priorityReportsDir;
    private final File reportsDir;
    private final File sessionsDir;

    @SuppressLint({"AnnotateVersionCheck"})
    private static boolean v() {
        return Build.VERSION.SDK_INT >= 28;
    }

    private File n(String str) {
        return r(new File(this.sessionsDir, str));
    }

    private static synchronized File q(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return file;
                }
                g.f().b("Unexpected non-directory file: " + file + "; deleting file and creating new directory.");
                file.delete();
            }
            if (!file.mkdirs()) {
                g.f().d("Could not create Crashlytics-specific directory: " + file);
            }
            return file;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static <T> List<T> t(@Nullable T[] tArr) {
        return tArr == null ? Collections.emptyList() : Arrays.asList(tArr);
    }

    @VisibleForTesting
    static String u(String str) {
        return str.replaceAll("[^a-zA-Z0-9.]", "_");
    }

    public void b() {
        a(new File(this.filesDir, ".com.google.firebase.crashlytics"));
        a(new File(this.filesDir, ".com.google.firebase.crashlytics-ndk"));
        if (v()) {
            a(new File(this.filesDir, CRASHLYTICS_PATH_V1));
        }
    }

    public boolean c(String str) {
        return s(new File(this.sessionsDir, str));
    }

    public List<String> d() {
        return t(this.sessionsDir.list());
    }

    public File e(String str) {
        return new File(this.crashlyticsDir, str);
    }

    public List<File> f(FilenameFilter filenameFilter) {
        return t(this.crashlyticsDir.listFiles(filenameFilter));
    }

    public File g(String str) {
        return new File(this.nativeReportsDir, str);
    }

    public List<File> h() {
        return t(this.nativeReportsDir.listFiles());
    }

    public File i(String str) {
        return r(new File(n(str), NATIVE_SESSION_SUBDIR));
    }

    public File j(String str) {
        return new File(this.priorityReportsDir, str);
    }

    public List<File> k() {
        return t(this.priorityReportsDir.listFiles());
    }

    public File l(String str) {
        return new File(this.reportsDir, str);
    }

    public List<File> m() {
        return t(this.reportsDir.listFiles());
    }

    public File o(String str, String str2) {
        return new File(n(str), str2);
    }

    public f(Context context) {
        String str;
        File filesDir = context.getFilesDir();
        this.filesDir = filesDir;
        if (v()) {
            str = CRASHLYTICS_PATH_V2 + File.pathSeparator + u(Application.getProcessName());
        } else {
            str = CRASHLYTICS_PATH_V1;
        }
        File fileQ = q(new File(filesDir, str));
        this.crashlyticsDir = fileQ;
        this.sessionsDir = q(new File(fileQ, SESSIONS_PATH));
        this.reportsDir = q(new File(fileQ, REPORTS_PATH));
        this.priorityReportsDir = q(new File(fileQ, PRIORITY_REPORTS_PATH));
        this.nativeReportsDir = q(new File(fileQ, NATIVE_REPORTS_PATH));
    }

    private void a(File file) {
        if (file.exists() && s(file)) {
            g.f().b("Deleted previous Crashlytics file system: " + file.getPath());
        }
    }

    private static File r(File file) {
        file.mkdirs();
        return file;
    }

    static boolean s(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                s(file2);
            }
        }
        return file.delete();
    }

    public List<File> p(String str, FilenameFilter filenameFilter) {
        return t(n(str).listFiles(filenameFilter));
    }
}
