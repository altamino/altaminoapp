package com.ss.android.tea.common.applog;

import android.content.Context;
import com.bytedance.tea.common.utility.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f3149a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static LinkedList<File> f3150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f3151c;

    static class a implements FileFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Pattern f3152a;

        a(Pattern pattern) {
            this.f3152a = pattern;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file != null ? file.getName() : null;
            if (name != null && name.startsWith("log_") && file.isFile()) {
                return this.f3152a.matcher(name).matches();
            }
            return false;
        }
    }

    static class b implements Comparator<File> {
        b() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            long jLastModified = file.lastModified();
            long jLastModified2 = file2.lastModified();
            if (jLastModified < jLastModified2) {
                return -1;
            }
            if (jLastModified == jLastModified2) {
                return 0;
            }
            return 1;
        }
    }

    private static synchronized void a(Context context) {
        try {
            if (f3149a < 0) {
                d(context);
            }
            if (f3149a < 500) {
                return;
            }
            if (f3150b == null) {
                d(context);
            }
            if (f3150b == null) {
                return;
            }
            while (f3149a > 500 && f3150b.size() > 0) {
                f3150b.removeFirst().delete();
                f3149a--;
            }
            if (f3149a < 0) {
                f3149a = -1;
            }
            if (f3150b.isEmpty()) {
                f3150b = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    private static File[] c(File file) {
        File[] fileArrListFiles = file.listFiles(new a(Pattern.compile("^log_[0-9]+_\\.log$")));
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return null;
        }
        Arrays.sort(fileArrListFiles, new b());
        return fileArrListFiles;
    }

    public static void e(Context context, long j6) {
        if (!f3151c || !Logger.debug() || context == null || j6 <= 0) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(new File(context.getExternalCacheDir(), "discard_logs.log"), true);
            try {
                fileOutputStream2.write((j6 + new Date().toString() + "\n").getBytes());
                b(fileOutputStream2);
            } catch (Throwable unused) {
                fileOutputStream = fileOutputStream2;
                b(fileOutputStream);
            }
        } catch (Throwable unused2) {
        }
    }

    public static void f(Context context, long j6, String str) {
        if (f3151c && Logger.debug() && context != null && j6 > 0 && str != null && str.length() > 0 && str.indexOf("item_impression") > 0) {
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(context.getExternalCacheDir(), "log_" + j6 + "_.log"));
                try {
                    fileOutputStream2.write(str.getBytes());
                    fileOutputStream2.close();
                    synchronized (p.class) {
                        try {
                            int i10 = f3149a;
                            if (i10 >= 0) {
                                f3149a = i10 + 1;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (Throwable unused) {
                    fileOutputStream = fileOutputStream2;
                }
            } catch (Throwable unused2) {
            }
            b(fileOutputStream);
            a(context);
            LinkedList<File> linkedList = f3150b;
            Logger.d("LogDebugUtil", "logCount: " + f3149a + ", purgeQueueSize: " + (linkedList != null ? linkedList.size() : -1));
        }
    }

    private static void d(Context context) {
        File[] fileArrC = c(context.getExternalCacheDir());
        f3149a = fileArrC.length;
        if (fileArrC.length >= 500) {
            LinkedList<File> linkedList = new LinkedList<>();
            f3150b = linkedList;
            int length = 100;
            if (fileArrC.length <= 100) {
                length = fileArrC.length;
            }
            linkedList.addAll(Arrays.asList(fileArrC).subList(0, length));
        }
    }
}
